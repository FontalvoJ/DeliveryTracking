using System;
using System.Collections.Generic;
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
    }
}