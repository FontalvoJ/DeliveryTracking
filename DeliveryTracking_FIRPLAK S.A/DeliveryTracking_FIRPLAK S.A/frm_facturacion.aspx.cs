using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public partial class frm_Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_guardarfact_Click(object sender, EventArgs e)
        {
            cls_facturacion objFactura = new cls_facturacion();

            string id = txt_id.Text;
            string fechadespacho = txt_fechadespacho.Text;
            string fechaentrega = txt_fechaentrega.Text;
            string estadoentrega = txt_estadoentrega.Text;
            string guia = txt_guia.Text;
            string podfirmado = txt_pod.Text;
            string observaciones = txt_observaciones.Text;

            if (int.TryParse(ddl_pedido.SelectedValue, out int pedido) & int.TryParse(ddl_cliente.SelectedValue, out int cliente) & int.TryParse(ddl_camion.SelectedValue, out int camion))
            {
                objFactura.fnt_agregarfacturas(id, pedido, cliente, fechadespacho, fechaentrega, estadoentrega, camion, guia, podfirmado, observaciones);
                lbl_mensaje.Text = objFactura.getMensaje();
            }
            else
            {
                lbl_mensaje.Text = "Error: Los valores de pedido,cliente o camion no son números enteros válidos.";
            }

        }

        protected void btn_consultar_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;

            cls_facturacion ObjFacturacion = new cls_facturacion();

            ObjFacturacion.fnt_consultarfactura(id);

            lbl_mensaje.Text = ObjFacturacion.getMensaje();

            txt_fechadespacho.Text = ObjFacturacion.getFechaDespacho();
            txt_fechaentrega.Text = ObjFacturacion.getFechaEntrega();
            txt_estadoentrega.Text = ObjFacturacion.getEstadoEntrega();
            txt_guia.Text = ObjFacturacion.getGuia();
            txt_pod.Text = ObjFacturacion.getPodFirmado();
            txt_observaciones.Text = ObjFacturacion.getObservaciones();


            string pedidoValue = ObjFacturacion.getPedido().ToString();
            ListItem pedidoItem = ddl_pedido.Items.FindByValue(pedidoValue);
            if (pedidoItem != null)
            {
                ddl_pedido.SelectedValue = pedidoValue;
            }

            string clienteValue = ObjFacturacion.getCliente().ToString();
            ListItem clienteItem = ddl_cliente.Items.FindByValue(clienteValue);
            if (clienteItem != null)
            {
                ddl_cliente.SelectedValue = clienteValue;
            }

            string camionValue = ObjFacturacion.getCamion().ToString();
            ListItem camionItem = ddl_camion.Items.FindByValue(camionValue);
            if (camionItem != null)
            {
                ddl_camion.SelectedValue = camionValue;
            }
        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string pedido = ddl_pedido.SelectedValue;
            string cliente = ddl_cliente.SelectedValue;
            string fecha_despacho = txt_fechadespacho.Text;
            string fecha_entrega = txt_fechaentrega.Text;
            string estado_entrega = txt_estadoentrega.Text;
            string camion = ddl_camion.SelectedValue;
            string guia = txt_guia.Text;
            string podfirmado = txt_pod.Text;
            string observaciones = txt_observaciones.Text;

            cls_facturacion objFacturacion = new cls_facturacion();

            objFacturacion.fnt_actualizarfactura(id, pedido, cliente, fecha_despacho, fecha_entrega, estado_entrega, camion, guia, podfirmado, observaciones);

            lbl_mensaje.Text = objFacturacion.getMensaje();
        }

        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
            txt_id.Text = string.Empty;
            txt_id.Focus();
            ddl_pedido.SelectedIndex = 0;
            ddl_cliente.SelectedIndex = 0;
            txt_fechadespacho.Text = string.Empty;
            txt_fechaentrega.Text = string.Empty;
            txt_estadoentrega.Text = string.Empty;
            ddl_camion.SelectedIndex = 0;
            txt_guia.Text = string.Empty;
            txt_pod.Text = string.Empty;
            txt_observaciones.Text = string.Empty;
            lbl_mensaje.Text = string.Empty;
        }
    }
}