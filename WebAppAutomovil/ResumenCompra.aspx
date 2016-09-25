<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResumenCompra.aspx.cs" Inherits="WebAppAutomovil.ResumenCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quinta Pagina</title>
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Resources/css/bootstrap-theme.min.css" />
    <script src="Resources/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
           <div class="row">
               <div style="margin: 2% auto;display: block;width: 50%;">
                   <fieldset>
                       <legend>Resumen de Compra</legend>
                        <div class="row">
                            <div class="panel panel-default">
                              <div class="panel-heading">
                                  <strong>Monto Total:</strong>
                                  <asp:Label ID="lblMontoTotal" runat="server"></asp:Label>   
                              </div>
                              <div class="panel-body">
                                    <div class="col-md-6">
                                        <div class="list-group">
                                            <label class="list-group-item">Marca</label>
                                            <label class="list-group-item">Modelo</label>
                                            <label class="list-group-item">Año</label>
                                            <label class="list-group-item">Color</label>
                                            <label class="list-group-item">Tipo de Asiento</label>
                                            <label class="list-group-item">Tipo de Aro</label>
                                            <label class="list-group-item">Tipo de Tablero</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="list-group">
                                            <asp:Label ID="lblMarca" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblModelo" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblAnio" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblColor" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblTipoAsiento" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblTipoAro" runat="server" CssClass="list-group-item"></asp:Label>
                                            <asp:Label ID="lblTipoTablero" runat="server" CssClass="list-group-item"></asp:Label>
                                        </div>
                                    </div>
                              </div>
                              <div class="panel-footer">
                                  <strong>Nombre Completo:</strong> <asp:Label ID="lblNombreCompleto" runat="server"></asp:Label> <br/>
                                  <strong>Método de Pago:</strong> <asp:Label ID="lblMetodoPago" runat="server"></asp:Label> <br/>
                                  <asp:Panel ID="pnlTarjetaCredito" runat="server" Visible="false">
                                      <strong>Tarjeta de Crédito:</strong> <asp:Label ID="lblTarjetaCredito" runat="server"></asp:Label> 
                                      <strong>Año:</strong> <asp:Label ID="lblAnioTarjeta" runat="server"></asp:Label> 
                                      <strong>Mes:</strong> <asp:Label ID="lblMesTarjeta" runat="server"></asp:Label> 
                                      <strong>CVV:</strong> <asp:Label ID="lblCVVTarjeta" runat="server"></asp:Label> <br/>
                                  </asp:Panel>
                                  <strong>Dirección:</strong> <asp:Label ID="lblDireccion" runat="server"></asp:Label> <br/>
                              </div>
                            </div>
                        </div>
                       <asp:Button ID="btnPaginaAnterior" runat="server" Text="Anterior" CssClass="btn btn-warning" OnClick="btnPaginaAnterior_OnClick"/>
                       <asp:Button ID="btnTerminarCompra" runat="server" Text="Completar Transacción" CssClass="btn btn-primary" OnClick="btnTerminarCompra_OnClick"/>
                  </fieldset>
               </div>
           </div>
       </div>
    </form>
</body>
</html>
