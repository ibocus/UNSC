Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data.OleDb
'Imports System.DirectoryServices
'Imports System.DirectoryServices.AccountManagement
Imports System.Security.Principal
Imports System.Threading

Imports System.IO
Imports System.Data
Imports System.Collections.Generic
Imports ClosedXML.Excel

Public Class UploadKYC
    Inherits System.Web.UI.Page
    Dim Constr_EWS As String = WebConfigurationManager.ConnectionStrings("XMLDB_DataConnectionString").ConnectionString
    Dim connect_EWS As New SqlConnection

    Dim ConnString As String = ConfigurationManager.ConnectionStrings("XMLDB_DataConnectionString").ConnectionString
    Dim conn As New SqlConnection(ConnString)
    Dim cmd As New SqlCommand

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click
        'Save the uploaded Excel file.
        Dim filePath As String = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName)
        FileUpload1.SaveAs(filePath)

        'Open the Excel file using ClosedXML.
        Using workBook As New XLWorkbook(filePath)
            'Read the first Sheet from Excel file.
            Dim workSheet As IXLWorksheet = workBook.Worksheet(1)

            'Create a new DataTable.
            Dim dt As New DataTable()

            'Loop through the Worksheet rows.
            Dim firstRow As Boolean = True
            For Each row As IXLRow In workSheet.Rows()
                'Use the first row to add columns to DataTable.
                If firstRow Then
                    For Each cell As IXLCell In row.Cells()
                        dt.Columns.Add(cell.Value.ToString())
                    Next
                    firstRow = False
                Else
                    'Add rows to DataTable.
                    dt.Rows.Add()
                    Dim i As Integer = 0
                    For Each cell As IXLCell In row.Cells()
                        dt.Rows(dt.Rows.Count - 1)(i) = cell.Value.ToString()
                        i += 1
                    Next
                End If

                dataGridView1.DataSource = dt
                dataGridView1.DataBind()
            Next
        End Using

        TransferEntitiestoDB(dataGridView1)

    End Sub


    Sub TransferEntitiestoDB(datagridview As GridView)

        For Each row As GridViewRow In datagridview.Rows
            If row.RowType = DataControlRowType.DataRow Then

                'cmd.CommandText = "SELECT TOP 1 DATAID FROM entities where DATAID = @DATAID and DATE_GENERATED = @DATE_GENERATED"
                'cmd.Parameters.Clear()
                'cmd.Parameters.AddWithValue("@DATAID", row.Cells(GetColumnIndexByHeaderText(datagridview, "DATAID")).Text)
                'cmd.Parameters.AddWithValue("@DATE_GENERATED", dategenerated)
                'cmd.Connection = conn
                'conn.Open()
                'Dim value As String = cmd.ExecuteScalar()
                'conn.Close()

                'If value = "" Then
                cmd.CommandText = "INSERT INTO KYC_Individual (Reference, Surname, FirstName, SecondName, ThirdName, ForuthName, CompanyName, ClientCompany, Type, Documents, Date) VALUES (@ref,@sur,@fir,@sec, @thi, @for, @com, @cli, @typ, @doc, @dat)"
                'Else
                '    cmd.CommandText = "UPDATE entities SET DATAID=@DATAID,FIRST_NAME=@FIRST_NAME,REFERENCE_NUMBER=@REFERENCE_NUMBER WHERE DATAID=@DATAID AND DATE_GENERATED=@DATE_GENERATED"
                'End If

                cmd.Parameters.AddWithValue("@ref", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "Reference")).Text))
                cmd.Parameters.AddWithValue("@sur", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "Surname")).Text))
                cmd.Parameters.AddWithValue("@fir", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "FirstName")).Text))
                cmd.Parameters.AddWithValue("@sec", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "SecondName")).Text))
                cmd.Parameters.AddWithValue("@thi", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "ThirdName")).Text))
                cmd.Parameters.AddWithValue("@for", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "ForuthName")).Text))
                cmd.Parameters.AddWithValue("@com", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "CompanyName")).Text))
                cmd.Parameters.AddWithValue("@cli", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "ClientCompany")).Text))
                cmd.Parameters.AddWithValue("@typ", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "Type")).Text))
                cmd.Parameters.AddWithValue("@doc", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "Documents")).Text))
                cmd.Parameters.AddWithValue("@dat", CleanData(row.Cells(GetColumnIndexByHeaderText(datagridview, "Date")).Text))


                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
                cmd.Parameters.Clear()
            End If
        Next
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
End Class