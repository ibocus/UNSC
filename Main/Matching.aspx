<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" CodeBehind="Matching.aspx.vb" Inherits="UNSC.Matching" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container px-2">
        <div class="row">
            <div class="form-subtitle">Matching Data from UNSC to KYC</div>
        </div>
        <div class="form-input">
            <asp:Button ID="btnCreate" CssClass="btncustom" runat="server" Text="Compare UNSC with KYC List" />
        </div>

        <div class="form-input">
            <div class="col-6">
                <div class="col-3 control-label">
                    <asp:Label ID="lblKycList" runat="server" Text="KYC List"></asp:Label>
                </div>
                <asp:GridView ID="gdvKYCIndividual" runat="server" CssClass="table-custom" AutoGenerateColumns="true">
                </asp:GridView>
            </div>
                    <div class="col-6">
                        <div class="col-3 control-label">
                    <asp:Label ID="lblSurnameKYC_FirstNameUN" runat="server" Text="SurnameKYC_FirstNameUN"></asp:Label>
                </div>
                <asp:GridView ID="gdvComparision" runat="server" CssClass="table-custom" AutoGenerateColumns="true">
                </asp:GridView>
            </div>
        </div>

        <div class="form-input">
            <div class="col-6">
            </div>
            <div class="col-6">
            <div class="col-3 control-label">
                <asp:Label ID="lblFirstNameKYC_SecondNameUN" runat="server" Text="FirstNameKYC_SecondNameUN"></asp:Label>
            </div>
            <asp:GridView ID="gdvFirstNameKYC_SecondNameUN" runat="server" CssClass="table-custom" AutoGenerateColumns="true">
            </asp:GridView>
            </div>
        </div>
        <div class="form-input">
        <div class="col-6">
        </div>
        <div class="col-6">
            <div class="col-3 control-label">
                <asp:Label ID="lblFirstNameKYC_ThirdNameUN" runat="server" Text="FirstNameKYC_ThirdNameUN"></asp:Label>
            </div>
            <asp:GridView ID="gdvFirstNameKYC_ThirdNameUN" runat="server" CssClass="table-custom" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
             </div>
       <div class="form-input">
        <div class="col-6">
        </div>
        <div class="col-6">
            <div class="col-3 control-label">
                <asp:Label ID="lblFirstNameKYC_FourthNameUN" runat="server" Text="FirstNameKYC_FourthNameUN"></asp:Label>
            </div>
            <asp:GridView ID="gdvFirstNameKYC_FourthNameUN" runat="server" CssClass="table-custom" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
           </div>
          <div class="form-input">
        <div class="col-6">
        </div>
        <div class="col-6">

        </div>
 </div>

    </div>

</asp:Content>
