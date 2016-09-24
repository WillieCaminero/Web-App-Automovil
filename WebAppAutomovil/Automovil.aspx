<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Automovil.aspx.cs" Inherits="WebAppAutomovil.Automovil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Primera Pagina</title>
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
                        <legend>Automovil</legend>
                        <div class="form-group">
                            <label for="ddlMarca">Marca</label>
                            <asp:RequiredFieldValidator id="rfvMarca"  runat="server"
                                                        ControlToValidate="ddlMarca"
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlMarca" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlMarca_OnSelectedIndexChanged">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="ABARTH">ABARTH</asp:ListItem>
                                <asp:ListItem Value="ALFA ROMEO">ALFA ROMEO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="ddlModelo">Modelo</label>
                            <asp:RequiredFieldValidator id="rfvModelo"  runat="server"
                                                        ControlToValidate="ddlModelo"
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlModelo" runat="server" EnableViewState="true" CssClass="form-control"></asp:DropDownList>
                        </div>
                       <div class="form-group">
                            <label for="ddlAnio">Año</label>
                           <asp:RequiredFieldValidator id="rfvAnio"  runat="server"
                                                        ControlToValidate="ddlAnio"
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                             <asp:DropDownList ID="ddlAnio" runat="server" CssClass="form-control">
                                 <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                 <asp:ListItem Value="2017">2017</asp:ListItem>
                                 <asp:ListItem Value="2016">2016</asp:ListItem>
                                 <asp:ListItem Value="2015">2015</asp:ListItem>
                                 <asp:ListItem Value="2014">2014</asp:ListItem>
                                 <asp:ListItem Value="2013">2013</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                       <div class="form-group">
                            <label for="ddlColor">Color</label>
                            <asp:RequiredFieldValidator id="rfvColor"  runat="server"
                                                        ControlToValidate="ddlColor"
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                            *
                            </asp:RequiredFieldValidator>
                             <asp:DropDownList ID="ddlColor" runat="server" CssClass="form-control">
                                 <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                 <asp:ListItem Value="Rojo">Rojo</asp:ListItem>
                                 <asp:ListItem Value="Blanco">Blanco</asp:ListItem>
                                 <asp:ListItem Value="Negro">Negro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                       <asp:Button ID="btnPaginaSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnPaginaSiguiente_OnClick"/>
                  </fieldset>
               </div>
           </div>
       </div>
    </form>
</body>
</html>
