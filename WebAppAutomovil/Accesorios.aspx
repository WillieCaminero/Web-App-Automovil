<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accesorios.aspx.cs" Inherits="WebAppAutomovil.Accesorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Segunda Pagina</title>
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
                        <legend>Accesorios</legend>
                        <div class="form-group">
                            <label for="ddlTiposAsientos">Tipos de Asientos</label>
                            <asp:RequiredFieldValidator id="rfvTiposAsientos"  runat="server"
                                                        ControlToValidate="ddlTiposAsientos"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlTiposAsientos" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="Banca Corrida">Banca Corrida</asp:ListItem>
                                <asp:ListItem Value="Forma de Cubo">Forma de Cubo</asp:ListItem>
                                <asp:ListItem Value="Forma de Capitan">Forma de Capitan</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="ddlTiposAros">Tipos de Aros</label>
                            <asp:RequiredFieldValidator id="rfvTiposAros"  runat="server"
                                                        ControlToValidate="ddlTiposAros"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlTiposAros" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="Acero">Acero</asp:ListItem>
                                <asp:ListItem Value="Aleacion">Aleacion</asp:ListItem>
                                <asp:ListItem Value="Rin Dividido">Rin Dividido</asp:ListItem>
                                <asp:ListItem Value="Fibra de Carbon">Fibra de Carbon</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                       <div class="form-group">
                            <label for="ddlTableros">Tipos de Tableros</label>
                            <asp:RequiredFieldValidator id="rfvTableros"  runat="server"
                                                        ControlToValidate="ddlTableros"
                                                        ValidationGroup="Siguiente" 
                                                        Display="Dynamic"
                                                        ForeColor="Red"
                                                        Width="100%">
                                                         *
                            </asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlTableros" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">-----Seleccione-----</asp:ListItem>
                                <asp:ListItem Value="Digital">Digital</asp:ListItem>
                                <asp:ListItem Value="Analogo">Analogo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                       <asp:Button ID="btnPaginaAnterior" runat="server" Text="Anterior" CssClass="btn btn-warning" OnClick="btnPaginaAnterior_OnClick"/>
                       <asp:Button ID="btnPaginaSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-primary" OnClick="btnPaginaSiguiente_OnClick" ValidationGroup="Siguiente" />
                  </fieldset>
               </div>
           </div>
       </div>
    </form>
</body>
</html>
