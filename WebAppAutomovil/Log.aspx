<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="WebAppAutomovil.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log</title>

    <link href="Resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Resources/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link href="Resources/css/styles.css" rel="stylesheet" />
</head>
<body>
 <form id="form1" runat="server">
    <div class="container">
           <div class="row">
               <div style="margin: 2% auto;display: block;width: 50%;">
                   <fieldset>
                       <legend>Bitácora</legend>
                        <div class="row">
                            <div class="panel panel-default">
                              <div class="panel-heading" style="padding-bottom:20px;">
                                
                                <div class="form-group col-md-5">
                                    <div class="input-group date form_date" data-date="" data-date-format="dd-mm-yyyy" data-link-field="<%=txtFechaDesde.ClientID %>" data-link-format="dd-mm-yyyy">
                                        <input  placeholder="Fecha Desde" class="form-control" size="16" readonly="readonly" value="<%=txtFechaDesde.Text %>"/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>   
                                    </div>                       
                                    <asp:RequiredFieldValidator id="RequiredFieldValidator1"  runat="server"
                                                                ControlToValidate="txtFechaDesde"
                                                                Display="Dynamic"
                                                                ForeColor="Red"
                                                                ValidationGroup="vgBuscar" 
                                                                Width="100%">
                                                                    * Requerido
                                    </asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtFechaDesde" runat="server" style="display:none;"></asp:TextBox>
                                        
                                </div>
                                <div class="form-group col-md-5">
                                    <div class="input-group date form_date" data-date="" data-date-format="dd-mm-yyyy" data-link-field="<%=txtFechaHasta.ClientID %>" data-link-format="dd-mm-yyyy">
                                        <input  placeholder="Fecha Hasta" class="form-control" size="16" readonly="readonly" value="<%=txtFechaHasta.Text %>"/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span> 
                                    </div>                         
                                    <asp:RequiredFieldValidator id="RequiredFieldValidator2"  runat="server"
                                                                ControlToValidate="txtFechaHasta"
                                                                Display="Dynamic"
                                                                ForeColor="Red"
                                                                ValidationGroup="vgBuscar" 
                                                                Width="100%">
                                                                    * Requerido
                                    </asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtFechaHasta" runat="server" style="display:none;"></asp:TextBox>
                                </div>
                                 
                                 <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_OnClick" ValidationGroup="vgBuscar" CssClass="btn btn-default"/>
                                
                               </div>
                              <div class="panel-body">
                                  <asp:GridView ID="gvPrincipal" runat="server" CssClass="table table-striped" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" DataKeyNames="Id" 
                                                AllowPaging="true" PageSize="5"  OnPageIndexChanging ="gvPrincipal_PageIndexChanging" OnRowDeleting="gvPrincipal_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Código" />
                                        <asp:BoundField DataField="Usuario" HeaderText="Usuario Transacción" />
                                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                                        <asp:CommandField ShowDeleteButton="true" />
                                    </Columns>
                                    <PagerStyle CssClass="pagination-ys" />
                                  </asp:GridView>
                              </div>
                              <div class="panel-footer">
                                  <asp:Button ID="btnPaginaAnterior" runat="server" Text="Anterior" CssClass="btn btn-warning" OnClick="btnPaginaAnterior_OnClick"/>
                              </div>
                            </div>
                        </div>
                  </fieldset>
               </div>
           </div>
       </div>
    </form>

    <script src="Resources/js/jquery-1.8.3.min.js"></script>
    <script src="Resources/js/bootstrap.min.js"></script>
    <script src="Resources/js/bootstrap-datetimepicker.min.js"></script>
    <script src="Resources/js/locales/bootstrap-datetimepicker.es.js"></script>
    <script type="text/javascript">
	    $('.form_date').datetimepicker({
            language:  'es',
            weekStart: 1,
            todayBtn:  1,
		    autoclose: 1,
		    todayHighlight: 1,
		    startView: 2,
		    minView: 2,
		    forceParse: 0
        });
    </script>

</body>
</html>
