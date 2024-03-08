using System;
using System.Data;
using System.Data.SqlClient;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_inventario
    {
        private readonly DataTable dt_inventario = new DataTable();
        private readonly cls_conexion obj_conectar = new cls_conexion();

        public void fnt_consultar(string id_facturacion)
        {
            try
            {
                using (SqlConnection connection = obj_conectar.connection)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter("SP_consultar_factura", connection))
                    {
                        da.SelectCommand.CommandType = CommandType.StoredProcedure;
                        da.SelectCommand.Parameters.AddWithValue("@id_facturacion", id_facturacion);

                        connection.Open();
                        da.Fill(dt_inventario);
                    }
                }
            }
            catch (Exception ex)
            {

                Console.WriteLine("Error al consultar la base de datos: " + ex.Message);
            }
        }

        public DataTable getDt_inventario()
        {
            return dt_inventario;
        }
    }
}
