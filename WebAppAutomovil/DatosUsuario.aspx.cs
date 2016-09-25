using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAutomovil
{
    public partial class DatosUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CompraNueva"] == null)
                Response.Redirect("~/ConfirmacionCompra.aspx");

            if (!IsPostBack) cargarOpciones();

        }

        protected void ddlMetodoPago_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string metodoPago = ddlMetodoPago.SelectedValue.ToString();

            if (metodoPago.Equals("Tarjeta de Crédito"))
                pnlTarjetaCredito.Visible = true;
            else
                pnlTarjetaCredito.Visible = false;
        }
        protected void btnPaginaSiguiente_OnClick(object sender, EventArgs e)
        {
            Models.Compra compra = (Models.Compra) Session["CompraNueva"];

            compra.Nombres = txtNombres.Text.Trim();
            compra.Apellidos = txtApellidos.Text.Trim();
            compra.MetodoPago = ddlMetodoPago.SelectedValue.ToString();
            compra.Direccion = txtDireccion.Text.Trim();

            if (compra.MetodoPago.Equals("Tarjeta de Crédito"))
            {
                compra.TarjetaCredito = new Models.TarjetaCredito();
                compra.TarjetaCredito.CodigoTarjeta = txtTarjetaCredito.Text;
                compra.TarjetaCredito.Mes = ddlMesTarjeta.SelectedValue;
                compra.TarjetaCredito.Anio = ddlAnioTarjeta.SelectedValue;
                compra.TarjetaCredito.CVV = txtCVVTarjeta.Text;
            }
            else
                compra.TarjetaCredito = null;

            Session["Compra"] = compra;

            Response.Redirect("~/ResumenCompra.aspx");
        }

        protected void btnPaginaAnterior_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/ConfirmacionCompra.aspx");
        }

        private void cargarOpciones()
        {
            Models.Compra compra = (Models.Compra)Session["CompraNueva"];

            txtNombres.Text = compra.Nombres;
            txtApellidos.Text = compra.Apellidos;
            ddlMetodoPago.SelectedValue = compra.MetodoPago;
            txtDireccion.Text = compra.Direccion;

            if (compra.TarjetaCredito != null)
            {
                txtTarjetaCredito.Text = compra.TarjetaCredito.CodigoTarjeta;
                ddlMesTarjeta.SelectedValue = compra.TarjetaCredito.Mes;
                ddlAnioTarjeta.SelectedValue = compra.TarjetaCredito.Anio;
                txtCVVTarjeta.Text = compra.TarjetaCredito.CVV;

                pnlTarjetaCredito.Visible = true;
            }
        }
    }
}