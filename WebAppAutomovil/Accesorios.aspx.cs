using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAutomovil
{
    public partial class Accesorios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Automovil"] == null)
                Response.Redirect("~/Automovil.aspx");

            if (!IsPostBack)
            {
                Models.Automovil automovil = (Models.Automovil)Session["Automovil"];
                Models.Accesorios accesorios = (Models.Accesorios)Session["Accesorios"];

                cargarArosPorMarca(automovil.Marca);
                cargarOpciones(accesorios);
            }
        }

        protected void btnPaginaSiguiente_OnClick(object sender, EventArgs e)
        {
            Models.Accesorios accesorios = new Models.Accesorios();

            accesorios.TipoAsiento = ddlTiposAsientos.SelectedValue.ToString();
            accesorios.TipoAro = ddlTiposAros.SelectedValue.ToString();
            accesorios.TipoTablero = ddlTableros.SelectedValue.ToString();

            Session["Accesorios"] = accesorios;

            Response.Redirect("~/ConfirmacionCompra.aspx");
        }

        protected void btnPaginaAnterior_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Automovil.aspx");
        }

        private void cargarArosPorMarca(string marca)
        {
            switch (marca)
            {
                case "ABARTH":
                    {
                        ddlTiposAros.Items.Clear();
                        ListItem item1 = new ListItem("-----Seleccione-----", string.Empty);
                        ListItem item2 = new ListItem("Acero", "Acero");
                        ListItem item3 = new ListItem("Aleacion", "Aleacion");
                        ddlTiposAros.Items.Add(item1);
                        ddlTiposAros.Items.Add(item2);
                        ddlTiposAros.Items.Add(item3);
                        ddlTiposAros.DataBind();
                        break;
                    }
                case "ALFA ROMEO":
                    {
                        ddlTiposAros.Items.Clear();
                        ListItem item1 = new ListItem("-----Seleccione-----", string.Empty);
                        ListItem item2 = new ListItem("Rin Dividido", "Rin Dividido");
                        ListItem item3 = new ListItem("Fibra de Carbon", "Fibra de Carbon");
                        ddlTiposAros.Items.Add(item1);
                        ddlTiposAros.Items.Add(item2);
                        ddlTiposAros.Items.Add(item3);
                        ddlTiposAros.DataBind();
                        break;
                    }
            }
        }

        private void cargarOpciones(Models.Accesorios accesorios)
        {
            if (accesorios != null)
            {
                ddlTiposAsientos.SelectedValue = accesorios.TipoAsiento;
                ddlTiposAros.SelectedValue = accesorios.TipoAro;
                ddlTableros.SelectedValue = accesorios.TipoTablero;
            }
        }
    }
}