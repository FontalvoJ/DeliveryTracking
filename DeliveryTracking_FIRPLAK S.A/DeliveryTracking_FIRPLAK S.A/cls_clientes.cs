using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_clientes
    {
        private string str_mensaje;
        private string str_nombre;
        private string str_direccion;
        private string str_email;
        private string str_telefono;

      
        public void fnt_agregarclientes(string id_cliente, string nombre, string direccion, string email, string telefono)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Registrar_Cliente", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_cliente", id_cliente);
                con.Parameters.AddWithValue("@nombre", nombre);
                con.Parameters.AddWithValue("@direccion", direccion);
                con.Parameters.AddWithValue("@email", email);
                con.Parameters.AddWithValue("@telefono", telefono);

                objConecta.connection.Open();
                con.ExecuteNonQuery();
                objConecta.connection.Close();
                str_mensaje = "Cliente registrado con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public string getMensaje() { return this.str_mensaje; }
        public string getNombre() { return this.str_nombre; }
        public string getDireccion() { return this.str_direccion; }
        public string getTelefono() { return this.str_telefono; }
        public string getEmail() { return this.str_email; }
    }
}
