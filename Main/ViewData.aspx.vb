Imports System.Data.SqlClient
Public Class ViewData
    Inherits System.Web.UI.Page
    Dim ConnString As String = ConfigurationManager.ConnectionStrings("XMLDB_DataConnectionString").ConnectionString
    Dim conn As New SqlConnection(ConnString)
    Dim DataReader As SqlDataReader
    Dim cmd As New SqlCommand
    Dim sqlquery As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Search_DateGenerated()
        End If
    End Sub

    Public Sub Search_DateGenerated()
        Try
            sqlquery = "SELECT DISTINCT DATE_GENERATED FROM individuals ORDER BY DATE_GENERATED DESC"
            OpenConnection(conn, sqlquery)

            DataReader = cmd.ExecuteReader()
            ddlDateGenerated.DataSource = DataReader
            ddlDateGenerated.DataTextField = "DATE_GENERATED"
            ddlDateGenerated.DataBind()
        Catch ex As Exception
            DisplayMsg("Database Error")
        Finally
            conn.Close()
            ddlDateGenerated.Items.Insert(0, "Select a Date")
        End Try
    End Sub

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

    Sub OpenConnection(conn, sqlquery)
        cmd.Connection = conn
        cmd.CommandText = sqlquery
        conn.Open()
    End Sub



    Sub SearchIndividuals()

        Dim dateselected As String = ddlDateGenerated.SelectedItem.Text

        Try
            If dateselected = "Select a Date" Then
                sqlquery = "SELECT DATE_GENERATED,DATAID,FIRST_NAME,SECOND_NAME,THIRD_NAME,FOURTH_NAME,REFERENCE_NUMBER FROM individuals WHERE DATE_GENERATED = (SELECT MAX(DATE_GENERATED) FROM individuals) ORDER BY FIRST_NAME"
                OpenConnection(conn, sqlquery)
            Else
                sqlquery = "SELECT DATE_GENERATED,DATAID,FIRST_NAME,SECOND_NAME,THIRD_NAME,FOURTH_NAME,REFERENCE_NUMBER FROM individuals WHERE DATE_GENERATED = @DATE_GENERATED ORDER BY FIRST_NAME"
                OpenConnection(conn, sqlquery)
            End If
            cmd.Parameters.Clear()
            cmd.Parameters.AddWithValue("@DATE_GENERATED", dateselected)

            DataReader = cmd.ExecuteReader()
            If DataReader.HasRows = True Then
                dataGridView1.DataSource = DataReader
                dataGridView1.DataBind()
            Else
                Dim dt As New DataTable()
                dataGridView1.DataSource = dt
                dataGridView1.DataBind()
            End If

        Catch ex As Exception
            DisplayMsg("Database error")
        Finally
            conn.Close()
        End Try

    End Sub

    Sub SearchEntities()

        Dim dateselected As String = ddlDateGenerated.SelectedItem.Text

        Try
            If dateselected = "Select a Date" Then
                sqlquery = "SELECT DATE_GENERATED,DATAID,FIRST_NAME,REFERENCE_NUMBER FROM entities WHERE DATE_GENERATED = (SELECT MAX(DATE_GENERATED) FROM entities) ORDER BY FIRST_NAME"
                OpenConnection(conn, sqlquery)
            Else
                sqlquery = "SELECT DATE_GENERATED,DATAID,FIRST_NAME,REFERENCE_NUMBER FROM entities WHERE DATE_GENERATED = @DATE_GENERATED ORDER BY FIRST_NAME"
                OpenConnection(conn, sqlquery)
            End If
            cmd.Parameters.Clear()
            cmd.Parameters.AddWithValue("@DATE_GENERATED", dateselected)

            DataReader = cmd.ExecuteReader()
            If DataReader.HasRows = True Then
                dataGridView2.DataSource = DataReader
                dataGridView2.DataBind()
            Else
                Dim dt As New DataTable()
                dataGridView2.DataSource = dt
                dataGridView2.DataBind()
            End If

        Catch ex As Exception
            DisplayMsg("Database error")
        Finally
            conn.Close()
        End Try

    End Sub

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click
        SearchIndividuals()
        SearchEntities()
    End Sub
End Class