using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public partial class frm_clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            cls_clientes objCliente = new cls_clientes();

            string id = txt_id.Text;
            string nombre = txt_nombre.Text;
            string direccion = txt_direccion.Text;
            string email = txt_email.Text;
            string telefono = txt_telefono.Text;

            objCliente.fnt_agregarclientes(id, nombre, direccion, email, telefono);

            lbl_mensaje.Text = objCliente.getMensaje();

        }
    }
}