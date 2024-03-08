<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mostrar_facturas.aspx.cs" Inherits="DeliveryTracking_FIRPLAK_S.A.mostrar_facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Consultas de prestamos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<link href="estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <br />
      
            <div class="div_control">
                 <h1 class="display-6">Formulario de consulta</h1>
                <br />
                <table class="table table-bordered table-striped">
            <tr>
                <td><asp:TextBox ID="txt_id" runat="server" placeholder="Ingrese su documento de identidad" CssClass="form-control" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32)" MaxLength="10"></asp:TextBox></td>
                <td><asp:Button ID="btn_consultar" runat="server" Text="Consultar registros" CssClass="btn btn-outline-success"/>
                <asp:Button ID="btn_nuevo" runat="server" Text="Nueva consulta" CssClass="btn btn-outline-warning" /></td>
            </tr>
                </table>
            
            <br />
            <div>
                <asp:GridView ID="dtg_prestamos" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="id_facturacion" DataSourceID="SqlDataSourceFacturas">
                    <Columns>
                        <asp:BoundField DataField="id_facturacion" HeaderText="id_facturacion" ReadOnly="True" SortExpression="id_facturacion" />
                        <asp:BoundField DataField="pedido" HeaderText="pedido" SortExpression="pedido" />
                        <asp:BoundField DataField="cliente" HeaderText="cliente" SortExpression="cliente" />
                        <asp:BoundField DataField="fecha_despacho" HeaderText="fecha_despacho" SortExpression="fecha_despacho" />
                        <asp:BoundField DataField="fecha_entrega" HeaderText="fecha_entrega" SortExpression="fecha_entrega" />
                        <asp:BoundField DataField="estado_entrega" HeaderText="estado_entrega" SortExpression="estado_entrega" />
                        <asp:BoundField DataField="camion" HeaderText="camion" SortExpression="camion" />
                        <asp:BoundField DataField="guia" HeaderText="guia" SortExpression="guia" />
                        <asp:BoundField DataField="podfirmado" HeaderText="podfirmado" SortExpression="podfirmado" />
                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceFacturas" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString5 %>" ProviderName="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [tbl_facturacion]"></asp:SqlDataSource>
            </div>
                <div>
                    <asp:Label ID="lbl_mensaje" runat="server" Text="Mensaje" Visible="False"></asp:Label>
                </div>
            </div>
        </center>
    </form>
</body>
</html>