<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_camiones.aspx.cs" Inherits="DeliveryTracking_FIRPLAK_S.A.frm_camiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Camiones </title>

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
                        <a class="nav-link" href="frm_pedidos.aspx"> Pedidos </a>
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
                        <a class="nav-link" href="mostrar_facturas.aspx"> Detalle Facturación </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Formulario -->
    <form runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-1">
                        <h3>Registrar Camiones</h3>
                    </div>
                    <div class="shadow p-4">
                        <div class="mb-1">
                            <asp:TextBox ID="txt_id" placeholder="Id del Camion" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-1 row">
                            <div class="col-md-6">
                                <asp:TextBox ID="txt_placa" placeholder="Placa" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <asp:TextBox ID="txt_marca" placeholder="Marca" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-1">
                            <asp:TextBox ID="txt_modelo" placeholder="Modelo" class="form-control" runat="server"></asp:TextBox>
                        </div>



                        <div class="mb-1">
                            <asp:TextBox ID="txt_capacidad" placeholder="Capacidad" class="form-control" runat="server"></asp:TextBox>
                        </div>


                        <div class="mb-1">
                            <asp:Button ID="btn_guardar" Text="Guardar" class="btn btn-dark btn-md mr-2" runat="server" OnClick="btn_guardar_Click1" />
                        </div>

                        <div class="form-outline mb-1">
                            <asp:Label ID="lbl_mensaje" runat="server" Text="" class="form-control form-control-sm"></asp:Label>
                        </div>

                        <hr>

                        <p class="text-center mb-0">COPYRIGHT @FontalvoJ</p>
                    </div>
                </div>
        </div>
            </div>
    </form>
</body>
</html>
