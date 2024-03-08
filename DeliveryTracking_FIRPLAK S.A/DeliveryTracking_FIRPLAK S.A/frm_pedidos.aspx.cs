using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public partial class frm_pedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            cls_pedido objPedido = new cls_pedido();

            string id = txt_id.Text;
            string fecha = txt_fechapedido.Text;
            string observaciones = txt_observaciones.Text;

            if (int.TryParse(ddl_cliente.SelectedValue, out int cliente) & int.TryParse(ddl_estadopedido.SelectedValue, out int estadopedido))
            {
                objPedido.fnt_agregarpedidos(id, fecha, cliente, estadopedido, observaciones);
                lbl_mensaje.Text = objPedido.getMensaje();
            }
            else
            {
                lbl_mensaje.Text = "Error: Los valores de cliente o estado del pedido no son números enteros válidos.";
            }

        }
    }
}