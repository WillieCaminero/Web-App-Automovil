<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmacionCompra.aspx.cs" Inherits="WebAppAutomovil.ConfirmacionCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tercera Pagina</title>
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Resources/css/bootstrap-theme.min.css" />
    <script src="Resources/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
           <div class="row">
               <div style="margin: 5% auto;display: block;width: 50%;">
                   <fieldset>
                       <legend>Confirmación de Compra</legend>
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
                            </div>
                        </div>
                       <asp:Button ID="btnPaginaAnterior" runat="server" Text="Anterior" CssClass="btn btn-warning" OnClick="btnPaginaAnterior_OnClick"/>
                       <asp:Button ID="btnPaginaSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnPaginaSiguiente_OnClick"/>
                  </fieldset>
               </div>
           </div>
       </div>
    </form>
</body>
</html>
