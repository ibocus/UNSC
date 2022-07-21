Imports System.IO
Imports System.Data.SqlClient
Imports System.Xml
Imports System.Net
Public Class UN
    Inherits System.Web.UI.Page
    Dim ConnString As String = ConfigurationManager.ConnectionStrings("XMLDB_DataConnectionString").ConnectionString
    Dim conn As New SqlConnection(ConnString)
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            conn.Open()
        Catch ex As Exception
            DisplayMsg("Database connection failed. Please verify your network connection")
        Finally
            conn.Close()
        End Try

    End Sub

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click
        Dim wc As New WebClient
        wc.Encoding = System.Text.Encoding.UTF8
        Dim xmlText As String = wc.DownloadString("https://scsanctions.un.org/resources/xml/en/consolidated.xml")

        Dim tempfilename = "Consolidated List - " + Date.Now.ToString("yyyy-MM-dd hh-mm-ss") + ".xml"
        Dim tempfilepath As String = Server.MapPath("~/Files/" + tempfilename)
        File.WriteAllText(tempfilepath, xmlText)

        Dim xmlDoc As New XmlDocument
        xmlDoc.Load(tempfilepath)

        Dim dategenerated As String = Left(xmlDoc.SelectSingleNode("CONSOLIDATED_LIST").Attributes("dateGenerated").Value, 10)
        Dim filename = "Consolidated List - " + dategenerated + ".xml"
        Dim filepath As String = Server.MapPath("~/Files/" + filename)
        File.WriteAllText(filepath, xmlText)

        Dim root As XmlElement = xmlDoc.DocumentElement
        Dim individualList As XmlNodeList = root.GetElementsByTagName("INDIVIDUAL")

        dataGridView1.DataSource = ConvertXmlNodeListToDataTable(individualList)
        dataGridView1.DataBind()

        Dim entityList As XmlNodeList = root.GetElementsByTagName("ENTITY")

        dataGridView2.DataSource = ConvertXmlNodeListToDataTable(entityList)
        dataGridView2.DataBind()

        TransferIndividualstoDB("Individuals", dataGridView1, dategenerated)
        TransferEntitiestoDB("Entities", dataGridView2, dategenerated)

        RecordUser(filename)

        DisplayMsg("The Latest UN Sanction List has been imported (Latest Available Data at " + dategenerated + ")")
        File.Delete(tempfilepath)
    End Sub

    Public Shared Function ConvertXmlNodeListToDataTable(ByVal xnl As XmlNodeList) As DataTable
        Dim dt As New DataTable()
        Dim TempColumn As Integer = 0

        Dim k As Integer
        For k = 0 To xnl.Count - 1

            Dim dr As DataRow = dt.NewRow()
            dt.Rows.Add(dr)
            For Each node As XmlNode In xnl.Item(k).ChildNodes
                TempColumn += 1
                Dim dc As New DataColumn(node.Name, System.Type.[GetType]("System.String"))

                If Not dt.Columns.Contains(node.Name) Then
                    dt.Columns.Add(dc)
                End If
                dr(node.Name.ToString()) = node.InnerText
            Next
        Next

        Return dt
    End Function

    Sub TransferIndividualstoDB(type As String, datagridview As GridView, dategenerated As String)

        For Each row As GridViewRow In datagridview.Rows
            If row.RowType = DataControlRowType.DataRow Then

                cmd.CommandText = "SELECT TOP 1 DATAID FROM individuals where DATAID = @DATAID and DATE_GENERATED = @DATE_GENERATED"
                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@DATAID", row.Cells(GetColumnIndexByHeaderText(datagridview, "DATAID")).Text)
                cmd.Parameters.AddWithValue("@DATE_GENERATED", dategenerated)
                cmd.Connection = conn
                conn.Open()
                Dim value As String = cmd.ExecuteScalar()
                conn.Close()

                If value = "" Then
                    cmd.CommandText = "INSERT INTO individuals (DATAID,FIRST_NAME,SECOND_NAME,THIRD_NAME,FOURTH_NAME,REFERENCE_NUMBER,DATE_GENERATED) VALUES (@DATAID,@FIRST_NAME,@SECOND_NAME,@THIRD_NAME,@FOURTH_NAME,@REFERENCE_NUMBER,@DATE_GENERATED)"
                Else
                    cmd.CommandText = "UPDATE individuals SET DATAID=@DATAID,FIRST_NAME=@FIRST_NAME,SECOND_NAME=@SECOND_NAME,THIRD_NAME=@THIRD_NAME,FOURTH_NAME=@FOURTH_NAME,REFERENCE_NUMBER=@REFERENCE_NUMBER WHERE DATAID=@DATAID AND DATE_GENERATED=@DATE_GENERATED"
                End If

                cmd.Parameters.AddWithValue("@FIRST_NAME", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "FIRST_NAME")).Text))
                cmd.Parameters.AddWithValue("@SECOND_NAME", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "SECOND_NAME")).Text))
                cmd.Parameters.AddWithValue("@THIRD_NAME", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "THIRD_NAME")).Text))
                cmd.Parameters.AddWithValue("@FOURTH_NAME", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "FOURTH_NAME")).Text))
                cmd.Parameters.AddWithValue("@REFERENCE_NUMBER", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "REFERENCE_NUMBER")).Text))

                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()

            End If
        Next
    End Sub
    Sub TransferEntitiestoDB(type As String, datagridview As GridView, dategenerated As String)

        For Each row As GridViewRow In datagridview.Rows
            If row.RowType = DataControlRowType.DataRow Then

                cmd.CommandText = "SELECT TOP 1 DATAID FROM entities where DATAID = @DATAID and DATE_GENERATED = @DATE_GENERATED"
                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@DATAID", row.Cells(GetColumnIndexByHeaderText(datagridview, "DATAID")).Text)
                cmd.Parameters.AddWithValue("@DATE_GENERATED", dategenerated)
                cmd.Connection = conn
                conn.Open()
                Dim value As String = cmd.ExecuteScalar()
                conn.Close()

                If value = "" Then
                    cmd.CommandText = "INSERT INTO entities (DATAID,FIRST_NAME,REFERENCE_NUMBER,DATE_GENERATED) VALUES (@DATAID,@FIRST_NAME,@REFERENCE_NUMBER,@DATE_GENERATED)"
                Else
                    cmd.CommandText = "UPDATE entities SET DATAID=@DATAID,FIRST_NAME=@FIRST_NAME,REFERENCE_NUMBER=@REFERENCE_NUMBER WHERE DATAID=@DATAID AND DATE_GENERATED=@DATE_GENERATED"
                End If

                cmd.Parameters.AddWithValue("@FIRST_NAME", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "FIRST_NAME")).Text))
                cmd.Parameters.AddWithValue("@REFERENCE_NUMBER", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "REFERENCE_NUMBER")).Text))

                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()

            End If
        Next
    End Sub

    Public Function CleanData(cellValue As String)

        Dim cleanstring As String

        cleanstring = Trim(cellValue)
        cleanstring = cleanstring.Replace("&#39;", "")
        cleanstring = cleanstring.Replace("&nbsp;", "")
        cleanstring = cleanstring.Replace("&quot;", """")
        cleanstring = cleanstring.Replace("&amp;amp;", "&")
        cleanstring = cleanstring.Replace("&amp;", "&")

        cleanstring = cleanstring.Replace("&#193;", "Á")
        cleanstring = cleanstring.Replace("&#195;", "Ã")
        cleanstring = cleanstring.Replace("&#199;", "Ç")
        cleanstring = cleanstring.Replace("&#200;", "È")
        cleanstring = cleanstring.Replace("&#201;", "É")
        cleanstring = cleanstring.Replace("&#202;", "Ê")
        cleanstring = cleanstring.Replace("&#207;", "Ï")
        cleanstring = cleanstring.Replace("&#211;", "Ó")
        cleanstring = cleanstring.Replace("&#212;", "Ô")
        cleanstring = cleanstring.Replace("&#218;", "Ú")

        cleanstring = cleanstring.Replace("&#231;", "ç")
        cleanstring = cleanstring.Replace("&#233;", "é")
        cleanstring = cleanstring.Replace("&#232;", "è")
        cleanstring = cleanstring.Replace("&#239;", "ï")

        cleanstring = cleanstring.Replace(Chr(9), "")
        cleanstring = cleanstring.Replace(vbCr, "")
        cleanstring = cleanstring.Replace(vbLf, "")

        Return cleanstring
    End Function
    Sub RecordUser(filename)

        Dim domainUser As String = System.Web.HttpContext.Current.User.Identity.Name

        If domainUser = "" Then
            domainUser = System.Security.Principal.WindowsIdentity.GetCurrent().Name
        End If

        Try
            cmd.CommandText = "INSERT INTO import_log (IMPORTED_ON,USERNAME,IMPORTED_FILE)VALUES (@date,@username,@importedfile)"
            cmd.Parameters.Clear()
            cmd.Parameters.AddWithValue("@date", DateTime.Now)
            cmd.Parameters.AddWithValue("@username", domainUser)
            cmd.Parameters.AddWithValue("@importedfile", filename)
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()

        Catch ex As Exception
        Finally
            conn.Close()
        End Try
    End Sub

    Function GetColumnIndexByHeaderText(ByVal aGridView As GridView, ByVal ColumnText As String) As Integer
        Dim Cell As TableCell

        For Index As Integer = 0 To aGridView.HeaderRow.Cells.Count - 1
            Cell = aGridView.HeaderRow.Cells(Index)
            If Cell.Text.ToString() = ColumnText Then
                Return Index
            End If
        Next

        Return -1
    End Function

    Sub DisplayMsg(message)
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type = 'text/javascript'>")
        sb.Append("window.onload=function(){")
        sb.Append("alert('")
        sb.Append(message)
        sb.Append("')};")
        sb.Append("</script>")
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", sb.ToString())
    End Sub
End Class