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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void limpiar()
        {
            Usuario.Text = "";
            Paterno.Text = "";
            Materno.Text = "";
            Correo.Text = "";
            FechaNacimiento.Text = "";
            Telefono.Text = "";
            Contraseña.Text = "";
            Confirmacion.Text = "";
        }

        private void Guardar()
        {
            if
               (string.IsNullOrEmpty(Usuario.Text) ||
                string.IsNullOrEmpty(Paterno.Text) ||
                string.IsNullOrEmpty(Materno.Text) ||
                string.IsNullOrEmpty(Correo.Text) ||
                string.IsNullOrEmpty(FechaNacimiento.Text) ||
                string.IsNullOrEmpty(Telefono.Text) ||
                string.IsNullOrEmpty(Contraseña.Text) ||
                string.IsNullOrEmpty(Confirmacion.Text))
            {
                Response.Write("Es necesario llenar todos los datos para continuar.");
            }
            else
            {
                if (Telefono.Text.Length > 10)
                {
                    Response.Write("El número de teléfono no puede tener más de 10 dígitos.");
                    limpiar();
                    return;
                }
                if (Contraseña.Text != Confirmacion.Text)
                {
                    Response.Write("Las contraseñas no coinciden.");
                    return;
                }
                string contrasenaEncriptada = EncriptarContrasena(Contraseña.Text);

                try
                {
                    using (Barter_OficialEntities oBD = new Barter_OficialEntities())
                    {
                        Usuario DatosUsuario = new Usuario
                        {
                            Nombre_Usuario = Usuario.Text,
                            Apellido_Paterno_Usuario = Paterno.Text,
                            Apellido_Materno_Usuario = Materno.Text,
                            Correo_Usuario = Correo.Text,
                            Fecha_Nacimiento_Usuario = DateTime.Parse(FechaNacimiento.Text),
                            Telefono_Usuario = Telefono.Text,

                            // Guardar la contraseña encriptada en la base de datos
                            Contrasena_Usuario = contrasenaEncriptada
                        };
                        oBD.Usuario.Add(DatosUsuario);
                        oBD.SaveChanges();
                        Response.Write("Inicio de sesión exitoso.");
                        Response.Redirect("Principal.aspx");
                        limpiar();
                    }
                }
                catch (DbEntityValidationException ex)
                {
                    foreach (var validationErrors in ex.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            Response.Write($"Property: {validationError.PropertyName} Error: {validationError.ErrorMessage}");
                        }
                    }
                }
            }
        }
        public string EncriptarContrasena(string contrasena)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // Convierte la contraseña en un array de bytes
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(contrasena));

                // Convierte el array de bytes en un string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                // Truncar el hash a 15 caracteres
                return builder.ToString().Substring(0, 15);
            }
        }
        protected void GuardarDatos_Click(object sender, EventArgs e)
        {
            Guardar();
        }

        protected void regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}