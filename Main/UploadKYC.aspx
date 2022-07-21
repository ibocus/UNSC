<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" CodeBehind="UploadKYC.aspx.vb" Inherits="UNSC.UploadKYC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container px-2">
        <div class="row">
            <div class="form-subtitle">Upload KYC Data</div>
        </div>
        <div class="form-input">

            <div class="col-5 control-label">
                <asp:Label ID="lblUpload" runat="server" Text="Browse the Excel workbook"></asp:Label>
            </div>
            <div class="col-5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="form-input">
                <div class="col-1 control-label"></div>
                <div class="col-4 btn-container">
                    <asp:Button ID="btnCreate" CssClass="btncustom" runat="server" Text="Submit" />
                </div>
            </div>

        </div>

        <div class="row mt-4 d-flex">
            <div class="col-8">
                <div style="overflow-y: auto; height: 900px">
                    <asp:GridView ID="dataGridView1" runat="server" CssClass="table-custom" AutoGenerateColumns="true">

                    </asp:GridView>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
