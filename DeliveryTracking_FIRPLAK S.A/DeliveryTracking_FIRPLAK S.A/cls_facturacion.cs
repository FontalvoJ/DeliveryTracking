using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_facturacion
    {
        private string str_mensaje;
        private string str_id;
        private int int_pedido;
        private int int_cliente;
        private string str_fechadespacho;
        private string str_fechaentrega;
        private string str_estadoentrega;
        private int int_camion;
        private string str_guia;
        private string str_podfirmado;
        private string str_observaciones;

        public void fnt_agregarfacturas(string id, int pedido, int cliente, string fechadespacho, string fechaentrega, string estadoentrega, int camion, string guia, string podfirmado, string observaciones)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Registrar_Factura", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_facturacion", id);
                con.Parameters.AddWithValue("@pedido", pedido);
                con.Parameters.AddWithValue("@cliente ", cliente);
                con.Parameters.AddWithValue("@fecha_despacho", fechadespacho);
                con.Parameters.AddWithValue("@fecha_entrega", fechaentrega);
                con.Parameters.AddWithValue("@estado_entrega", estadoentrega);
                con.Parameters.AddWithValue("@camion", camion);
                con.Parameters.AddWithValue("@guia", guia);
                con.Parameters.AddWithValue("@podfirmado", podfirmado);
                con.Parameters.AddWithValue("@observaciones", observaciones);

                objConecta.connection.Open();
                con.ExecuteNonQuery();
                objConecta.connection.Close();
                str_mensaje = "Pedido registrado con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public string getMensaje() { return this.str_mensaje; }

        public string getId() { return this.str_id; }

        public int getPedido() { return this.int_pedido; }

        public int getCliente() { return this.int_cliente; }

        public string getFechaDespacho() { return this.str_fechadespacho; }

        public string getFechaEntrega() { return this.str_fechaentrega; }

        public string getEstadoEntrega() { return this.str_estadoentrega; }

        public int getCamion() { return this.int_camion; }

        public string getGuia() { return this.str_guia; }

        public string getPodFirmado() { return this.str_podfirmado; }

        public string getObservaciones() { return this.str_observaciones; }

    }
}