<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar_Facturas.aspx.cs" Inherits="DeliveryTracking_FIRPLAK_S.A.Consultar_Facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Consultas Facturas</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

</head>
<body>


      <!-- Menú de navegación entre páginas-->
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
              <a class="navbar-brand"> FIRPLAK S.A. </a>
              <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                      <a class="nav-link" href="frm_pedidos.aspx">Pedidos </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="frm_clientes.aspx"> Clientes </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="frm_camiones.aspx"> Camiones </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="frm_facturacion.aspx"> Facturación </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="Consultar_Facturas.aspx">Detalle Facturación </a>
                  </li>
              </ul>
          </div>
      </div>
  </nav>

  <!-- Formulario / Tabla -->
    <form id="form1" runat="server">
        <center>
            <br />
      
            <div class="div_control">
                 <h1 class="display-6">Detalle Facturación</h1>
                <br />
                <table class="table table-bordered table-striped">
            <tr>
                <td><asp:TextBox ID="txt_id" runat="server" placeholder="Ingrese el id de la factura" CssClass="form-control" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32)" MaxLength="10"></asp:TextBox></td>
                <td><asp:Button ID="btn_consultar" runat="server" Text="Consultar registros"  CssClass="btn btn-outline-success" OnClick="btn_consultar_Click"/>
                <asp:Button ID="btn_nuevo" runat="server" Text="Nueva consulta" CssClass="btn btn-outline-warning" OnClick="btn_nuevo_Click" /></td>
            </tr>
                </table>
            
            <br />
            <div>
                <asp:GridView ID="dtg_facturas" runat="server" CssClass="table" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_facturacion">
                    <Columns>
                        <asp:BoundField DataField="id_facturacion" HeaderText="Id Factura" ReadOnly="True" SortExpression="id_facturacion" />
                        <asp:BoundField DataField="pedido" HeaderText="Id Pedido" SortExpression="pedido" />
                        <asp:BoundField DataField="cliente" HeaderText="Id Cliente" SortExpression="cliente" />
                        <asp:BoundField DataField="fecha_despacho" HeaderText="Despacho" SortExpression="fecha_despacho" />
                        <asp:BoundField DataField="fecha_entrega" HeaderText="Entrega" SortExpression="fecha_entrega" />
                        <asp:BoundField DataField="estado_entrega" HeaderText="Estado" SortExpression="estado_entrega" />
                        <asp:BoundField DataField="camion" HeaderText="Id Camion" SortExpression="camion" />
                        <asp:BoundField DataField="guia" HeaderText="N° Guia" SortExpression="guia" />
                        <asp:BoundField DataField="podfirmado" HeaderText="POD" SortExpression="podfirmado" />
                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceFacturas" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString6 %>" ProviderName="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [tbl_facturacion]"></asp:SqlDataSource>
            </div>
                <div>
                    <asp:Label ID="lbl_mensaje" runat="server" Text="Mensaje" Visible="False"></asp:Label>
                </div>
            </div>
        </center>
    </form>
</body>
</html>