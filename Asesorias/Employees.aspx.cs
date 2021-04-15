using BL.Empleados;

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asesorias
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Empleado objEmpleado = new Empleado();
            objEmpleado.numeroDocumento = Convert.ToInt32(txtDocumentNumber.Text);
            ClsEmpleado obj = new ClsEmpleado();
            DataTable dtEmpleado = obj.ConsultaEmpleado(objEmpleado);
            if (dtEmpleado.Rows.Count == 0 || dtEmpleado == null)
            {

            }
            else
            {

            }
        }

    }
}