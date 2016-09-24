using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAutomovil
{
    public partial class ConfirmacionCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Models.Automovil automovil = (Models.Automovil)Session["Automovil"];
            Models.Accesorios accesorios = (Models.Accesorios)Session["Accesorios"];

            if (!IsPostBack)
            {
                if (automovil == null || accesorios == null)
                    Response.Redirect("~/Automovil.aspx");
                else
                    cargarResumen(automovil, accesorios);
            }
        }

        protected void btnPaginaSiguiente_OnClick(object sender, EventArgs e)
        {
            Models.Automovil automovil = (Models.Automovil)Session["Automovil"];
            Models.Accesorios accesorios = (Models.Accesorios)Session["Accesorios"];
            Models.Compra compra = (Models.Compra)Session["Compra"];
            Models.Compra compraNueva = new Models.Compra();

            if (compra != null)
            {
                compraNueva.Nombres = compra.Nombres;
                compraNueva.Apellidos = compra.Apellidos;
                compraNueva.MetodoPago = compra.MetodoPago;
                compraNueva.Direccion = compra.Direccion;
            }
            
            compraNueva.Automovil = automovil;
            compraNueva.Accesorios = accesorios;

            Session["CompraNueva"] = compraNueva;

            Response.Redirect("~/DatosUsuario.aspx");
        }

        protected void btnPaginaAnterior_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Accesorios.aspx");
        }

        private void cargarResumen(Models.Automovil automovil, Models.Accesorios accesorios)
        {
            lblMontoTotal.Text = "$1,200,000";
            lblMarca.Text = automovil.Marca;
            lblModelo.Text = automovil.Modelo;
            lblAnio.Text = automovil.Anio;
            lblColor.Text = automovil.Color;
            lblTipoAsiento.Text = accesorios.TipoAsiento;
            lblTipoAro.Text = accesorios.TipoAro;
            lblTipoTablero.Text = accesorios.TipoTablero;
        }
    }
}