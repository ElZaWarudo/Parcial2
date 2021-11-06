using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Formativa_runt
{
    public partial class CrearCliente : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string query = "INSERT INTO Cliente (Cedula,Nombre,Apellido,Direccion,Telefono,Celular,Correo,Edad,Sexo,Fecha,FormadePago) VALUES ('" + cedula.Text + "','" + nombre.Text + "','"+apellido.Text+"','"+direccion.Text+"','"+telefono.Text+"','"+celular.Text+"','"+correo.Text+"','"+edad.Text+"','"+sexo.Text+"','"+fecha.Text+"','"+pago.SelectedValue+"');";

                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.ExecuteNonQuery();
            }
        }
    }
}