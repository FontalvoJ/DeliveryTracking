using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Runtime.Remoting.Messaging;

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
                str_mensaje = "Factura registrada con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public void fnt_consultarfactura(String id)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("sp_consultar_factura", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_facturacion", id);
                objConecta.connection.Open();
                SqlDataReader reader = con.ExecuteReader();

                if (reader.Read())
                {
                    str_id = reader["id_facturacion"].ToString();
                    int_pedido = Convert.ToInt32(reader["pedido"]);
                    int_cliente = Convert.ToInt32(reader["cliente"]);
                    DateTime fechaDespacho = Convert.ToDateTime(reader["fecha_despacho"]);
                    str_fechadespacho = fechaDespacho.ToString("yyyy-MM-dd");

                    DateTime fechaEntrega = Convert.ToDateTime(reader["fecha_entrega"]);
                    str_fechaentrega = fechaEntrega.ToString("yyyy-MM-dd");
                    str_estadoentrega = reader["estado_entrega"].ToString();
                    int_camion = Convert.ToInt32(reader["camion"]);
                    str_guia = reader["guia"].ToString();
                    str_podfirmado = reader["podfirmado"].ToString();
                    str_observaciones = reader["observaciones"].ToString();

                    str_mensaje = "Consulta exitosa";
                }
                else
                {
                    str_mensaje = "No se encontraron resultados para el ID proporcionado.";
                }

              
                objConecta.connection.Close();
            }
            catch (Exception ex)
            {
               
                str_mensaje = "Error: " + ex.Message;
            }
        }


        public void fnt_actualizarfactura(string id, string pedido, string cliente, string fecha_despacho, string fecha_entrega, string estado_entrega, string camion, string guia, string podfirmado, string observaciones)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_actualizar_factura", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_facturacion", id);
                con.Parameters.AddWithValue("@pedido", pedido);
                con.Parameters.AddWithValue("@cliente", cliente);
                con.Parameters.AddWithValue("@fecha_despacho", fecha_despacho);
                con.Parameters.AddWithValue("@fecha_entrega", fecha_entrega);
                con.Parameters.AddWithValue("@estado_entrega", estado_entrega);
                con.Parameters.AddWithValue("@camion", camion);
                con.Parameters.AddWithValue("@guia", guia);
                con.Parameters.AddWithValue("@podfirmado", podfirmado);
                con.Parameters.AddWithValue("@observaciones", observaciones);
                objConecta.connection.Open();

          
                con.ExecuteNonQuery();

                objConecta.connection.Close();
                str_mensaje = "Actualización exitosa";
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