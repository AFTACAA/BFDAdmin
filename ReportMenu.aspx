<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportMenu.aspx.vb" Inherits="BFD_New.ReportMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Menu</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=.2, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
    <link href="_Styles/Basic_Styles.css" rel="stylesheet" />
    <link href="_Styles/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <asp:Panel ID="pnlMenuArt" Visible="true" BackColor="White" runat="server">
            <p class="pTitle topMargin1em centerText">Reports Menu/>Main Menu</p>
            <hr class="myHr" />

            <asp:Panel ID="Panel3" CssClass="autoMarginLeftRight width50 topMargin4em regBorder" BackColor="Gold" ForeColor="Maroon" runat="server">
                <asp:Button ID="btnVendor_Totals" CssClass="autoMarginLeftRight block topMargin1em" Font-Size="2em" Width="50%" runat="server" Text="Vendor Totals Report" OnClick="btnVendor_Totals_Click" ToolTip="Click to show all Puchase Orders" />
            </asp:Panel>
        </asp:Panel>

        <asp:Panel ID="pnlTotalsReportArt" Visible="false" BackColor="White" runat="server">
            <asp:Button ID="btnReturntoPO" CssClass="floatRight rightMargin2em" ForeColor="Maroon" runat="server" Text=" r " OnClick="btnReturntoPO_Click" />
            <div class="clear"></div>
            <p class="pTitle topMargin1em centerText backWhite">PO Totals Report<br />Main Menu</p>
            <hr class="myHr" />

            <div class="centerDiv autoMarginLeftRight topMargin1em width95 maroonBorder">
                <div class="floatLeft width45 backWhite centerDiv topMargin2em">
                   <asp:GridView ID="gvVendor_Totals1" CssClass="inline" BackColor="White" ForeColor="Black"  runat="server" AutoGenerateColumns="false">
                            <columns>
                                <asp:boundfield datafield="Vendor" ItemStyle-BackColor="White" ItemStyle-ForeColor="Black" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="1.5em"
                                   headertext="Vendor" HeaderStyle-BackColor="LightGray" HeaderStyle-ForeColor="Black" HeaderStyle-Font-Size="1.5em"/>
                                <asp:boundfield datafield="Cost" ItemStyle-BackColor="White" ItemStyle-ForeColor="Black" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="1.5em" 
                                    headertext="Totals" HeaderStyle-BackColor="LightGray" HeaderStyle-ForeColor="Black" HeaderStyle-Font-Size="1.5em"/>
                            </columns>
                        </asp:GridView>
                </div>

                <div class="floatLeft width45 backWhite centerDiv topMargin2em leftMargin2em topMargin2em">
                    <asp:GridView ID="gvVendor_Totals2" CssClass="inline" BackColor="White" ForeColor="Black"  runat="server" AutoGenerateColumns="false">
                        <columns>
                            <asp:boundfield datafield="Vendor" ItemStyle-BackColor="White" ItemStyle-ForeColor="Black" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="1.5em"
                                headertext="Vendor" HeaderStyle-BackColor="LightGray" HeaderStyle-ForeColor="Black" HeaderStyle-Font-Size="1.5em"/>
                            <asp:boundfield datafield="Cost" ItemStyle-BackColor="White" ItemStyle-ForeColor="Black" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="1.5em" 
                                headertext="Totals" HeaderStyle-BackColor="LightGray" HeaderStyle-ForeColor="Black" HeaderStyle-Font-Size="1.5em"/>
                        </columns>
                    </asp:GridView>
                </div>

                <div class="clear"></div>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
