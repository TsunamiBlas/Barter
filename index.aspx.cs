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
using System.Web.Security;


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

                // Asume que UsuarioIngresado y ContraseñaIngresada son los valores del formulario de login.
                string usuarioIngresado = CORREO.Text;
                string contraseñaIngresada = CONTRASEÑA.Text;

                using (Barter_OficialEntities oBD = new Barter_OficialEntities())
                {
                    var usuario = oBD.Usuario.FirstOrDefault(u => u.Correo_Usuario == usuarioIngresado);

                    if (usuario != null)
                    {
                        // Encriptar la contraseña ingresada para compararla
                        string contraseñaEncriptadaIngresada = EncriptarContrasena(contraseñaIngresada);

                        // Comparar el hash de la contraseña ingresada con la que está almacenada en la base de datos
                        if (contraseñaEncriptadaIngresada == usuario.Contrasena_Usuario)
                        {
                            Session["Usuario"] = usuario.Correo_Usuario;
                            Response.Redirect("Principal.aspx");
                        }
                        else
                        {
                            Response.Write("Contraseña incorrecta.");
                        }
                    }
                    else
                    {
                        Response.Write("Usuario no encontrado.");
                    }
                }
            }
        }
        public string EncriptarContrasena(string contrasena)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(contrasena));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString().Substring(0, 15);
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