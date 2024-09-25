using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Barter
{
    public partial class Carrito : System.Web.UI.Page
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
                List<dynamic> productos = Mostrar_carrito();
                rptCarrito.DataSource = productos;
                rptCarrito.DataBind();
                if (productos.Count > 0)
                {
                    lblMensajeCarrito.Visible = false;

                }
                else
                {
                    lblMensajeCarrito.Visible = true;
                }
            }
        }
        public List<dynamic> Mostrar_carrito()
        {
            using (Barter_OficialEntities oMostrar = new Barter_OficialEntities())
            {
                var oCarrito = from pu in oMostrar.Producto_Usuario
                               join p in oMostrar.Producto on pu.Id_Producto equals p.Id_Producto
                               join u in oMostrar.Usuario on pu.Id_Usuario equals u.Id_Usuario
                               select new
                               {
                                   Id_Producto = pu.Id_Producto,
                                   Nombre_Producto = p.Nombre_Producto,
                                   Precio_Producto = p.Precio_Producto,
                                   Cantidad = pu.Cantidad,
                                   Nombre_Usuario = u.Nombre_Usuario,
                                   Apellido_Paterno_Usuario = u.Apellido_Paterno_Usuario,
                                   Correo_Usuario = u.Correo_Usuario
                               };

                return oCarrito.ToList<dynamic>();
            }
        }
        protected void rptCarrito_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id_Producto = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Actualizar")
            {
                TextBox txtCantidad = (TextBox)e.Item.FindControl("txtCantidad");
                int nuevaCantidad = Convert.ToInt32(txtCantidad.Text);
                btnActualizar(id_Producto, nuevaCantidad);
                Response.Redirect(Request.RawUrl);
            }
            else if (e.CommandName == "Eliminar")
            {
                Eliminarbtn(id_Producto, 1);
                Response.Redirect(Request.RawUrl);

            }
        }

        protected void btnActualizar(int id_Producto, int cantidad)
        {
            int Id_Usuario = 1;

            DateTime fechaVencimiento = DateTime.Now.AddDays(30);

            using (Barter_OficialEntities ProductoUsuario = new Barter_OficialEntities())
            {
                var producto_Usuario = ProductoUsuario.Producto_Usuario
                .FirstOrDefault(pu => pu.Id_Producto == id_Producto && pu.Id_Usuario == Id_Usuario);
                    producto_Usuario.Id_Producto = id_Producto;
                    producto_Usuario.Id_Usuario = Id_Usuario;
                    producto_Usuario.Cantidad = cantidad;
                    producto_Usuario.Fecha_Vencimiento = fechaVencimiento;
          
                ProductoUsuario.SaveChanges();
            }
        }

        protected void Eliminarbtn(int id_Producto, int id_Usuario)
        {
            using (Barter_OficialEntities oBorrar = new Barter_OficialEntities())
            {
                var oEliminar = (from q in oBorrar.Producto_Usuario
                                 where q.Id_Usuario == id_Usuario && q.Id_Producto == id_Producto
                                 select q).First();
                try
                {
                    oBorrar.Producto_Usuario.Remove(oEliminar);
                    oBorrar.SaveChanges();
                }
                catch (Exception ex)
                {
                    Response.Write("Ocurrió un error al intentar borrar el registro: " + ex.Message);

                }

            };
        }
    }
}