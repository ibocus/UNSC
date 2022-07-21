<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" CodeBehind="ViewData.aspx.vb" Inherits="UNSC.ViewData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container px-2">
        <div class="row">
            <div class="form-subtitle">View Imported Data</div>
        </div>
        <div class="form-input">
            
                <div class="col-1 control-label">
                    <asp:Label ID="lblTeamName" runat="server" Text="Select a date"></asp:Label>
                </div>
                <div class="col-4">
                    <asp:DropDownList ID="ddlDateGenerated" CssClass="dropdownlist" runat="server">
                    </asp:DropDownList>
                </div>
            
        </div>
                <div class="form-input">
            <div class="col-1 control-label"></div>
            <div class="col-4 btn-container">
                <asp:Button ID="btnCreate" CssClass="btncustom" runat="server" Text="Submit" />
            </div>
        </div>
        <div class="row mt-4 d-flex">
            <div class="col-6">
                <div style="overflow-y: auto; height: 900px">
                <asp:GridView ID="dataGridView1" runat="server" CssClass="table-custom">
                </asp:GridView>
                    </div>
            </div>
                        <div class="col-6">
                            <div style="overflow-y: auto; height: 900px">
                <asp:GridView ID="dataGridView2" runat="server" CssClass="table-custom">
                </asp:GridView>
</div>
            </div>
        </div>
 
    </div>
</asp:Content>
