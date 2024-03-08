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
                        <a class="nav-link" href="frm_pedidos">Pedidos </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_clientes.aspx">Registrar Clientes </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_guias.aspx">Registro de Guias </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="frm_camiones.aspx">Registro de Camiones </a>
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

   
</body>
</html>
