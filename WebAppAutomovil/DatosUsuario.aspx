<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosUsuario.aspx.cs" Inherits="WebAppAutomovil.DatosUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cuarta Pagina</title>
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Resources/css/bootstrap-theme.min.css" />
    <script src="Resources/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
           <div class="row">
               <div style="margin: 10% auto;display: block;width: 50%;">
                   <fieldset>
                        <legend>Datos Usuario</legend>
                        <div class="form-group">
                            <label for="txtNombres">Nombres</label>
                            <asp:RequiredFieldValidator id="rfvNombres"  runat="server"
                                                        ControlToValidate="txtNombres"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                            *
                            </asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control"  placeholder="Nombres"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtApellidos">Apellidos</label>
                            <asp:RequiredFieldValidator id="rfvApellidos"  runat="server"
                                                        ControlToValidate="txtApellidos"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                            *
                            </asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"  placeholder="Apellidos"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="ddlMetodoPago">Método de Pago</label>
                            <asp:RequiredFieldValidator id="rfvMetodoPago"  runat="server"
                                                        ControlToValidate="ddlMetodoPago"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlMetodoPago" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="Tarjeta de Crédito">Tarjeta de Crédito</asp:ListItem>
                                <asp:ListItem Value="Efectivo">Efectivo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                       <div class="form-group">
                            <label for="txtDireccion">Dirección de Envio</label>
                            <asp:RequiredFieldValidator id="rfvDireccion"  runat="server"
                                                        ControlToValidate="txtDireccion"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                            *
                            </asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"  placeholder="Dirección de Envio"></asp:TextBox>
                        </div>
                       <asp:Button ID="btnPaginaAnterior" runat="server" Text="Anterior" CssClass="btn btn-warning" OnClick="btnPaginaAnterior_OnClick"/>                   
                       <asp:Button ID="btnPaginaSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnPaginaSiguiente_OnClick" ValidationGroup="Siguiente"/>
                  </fieldset>
               </div>
           </div>
       </div>
    </form>
</body>
</html>
