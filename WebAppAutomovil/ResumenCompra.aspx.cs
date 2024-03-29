﻿using System;
using WebAppAutomovil.Models;
using WebAppAutomovil.Utilities;

namespace WebAppAutomovil
{
    public partial class ResumenCompra : System.Web.UI.Page
    {
        private FileLog _log = new FileLog();

        protected void Page_Load(object sender, EventArgs e)
        {
            Models.Compra compra = (Compra)Session["Compra"];

            if (!IsPostBack)
            {
                if (compra == null)
                    Response.Redirect("~/DatosUsuario.aspx");
                else
                    cargarResumen(compra);
            }
        }

        protected void btnTerminarCompra_OnClick(object sender, EventArgs e)
        {
            Models.Compra compra = (Compra)Session["Compra"];
            LogRecord log = new LogRecord();

            log.Id = _log.obtenerIdRecord();
            log.Usuario = compra.Nombres + " " + compra.Apellidos;
            log.Fecha = DateTime.Now;

            _log.insertarRecordLog(log);

            Session["Automovil"] = null;
            Session["Accesorios"] = null;
            Session["CompraNueva"] = null;
            Session["Compra"] = null;

            Response.Redirect("~/Default.aspx");
        }

        protected void btnPaginaAnterior_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/DatosUsuario.aspx");
        }

        private void cargarResumen(Models.Compra compra)
        {
            Models.Automovil automovil = compra.Automovil;
            Models.Accesorios accesorios = compra.Accesorios;

            lblMontoTotal.Text = "$1,200,000";
            lblMarca.Text = automovil.Marca;
            lblModelo.Text = automovil.Modelo;
            lblAnio.Text = automovil.Anio;
            lblColor.Text = automovil.Color;
            lblTipoAsiento.Text = accesorios.TipoAsiento;
            lblTipoAro.Text = accesorios.TipoAro;
            lblTipoTablero.Text = accesorios.TipoTablero;

            lblNombreCompleto.Text = compra.Nombres + " " + compra.Apellidos;
            lblMetodoPago.Text = compra.MetodoPago;
            lblDireccion.Text = compra.Direccion;

            if (compra.TarjetaCredito != null)
            {
                lblTarjetaCredito.Text = compra.TarjetaCredito.CodigoTarjeta;
                lblMesTarjeta.Text = compra.TarjetaCredito.Mes;
                lblAnioTarjeta.Text = compra.TarjetaCredito.Anio;
                lblCVVTarjeta.Text = compra.TarjetaCredito.CVV;
                pnlTarjetaCredito.Visible = true;
            }
        }

    }
}