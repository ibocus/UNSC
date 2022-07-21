Imports System.Data.SqlClient
Public Class Matching
    Inherits System.Web.UI.Page
    Dim Constr_EWS As String = ConfigurationManager.ConnectionStrings("XMLDB_DataConnectionString").ConnectionString
    Dim connect_EWS As New SqlConnection(Constr_EWS)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Iqbal()

    End Sub

    Sub Iqbal()
        connect_EWS.ConnectionString = Constr_EWS
        Dim con As New SqlCommand

        Dim query As String = "select Reference, Surname, FirstName, SecondName, ThirdName, ForuthName, CompanyName, ClientCompany from KYC_Individual order by Number desc"
        con.CommandText = query
        con.Connection = connect_EWS
        connect_EWS.Open()


        Dim da As New SqlDataAdapter(con)
        Dim dst As New DataSet
        Using da
            da.Fill(dst)

        End Using

        gdvKYCIndividual.DataSource = dst
        gdvKYCIndividual.DataBind()

        connect_EWS.Close()
    End Sub
    Sub CompareIqbal_SurnameKYC_FirstNameUN()
        connect_EWS.ConnectionString = Constr_EWS
        Dim con As New SqlCommand


        Dim query As String = "SELECT        UN.Reference_Number, UN.First_Name, UN.Second_Name, UN.Third_Name, UN.Fourth_Name, KYC.Reference, KYC.Surname, KYC.FirstName FROM            dbo.Individuals AS UN INNER JOIN dbo.KYC_Individual AS KYC ON  KYC.Surname = UN.First_Name where KYC.Surname is not null "
        con.CommandText = query

        con.Connection = connect_EWS
        connect_EWS.Open()

        Dim da As New SqlDataAdapter(con)
        Dim dst As New DataSet
        Using da
            da.Fill(dst)

        End Using

        gdvComparision.DataSource = dst
        gdvComparision.DataBind()

        connect_EWS.Close()
    End Sub

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click
        CompareIqbal_SurnameKYC_FirstNameUN()
        CompareIqbal_Surname_FirstName_FourthNameUN()
        CompareIqbal_Surname_FirstName_ThirdNameUN()
        CompareIqbal_Surname_FirstNameKYC_SecondNameUN()
    End Sub
    Sub CompareIqbal_Surname_FirstNameKYC_SecondNameUN()
        connect_EWS.ConnectionString = Constr_EWS
        Dim con As New SqlCommand
        Dim query As String = "SELECT        UN.Reference_Number, UN.First_Name, UN.Second_Name, UN.Third_Name, UN.Fourth_Name, KYC.Reference, KYC.Surname, KYC.FirstName FROM            dbo.Individuals AS UN INNER JOIN dbo.KYC_Individual AS KYC ON  KYC.Surname = UN.First_Name and KYC.FirstName = UN.Second_Name where KYC.Surname is not null "
        con.CommandText = query

        con.Connection = connect_EWS
        connect_EWS.Open()

        Dim da As New SqlDataAdapter(con)
        Dim dst As New DataSet
        Using da
            da.Fill(dst)

        End Using

        gdvFirstNameKYC_SecondNameUN.DataSource = dst
        gdvFirstNameKYC_SecondNameUN.DataBind()

        connect_EWS.Close()
    End Sub
    Sub CompareIqbal_Surname_FirstName_ThirdNameUN()
        connect_EWS.ConnectionString = Constr_EWS
        Dim con As New SqlCommand
        Dim query As String = "SELECT        UN.Reference_Number, UN.First_Name, UN.Second_Name, UN.Third_Name, UN.Fourth_Name, KYC.Reference, KYC.Surname, KYC.FirstName FROM            dbo.Individuals AS UN INNER JOIN dbo.KYC_Individual AS KYC ON  KYC.Surname = UN.First_Name and KYC.FirstName = UN.Third_Name where KYC.Surname is not null "
        con.CommandText = query

        con.Connection = connect_EWS
        connect_EWS.Open()

        Dim da As New SqlDataAdapter(con)
        Dim dst As New DataSet
        Using da
            da.Fill(dst)

        End Using

        gdvFirstNameKYC_ThirdNameUN.DataSource = dst
        gdvFirstNameKYC_ThirdNameUN.DataBind()

        connect_EWS.Close()
    End Sub
    Sub CompareIqbal_Surname_FirstName_FourthNameUN()
        connect_EWS.ConnectionString = Constr_EWS
        Dim con As New SqlCommand
        Dim query As String = "SELECT        UN.Reference_Number, UN.First_Name, UN.Second_Name, UN.Third_Name, UN.Fourth_Name, KYC.Reference, KYC.Surname, KYC.FirstName FROM            dbo.Individuals AS UN INNER JOIN dbo.KYC_Individual AS KYC ON  KYC.Surname = UN.First_Name and KYC.FirstName = UN.Fourth_Name where KYC.Surname is not null "
        con.CommandText = query

        con.Connection = connect_EWS
        connect_EWS.Open()

        Dim da As New SqlDataAdapter(con)
        Dim dst As New DataSet
        Using da
            da.Fill(dst)

        End Using

        gdvFirstNameKYC_FourthNameUN.DataSource = dst
        gdvFirstNameKYC_FourthNameUN.DataBind()

        connect_EWS.Close()
    End Sub

End Class