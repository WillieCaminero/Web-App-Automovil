<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppAutomovil.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Resources/css/bootstrap-theme.min.css" />
    <script src="Resources/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div style="margin: 10% auto;display: block;width: 50%;">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <asp:LinkButton ID="linkRegistrar" runat="server" OnClick="linkRegistrar_OnClick">
                                <img src="Resources/img/foto1.jpg" alt="Automóvil" class="img-circle" style="width: 300px;height: 200px;"/>
                            </asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                            <asp:LinkButton ID="linkLog" runat="server" OnClick="linkLog_OnClick">
                                <img src="Resources/img/foto2.jpg" alt="Bitácora" class="img-circle" style="width: 300px;height: 200px;"/>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
