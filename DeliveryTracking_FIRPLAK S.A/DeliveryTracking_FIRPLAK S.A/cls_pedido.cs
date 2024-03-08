using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_pedido
    {
        private string str_mensaje;
        private string str_id;
        private string str_fechapedido;
        private int int_cliente;
        private int int_estadopedido;
        private string str_observaciones;

        public void fnt_agregarpedidos(string id, string fechapedido, int cliente, int estadopedido, string observaciones)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Registrar_Pedido", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_pedido", id);
                con.Parameters.AddWithValue("@fecha_pedido", fechapedido);
                con.Parameters.AddWithValue("@id_cliente ", cliente);
                con.Parameters.AddWithValue("@estado_pedido", estadopedido);
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
        public string getFecha() { return this.str_fechapedido; }
        public int getCliente() { return this.int_cliente; }
        public int getEstadopedido() { return this.int_estadopedido; }
        public string getObservaciones() { return this.str_observaciones; }
    }
}