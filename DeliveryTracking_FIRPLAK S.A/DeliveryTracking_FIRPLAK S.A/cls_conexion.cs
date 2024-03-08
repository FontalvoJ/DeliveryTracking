using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DeliveryTracking_FIRPLAK_S.A
{
    public class cls_conexion
    {
        public SqlConnection connection = new SqlConnection("Data Source=DESKTOP-6MUA0BA;Initial Catalog=dbs_delivery_firplak;Integrated Security=True");

    }
}