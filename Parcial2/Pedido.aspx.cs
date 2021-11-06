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
    public partial class Pedido : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string com = "Select * from Cliente";
                SqlDataAdapter adpt = new SqlDataAdapter(com, connection);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                clientes.DataSource = dt;
                clientes.DataBind();
                clientes.DataBind();

                com = "Select * from Vendedor";
                adpt = new SqlDataAdapter(com, connection);
                dt = new DataTable();
                adpt.Fill(dt);
                vendedores.DataSource = dt;
                vendedores.DataBind();
                vendedores.DataBind();

                com = "Select * from Producto";
                adpt = new SqlDataAdapter(com, connection);
                dt = new DataTable();
                adpt.Fill(dt);
                producto1.DataSource = dt;
                producto1.DataBind();
                producto1.DataBind();
                producto2.DataSource = dt;
                producto2.DataBind();
                producto2.DataBind();
            }
           
        }
 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid) 
            {
                string query = "INSERT INTO Pedido (IdCliente, IdVendedor, Estado, IdProducto1, IdProducto2, Cantidad1, Cantidad2) VALUES (" + clientes.SelectedValue + "," + vendedores.SelectedValue + ",'" + estado.SelectedValue + "'," + producto1.SelectedValue + "," + producto2.SelectedValue + "," + cantidad1.Text + "," + cantidad2.Text +");";
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.ExecuteNonQuery();
            }
        }

    }
}