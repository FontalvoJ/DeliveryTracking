<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_facturacion.aspx.cs" Inherits="DeliveryTracking_FIRPLAK_S.A.frm_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Facturación </title>


    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

</head>
<body class="overflow-hidden">

    <!-- Menú de navegación entre páginas-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand">FIRPLAK S.A. </a>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="frm_pedidos.aspx">Pedidos </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_clientes.aspx">Clientes </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_camiones.aspx">Camiones </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_facturacion.aspx">Facturación </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_mostrar_facturas.aspx">Mostrar Facturación </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <form runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="mb-3">
                        <h3>Facturación</h3>
                    </div>
                    <div class="shadow p-4">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <asp:TextBox ID="txt_id" placeholder="ID Factura" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="ddl_pedido" class="form-label">Pedido:</label>
                                <asp:DropDownList ID="ddl_pedido" placeholder="Pedido" class="form-control" runat="server" DataSourceID="SqlDataSourcePedido" DataTextField="id_pedido" DataValueField="id_pedido"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourcePedido" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString3 %>" ProviderName="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString3.ProviderName %>" SelectCommand="SELECT [id_pedido], [observaciones] FROM [tbl_pedidos]"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-4">
                                <label for="ddl_cliente" class="form-label">Cliente:</label>
                                <asp:DropDownList ID="ddl_cliente" placeholder="Cliente" class="form-control" runat="server" DataSourceID="SqlDataSourceCliente" DataTextField="nombre" DataValueField="id_cliente"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString %>" ProviderName="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString.ProviderName %>" SelectCommand="SELECT [id_cliente], [nombre] FROM [tbl_clientes]"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-4">
                                <label for="ddl_camion" class="form-label">Camión:</label>
                                <asp:DropDownList ID="ddl_camion" placeholder="Camión" class="form-control" runat="server" DataSourceID="SqlDataSourceCamion" DataTextField="placa" DataValueField="id_camion"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCamion" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString4 %>" ProviderName="<%$ ConnectionStrings:dbs_delivery_firplakConnectionString4.ProviderName %>" SelectCommand="SELECT [id_camion], [placa] FROM [tbl_camiones]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_fechadespacho" placeholder="Fecha Despacho AAAA-MM-DD" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_fechaentrega" placeholder="Fecha Entrega AAAA-MM-DD" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_estadoentrega" placeholder="Estado" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_guia" placeholder="# Guia" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_pod" placeholder="POD Firmado SI/NO" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txt_observaciones" placeholder="Observaciones" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <asp:Button ID="btn_guardarfact" class="btn btn-dark btn-md mr-2" runat="server" Text="Guardar" OnClick="btn_guardarfact_Click" />
                                        <asp:Button ID="btn_consultar" Text="Consultar" class="btn btn-dark btn-md mr-2" runat="server" />
                                        <asp:Button ID="btn_actualizar" Text="Actualizar" class="btn btn-dark btn-md mr-2" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-outline">
                            <asp:Label ID="lbl_mensaje" runat="server" Text="" class="form-control form-control-sm"></asp:Label>
                        </div>
                        <hr>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <p class="text-center mb-0">COPYRIGHT @FontalvoJ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
