using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAutomovil.Models;
using WebAppAutomovil.Utilities;

namespace WebAppAutomovil
{
    public partial class Log : System.Web.UI.Page
    {
        private List<LogRecord> data;
        private FileLog _log = new FileLog();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data = _log.obtenerRecords();

                gvPrincipal.DataSource = data;
                gvPrincipal.DataBind();

                ViewState["Source"] = data;
            }
        }

        protected void btnBuscar_OnClick(object sender, EventArgs e)
        {
            DateTime fechaDesde = DateTime.Parse(txtFechaDesde.Text);
            DateTime fechaHasta = DateTime.Parse(txtFechaHasta.Text);

            data = _log.obtenerRecords().Where((x) => x.Fecha >= fechaDesde).Where((x) => x.Fecha <= fechaHasta.AddDays(1)).ToList();

            gvPrincipal.DataSource = data;
            gvPrincipal.DataBind();

            ViewState["Source"] = data;
        }

        protected void gvPrincipal_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Int32.Parse(gvPrincipal.DataKeys[e.RowIndex].Value.ToString());
            List<LogRecord> data = (List<LogRecord>) ViewState["Source"];

            data.RemoveAll((x) => x.Id == Id);
            _log.eliminarRecord(Id);

            gvPrincipal.DataSource = data;
            gvPrincipal.DataBind();
        }

        protected void gvPrincipal_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            List<LogRecord> data = (List<LogRecord>)ViewState["Source"];

            gvPrincipal.PageIndex = e.NewPageIndex;
            gvPrincipal.DataSource = data;
            gvPrincipal.DataBind();
        }

        protected void btnPaginaAnterior_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}