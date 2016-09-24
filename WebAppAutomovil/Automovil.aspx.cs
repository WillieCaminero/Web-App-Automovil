using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAutomovil
{
    public partial class Automovil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Models.Automovil automovil = (Models.Automovil)Session["Automovil"];
                cargarOpciones(automovil);
            }
        }

        protected void ddlMarca_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string marca = ddlMarca.SelectedValue.ToString();

            switch (marca)
            {
                case "ABARTH":
                    {
                        ddlModelo.Items.Clear();
                        ListItem item1 = new ListItem("-----Seleccione-----", string.Empty);
                        ListItem item2 = new ListItem("124 Spider", "124 Spider");
                        ListItem item3 = new ListItem("500", "500");
                        ListItem item4 = new ListItem("500C", "500C");
                        ddlModelo.Items.Add(item1);
                        ddlModelo.Items.Add(item2);
                        ddlModelo.Items.Add(item3);
                        ddlModelo.Items.Add(item4);
                        ddlModelo.DataBind();
                        break;
                    }
                case "ALFA ROMEO":
                    {
                        ddlModelo.Items.Clear();
                        ListItem item1 = new ListItem("-----Seleccione-----", string.Empty);
                        ListItem item2 = new ListItem("C4", "C4");
                        ListItem item3 = new ListItem("Giulia", "Giulia");
                        ListItem item4 = new ListItem("Giulietta", "Giulietta");
                        ListItem item5 = new ListItem("MiTo", "MiTo");
                        ddlModelo.Items.Add(item1);
                        ddlModelo.Items.Add(item2);
                        ddlModelo.Items.Add(item3);
                        ddlModelo.Items.Add(item4);
                        ddlModelo.Items.Add(item5);
                        ddlModelo.DataBind();
                        break;
                    }
            }
        }

        protected void btnPaginaSiguiente_OnClick(object sender, EventArgs e)
        {
            Models.Automovil automovil = new Models.Automovil();

            automovil.Marca = ddlMarca.SelectedValue.ToString();
            automovil.Modelo = ddlModelo.SelectedValue.ToString();
            automovil.Anio = ddlAnio.SelectedValue.ToString();
            automovil.Color = ddlColor.SelectedValue.ToString();

            Session["Automovil"] = automovil;

            Response.Redirect("~/Accesorios.aspx");
        }

        private void cargarOpciones(Models.Automovil automovil)
        {
            if (automovil != null)
            {
                ddlMarca.SelectedValue = automovil.Marca;
                ddlMarca_OnSelectedIndexChanged(null, null);
                ddlModelo.SelectedValue = automovil.Modelo;
                ddlAnio.SelectedValue = automovil.Anio;
                ddlColor.SelectedValue = automovil.Color;
            }
        }
    }
}