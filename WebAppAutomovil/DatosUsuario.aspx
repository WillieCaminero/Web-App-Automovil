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
                            <asp:DropDownList ID="ddlMetodoPago" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlMetodoPago_OnSelectedIndexChanged">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="Tarjeta de Crédito">Tarjeta de Crédito</asp:ListItem>
                                <asp:ListItem Value="Efectivo">Efectivo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <asp:Panel ID="pnlTarjetaCredito" runat="server" Visible="false">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Tarjeta de Crédito
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="txtTarjetaCredito">Tarjeta de Crédito</label>
                                        <asp:RequiredFieldValidator id="RequiredFieldValidator1"  runat="server"
                                                                    ControlToValidate="txtTarjetaCredito"
                                                                    ValidationGroup="Siguiente" 
                                                                    Display="Dynamic"
                                                                    ForeColor="Red"
                                                                    Width="100%">
                                                                        *
                                        </asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" 
                                                                            ControlToValidate="txtTarjetaCredito"
                                                                            Text="Formato: 1234 1234 1234 1234"
                                                                            ForeColor="Red" 
                                                                            ValidationExpression="[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}" 
                                                                            ValidationGroup="Siguiente"/>
                                        <asp:TextBox ID="txtTarjetaCredito" runat="server" CssClass="form-control"  placeholder="Tarjeta de Crédito"></asp:TextBox>
                                    </div>
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <label for="ddlMesTarjeta">Mes</label>
                                            <asp:DropDownList ID="ddlMesTarjeta" runat="server" CssClass="form-control" Width="120">
                                                <asp:ListItem Value="01">01</asp:ListItem>
                                                <asp:ListItem Value="02">02</asp:ListItem>
                                                <asp:ListItem Value="03">03</asp:ListItem>
                                                <asp:ListItem Value="04">04</asp:ListItem>
                                                <asp:ListItem Value="05">05</asp:ListItem>
                                                <asp:ListItem Value="06">06</asp:ListItem>
                                                <asp:ListItem Value="07">07</asp:ListItem>
                                                <asp:ListItem Value="08">08</asp:ListItem>
                                                <asp:ListItem Value="09">09</asp:ListItem>
                                                <asp:ListItem Value="10">10</asp:ListItem>
                                                <asp:ListItem Value="11">11</asp:ListItem>
                                                <asp:ListItem Value="12">12</asp:ListItem>
                                            </asp:DropDownList>
                                         </div>
                                        <div class="form-group">
                                            <label for="ddlAnioTarjeta">Año</label>
                                            <asp:DropDownList ID="ddlAnioTarjeta" runat="server" CssClass="form-control" Width="120">
                                                <asp:ListItem Value="2015">2015</asp:ListItem>
                                                <asp:ListItem Value="2016">2016</asp:ListItem>
                                                <asp:ListItem Value="2017">2017</asp:ListItem>
                                                <asp:ListItem Value="2018">2018</asp:ListItem>
                                                <asp:ListItem Value="2019">2019</asp:ListItem>
                                                <asp:ListItem Value="2020">2020</asp:ListItem>
                                            </asp:DropDownList>
                                         </div>
                                         <div class="form-group"  style="float:right;max-width:30%;">
                                            <asp:TextBox ID="txtCVVTarjeta" runat="server" CssClass="form-control"  placeholder="CVV" MaxLength="3" style="max-width:40%;"></asp:TextBox>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator2"  runat="server"
                                                                        ControlToValidate="txtCVVTarjeta"
                                                                        ValidationGroup="Siguiente"
                                                                        Display="Dynamic"
                                                                        ForeColor="Red"
                                                                        Width="100%">
                                                                            *
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" 
                                                                            ControlToValidate="txtCVVTarjeta"
                                                                            Text="Formato: 123"
                                                                            ForeColor="Red"  
                                                                            ValidationExpression="[0-9]{3}" 
                                                                            ValidationGroup="Siguiente"/>
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
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
