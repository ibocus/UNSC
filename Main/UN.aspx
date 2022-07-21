<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" CodeBehind="UN.aspx.vb" Inherits="UNSC.UN" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container px-2">

        <div class="row">
            <div class="form-subtitle">Import Page Form</div>
        </div>
        <div class="form-input">
<%--            <div class="col-1 control-label">
                <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
            </div>
            <div class="col-1">
                <asp:TextBox ID="txtDate" CssClass="textbox" runat="server" placeholder="yyyy-MM-dd" required="" AutoCompleteType="None" Format="yyyy-MM-dd"></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy-MM-dd"
                    TargetControlID="txtDate"></asp:CalendarExtender>
            </div>
        </div>
        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblTeamName" runat="server" Text="Team Name"></asp:Label>
            </div>
            <div class="col-4">
                <asp:DropDownList ID="ddlTeamName" CssClass="dropdownlist" runat="server">
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label>
            </div>
            <div class="col-4">
                <asp:DropDownList ID="ddlCompanyName" CssClass="dropdownlist" runat="server">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblServiceCat" runat="server" Text="Select a Service Category"></asp:Label>
            </div>
            <div class="col-4">
                <asp:DropDownList ID="ddlServiceCat" CssClass="dropdownlist" runat="server">
                    <asp:ListItem Value="0" Selected="True">Select a Service Category</asp:ListItem>
                    <asp:ListItem Value="1">Tax Compliance</asp:ListItem>
                    <asp:ListItem Value="2">Tax Litigation</asp:ListItem>
                    <asp:ListItem Value="3">Tax Advisory</asp:ListItem>
                    <asp:ListItem Value="4">Insolvency</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
            </div>
            <div class="col-4">
                <asp:TextBox ID="txtDescription" CssClass="multitext" runat="server" TextMode="MultiLine" required=""></asp:TextBox>
            </div>
        </div>

        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblInvoiceNumber" runat="server" Text="Invoice Number"></asp:Label>
            </div>
            <div class="col-1">
                <asp:TextBox ID="txtInvoiceNumber" CssClass="textbox" runat="server" required="" AutoCompleteType="None"></asp:TextBox>

            </div>
        </div>

        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblFx" runat="server" Text="FX Rate"></asp:Label>
            </div>
            <div class="col-1">
                <asp:TextBox ID="txtFx" CssClass="textbox" runat="server" required="" AutoCompleteType="None"></asp:TextBox>

            </div>
        </div>

        <div class="form-input">
            <div class="col-1 control-label">
                <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
            </div>
            <div class="col-1">
                <asp:TextBox ID="txtAmount" CssClass="textbox" runat="server" required="" AutoCompleteType="None"></asp:TextBox>

            </div>
        </div>--%>


        <div class="form-input">
            <div class="col-1 control-label"></div>
            <div class="col-4 btn-container">
                <asp:Button ID="btnCreate" CssClass="btncustom" runat="server" Text="Submit" />
            </div>
        </div>
    </div>
         <asp:GridView ID="dataGridView1" runat="server" Width="490px" Visible="False"></asp:GridView>
            <asp:GridView ID="dataGridView2" runat="server" Width="490px" Visible="False"></asp:GridView>
        <asp:HiddenField ID="userlocaltime" runat="server" />
        </div>
</asp:Content>
