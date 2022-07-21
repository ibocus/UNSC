<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" CodeBehind="MainHome.aspx.vb" Inherits="UNSC.MainHome" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container px-2 pe-2">

        <%--Workflow--%>
        <div class="header-row mt-0">Workflow</div>
        <div class="row">
            <div class="col">
                <div class="counter-box d-flex">
                    <span class="counter px-4" style="color: orange">8</span>
                    <p><a href="Work_In_Progress.aspx" target="_blank">Work In Progress</a></p>
                </div>
            </div>
            <div class="col">
                <div class="counter-box d-flex">
                    <span class="counter px-4" style="color: green">6</span>
                    <p><a href="#">Workflow Completed</a></p>
                </div>
            </div>
            <div class="col-6"></div>
        </div>

        <div class="MANAGER">
            <div class="header-row">
                <div class="col">Daily Work In Progress</div>
                <div class="col ms-4">Daily Completed Workings</div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Table runat="server" CssClass="table-custom">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>Staff</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Process In Progress</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Cumulative Process</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Details</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell><asp:HyperLink runat="server">Test</asp:HyperLink></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
                <div class="col">
                    <asp:Table runat="server" CssClass="table-custom">
                        <asp:TableHeaderRow runat="server">
                            <asp:TableHeaderCell>Staff</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Process Completed</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Billing Amount</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Details</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div>
        </div>

        <div class="header-row">
            <div class="col">Highly Active Companies</div>
            <div class="col ms-4">Least Active Companies</div>
        </div>

        <div class="row">
            <div class="col">
                <asp:Table runat="server" CssClass="table-custom">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell>Company Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Number of Process</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Final Amount</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div class="col">
                <asp:Table runat="server" CssClass="table-custom">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell>Company Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Number of Process</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Final Amount</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Business Activity</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>

        <%--Non Billable Items--%>
       <div class="header-row">
            <div class="col">Non Billable Items (Yearly)</div>
            <div class="col ms-4">Non Billable Items (Weekly)</div>
        </div>

        <div class="row">
            <div class="col-6">
                <asp:Table runat="server" CssClass="table-custom">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell>Staff</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Process Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Frequency</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Total (Yearly) Hours</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div class="col-6">
                <asp:Table runat="server" CssClass="table-custom">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell>Staff</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Process Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Weekly Count</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Total (Weekly) Hours</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                        <asp:TableCell>Test</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>

        <%--Dashboard--%>
        <%--<div class="USER">

            <div class="header-row">
                <div class="col">Dashboard Ticketing System</div>
                <div class="col text-end">
                    <asp:HyperLink runat="server" Target="_blank" CssClass="new-item" NavigateUrl="NewTicket.aspx" Text="New Ticket"></asp:HyperLink>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="counter-box d-flex">
                        <span class="counter px-4" style="color: orange">8</span>
                        <p><a href="#">Active / Pending Tickets</a></p>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-box d-flex">
                        <span class="counter px-4" style="color: orange">8</span>
                        <p><a href="#">View Current Ticket</a></p>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-box d-flex">
                        <span class="counter px-4" style="color: orange">8</span>
                        <p><a href="#">View Closed Ticket</a></p>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-box d-flex">
                        <span class="counter px-4" style="color: green">6</span>
                        <p><a href="#">Comments Available</a></p>
                    </div>
                </div>
            </div>
        </div>--%>

        <%--Promoter Revenue--%>
        <div class="MANAGER">

            <div class="header-row">Promoter Revenue</div>
            <div class="row d-flex align-items-center">
                <div class="col-1">
                    <asp:Label ID="lblStartDate" CssClass="control-label me-0" runat="server">Start Date</asp:Label>
                </div>
                <div class="col-2">
                    <asp:TextBox ID="txtStartDate" CssClass="textbox" runat="server" placeholder="yyyy/mm/dd"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM/dd"
                        TargetControlID="txtStartDate"></asp:CalendarExtender>
                </div>
                <div class="col-1">
                    <button id="btnSearch" class="btn-search"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-1">
                    <asp:Label ID="lblEndDate" CssClass="control-label me-0" runat="server">End Date</asp:Label>
                </div>
                <div class="col-2">
                    <asp:TextBox ID="txtEndDate" CssClass="textbox" runat="server" placeholder="yyyy/mm/dd"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy/MM/dd"
                        TargetControlID="txtEndDate"></asp:CalendarExtender>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-6">
                    <asp:Table runat="server" CssClass="table-custom">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>Team Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Company Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Billing</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                            <asp:TableCell>Test</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div>
        </div>

        <%--Leaves Record--%>
        <div class="row">
            <div class="col">
                <div class="header-row">
                    <div class="col">
                        Leave Records</>
                    </div>
                    <div class="col text-end">
                        <asp:HyperLink runat="server" class="new-item" NavigateUrl="LeaveRecord.aspx" Text="New Leave"></asp:HyperLink>
                        <asp:Button ID="btnLeaveRecord" runat="server" CssClass="btn new-item" Text="New Leave" />
                    </div>

                    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnLeaveRecord"
                        CancelControlID="btnCloseDocType" OnCancelScript="HideModalPopup()" BackgroundCssClass="Popup-background">
                    </cc1:ModalPopupExtender>
                    <asp:Panel ID="Panl1" runat="server" CssClass="Popup-container" align="center" Style="display: none">

                        <iframe id="irm1" class="iframe" src="LeaveRecordModal.aspx" runat="server" width="600" height="550"></iframe>
                        <br />
                        <asp:Button ID="btnCloseDocType" runat="server" Text="Close" />

                    </asp:Panel>
                </div>

                <div class="row mt-2">
                    <div class="col">
                        <div class="counter-box d-flex">
                            <span class="counter px-4" style="color: green">8</span>
                            <p>Local Remaining</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="counter-box d-flex">
                            <span class="counter px-4" style="color: orange">6</span>
                            <p><a href="LocalLeaves.aspx" target="_blank">Local Pending</a></p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="counter-box d-flex">
                            <span class="counter px-4" style="color: green">12</span>
                           <p>Sick Remaining</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="counter-box d-flex">
                            <span class="counter px-4" style="color: orange">3</span>
                            <p><a href="#">Sick Pending</a></p>
                        </div>
                    </div>

                    <%--Manager only--%>
                    <div class="col MANAGER">
                        <div class="counter-box d-flex">
                            <span class="counter px-4" style="color: orange">3</span>
                            <p><a href="#">To Approve</a></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <div class="header-row">
                    <div class="col">
                        Leaves Record Planning
                    </div>
                    <div class="col text-end">
                        <img class="auto-style1" src="Images\LeavesPlanningRecord.png" alt="" />
                    </div>
                </div>

                <asp:UpdatePanel ID="UpdatePanelCalendar" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="calMain" runat="server" NextPrevFormat="FullMonth" Width="100%" SelectionMode="Day" FirstDayOfWeek="Monday" ShowGridLines="True" DayHeaderStyle-CssClass="maincalendar-dayheader" TitleStyle-CssClass="maincalendar-title" OtherMonthDayStyle-CssClass="maincalendar-otherdays" NextPrevStyle-CssClass="maincalendar-prevnext" WeekendDayStyle-CssClass="maincalendar-weekend" DayStyle-CssClass="maincalendar-day" CssClass="maincalendar" SelectedDayStyle-CssClass="maincalendar-selected" SelectorStyle-CssClass="maincalendar-selected" TodayDayStyle-CssClass="maincalendar-today" TitleStyle-BackColor="#E3F6F5"></asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
