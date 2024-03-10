using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_camiones
    {

        private string str_mensaje;
        private string str_placa;
        private string str_marca;
        private string str_modelo;
        private string str_capacidad;


        public void fnt_agregarclientes(string id_camion, string placa, string marca, string modelo, string capacidad)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Registrar_Camion", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id_camion ", id_camion);
                con.Parameters.AddWithValue("@placa", placa);
                con.Parameters.AddWithValue("@marca", marca);
                con.Parameters.AddWithValue("@modelo", modelo);
                con.Parameters.AddWithValue("@capacidad", capacidad);

                objConecta.connection.Open();
                con.ExecuteNonQuery();
                objConecta.connection.Close();
                str_mensaje = "Camión registrado con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public string getMensaje() { return this.str_mensaje; }
        public string getPlaca() { return this.str_placa; }
        public string getMarca() { return this.str_marca; }
        public string getModelo() { return this.str_modelo; }
        public string getCapacidad() { return this.str_capacidad; }

    }
}