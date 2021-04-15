using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace BL.Empleados
{
    public class ClsEmpleado
    {
        public DataTable ConsultaEmpleado(Empleado empleado)
        {
            // Conexion objConexion = new Conexion();
            // objConexion.AbreConexion();
            DataTable dtEmpleado = new DataTable();

            NpgsqlConnection conn = new NpgsqlConnection("Host=localhost; port=5432; Username=postgres; Password=Jh020612*; Database=pruebatecnica");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand("select  * from public.contratoslaborales  where numerodocumento = '" + empleado.numeroDocumento + "'", conn);
            NpgsqlDataReader dr = cmd.ExecuteReader();
            dtEmpleado.Load(dr);
            conn.Close();

            if (dtEmpleado != null)
                return dtEmpleado;
            else
                return null;

        }
    }
}

