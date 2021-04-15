using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace DAL
{
    public class Conexion
    {
        public  NpgsqlConnection AbreConexion()
        {
            NpgsqlConnection conexion = new NpgsqlConnection();
            var stringConexion = "Host = localhost; port = 5432; Username = postgres; Password = Jh020612 *; Database = pruebatecnica";
            if (!string.IsNullOrWhiteSpace(stringConexion))
            {
                try
                {
                    conexion = new NpgsqlConnection(stringConexion);
                    conexion.Open();
                }
                catch (Exception)
                {
                    conexion.Close();
                }
            }
            return conexion;
        }
    }
}
