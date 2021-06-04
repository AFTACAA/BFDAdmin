Public Class ReportMenu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnVendor_Totals_Click(sender As Object, e As EventArgs)
        Dim sql As String
        Dim ds As New DataSet

        sql = "Exec GetVendorTotals"

        Get_Dataset(sql, ds)

        sql = "Select * From VendorReport1"

        Get_Dataset(sql, ds, "Table1")

        sql = "Select * From VendorReport2"

        Get_Dataset(sql, ds, "Table2")


        gvVendor_Totals1.DataSource = ds.Tables("Table1")
        gvVendor_Totals1.DataBind()

        gvVendor_Totals2.DataSource = ds.Tables("Table2")
        gvVendor_Totals2.DataBind()

        pnlTotalsReportArt.Visible = True
        pnlMenuArt.Visible = False

    End Sub

    Protected Sub btnReturntoPO_Click(sender As Object, e As EventArgs)
        pnlTotalsReportArt.Visible = False
        pnlMenuArt.Visible = True
    End Sub
End Class