using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Barter
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("index.aspx");
            }

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetNoStore();

            if (!IsPostBack)
            {
                List<Producto> productos = Mostrar_Click();
                gvProductos.DataSource = productos;
                gvProductos.DataBind();
            }

        }
        protected void Agregar_Click(object sender, EventArgs e)
        {
            string[] productos = ((Button)sender).CommandArgument.Split(',');
            int Id_Producto = Convert.ToInt32(productos[0]);
            int Id_Usuario = 1;

            GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;

            TextBox txtCantidad = (TextBox)row.FindControl("txtCantidad");
            int cantidad = Convert.ToInt32(txtCantidad.Text);

            DateTime fechaVencimiento = DateTime.Now.AddDays(30);

            using (Barter_OficialEntities ProductoUsuario = new Barter_OficialEntities())
            {
                Producto_Usuario producto_Usuario = new Producto_Usuario
                {
                    Id_Producto = Id_Producto,
                    Id_Usuario = Id_Usuario,
                    Cantidad = cantidad,
                    Fecha_Vencimiento = fechaVencimiento
                };

                ProductoUsuario.Producto_Usuario.Add(producto_Usuario);
                ProductoUsuario.SaveChanges();
            }
        }
        private List<Producto> Mostrar_Click()
        {
            using (Barter_OficialEntities oMostrar = new Barter_OficialEntities())
            {
                IQueryable<Producto> oProducto = from q in oMostrar.Producto
                                                 select q;

                List<Producto> listaproducto = oProducto.ToList();
                return listaproducto.ToList();
            }
        }
    }
}