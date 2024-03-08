using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public partial class frm_camiones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btn_guardar_Click1(object sender, EventArgs e)
        {
            cls_camiones objCamion = new cls_camiones();

            string id = txt_id.Text;
            string placa = txt_placa.Text;
            string marca = txt_marca.Text;
            string modelo = txt_modelo.Text;
            string capacidad = txt_capacidad.Text;


            objCamion.fnt_agregarclientes(id, placa, marca, modelo, capacidad);

            lbl_mensaje.Text = objCamion.getMensaje();
        }
    }
}