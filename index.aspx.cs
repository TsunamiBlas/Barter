using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.Entity.Infrastructure;
using System.Security.Cryptography;
using System.Text;
using System.Reflection;
using System.Xml;


namespace Barter
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(CORREO.Text) || string.IsNullOrEmpty(CONTRASEÑA.Text))
            {
                Response.Write("Es necesario llenar todos los datos para continuar.");
            }
            else
            {
                using (Barter_OficialEntities oEditar = new Barter_OficialEntities())
                {
                    var usuario = oEditar.Usuario.FirstOrDefault(u => u.Correo_Usuario == CORREO.Text && u.Contrasena_Usuario == CONTRASEÑA.Text);

                    if (usuario != null)
                    {
                        Response.Redirect("Principal.aspx");
                    }
                    else
                    {
                        Response.Write("El correo electrónico o la contraseña son incorrectos.");

                    }
                }
            }
        }

        protected void Invitado_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");

        }

        protected void Registro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}