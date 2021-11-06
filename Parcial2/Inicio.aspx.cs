using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formativa_runt
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("/CrearCliente.aspx");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("/Existencias");
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("/CrearVendedor.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("/Pedido.aspx");
            }
        }
    }
}