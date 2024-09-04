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

namespace Barter
{
    public partial class PerfilBarter : System.Web.UI.Page
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
            telefono.Text = "";
            contraseña.Text = "";
            confirma.Text = "";
        }
        protected void Mostrar_Click(object sender, EventArgs e)
        {
            string oNombre = Usuario.Text;
            using (Barter_OficialEntities oMostrar = new Barter_OficialEntities())
            {
                IQueryable<Usuario> oUsuario = from q in oMostrar.Usuario
                                               where q.Nombre_Usuario == oNombre
                                               select q;

                List<Usuario> listaUsuario = oUsuario.ToList();
                if (listaUsuario.Count == 0)
                {
                    // Muestra un mensaje si el usuario no se encuentra registrado
                    Usuario.Text = "El usuario no se encuentra registrado.";
                }
                else
                {
                    Usuario.Text = "";
                    var oMos = listaUsuario[0];

                    Usuario.Text = oMos.Nombre_Usuario;
                    Paterno.Text = oMos.Apellido_Paterno_Usuario;
                    Materno.Text = oMos.Apellido_Materno_Usuario;
                    Correo.Text = oMos.Correo_Usuario;
                    FechaNacimiento.Text = oMos.Fecha_Nacimiento_Usuario.ToString("dd-mm-aaaa");
                    telefono.Text = oMos.Telefono_Usuario;
                    contraseña.Text = oMos.Contrasena_Usuario;
                };
            }
        }
        protected void Editar_Click(object sender, EventArgs e)
        {
            if
                (string.IsNullOrEmpty(Usuario.Text) ||
                string.IsNullOrEmpty(Paterno.Text) ||
                string.IsNullOrEmpty(Materno.Text) ||
                string.IsNullOrEmpty(Correo.Text) ||
                string.IsNullOrEmpty(FechaNacimiento.Text) ||
                string.IsNullOrEmpty(telefono.Text) ||
                string.IsNullOrEmpty(contraseña.Text)||
                string.IsNullOrEmpty(confirma.Text))
            {
                Response.Write("Es necesario llenar todos los datos para continuar.");
            }
            else
            {
                if (contraseña.Text != confirma.Text)
                {
                    Response.Write("Las contraseñas no coinciden.");
                    return;
                }
                String vEditar = Usuario.Text;
                string contrasenaEncriptada = EncriptarContrasena(contraseña.Text);
                using (Barter_OficialEntities oEditar = new Barter_OficialEntities())
                {
                    var usu = oEditar.Usuario.FirstOrDefault(u => u.Nombre_Usuario == vEditar);
                    if (usu != null)
                    {
                        usu.Nombre_Usuario = Usuario.Text;
                        usu.Apellido_Paterno_Usuario = Paterno.Text;
                        usu.Apellido_Materno_Usuario = Materno.Text;
                        usu.Correo_Usuario = Correo.Text;
                        usu.Fecha_Nacimiento_Usuario = DateTime.Parse(FechaNacimiento.Text);
                        usu.Telefono_Usuario = telefono.Text;
                        usu.Contrasena_Usuario = contrasenaEncriptada;
                        oEditar.SaveChanges();
                        limpiar();
                    }
                };
            }
        }
        private string EncriptarContrasena(string contrasena)
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

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            if
            (string.IsNullOrEmpty(Usuario.Text) ||
            string.IsNullOrEmpty(Paterno.Text) ||
            string.IsNullOrEmpty(Materno.Text) ||
            string.IsNullOrEmpty(Correo.Text) ||
            string.IsNullOrEmpty(FechaNacimiento.Text) ||
            string.IsNullOrEmpty(telefono.Text) ||
            string.IsNullOrEmpty(contraseña.Text)||
            string.IsNullOrEmpty(confirma.Text))
            {
                Response.Write("Es necesario llenar todos los datos para continuar.");
            }
            else
            {

                if (contraseña.Text != confirma.Text)
                {
                    Response.Write("Las contraseñas no coinciden.");
                    return;
                }
                string eliminar = Usuario.Text;
                using (Barter_OficialEntities oBorrar = new Barter_OficialEntities())
                {
                    Usuario oEliminar = (from q in oBorrar.Usuario
                                         where q.Nombre_Usuario == eliminar
                                         select q).First();
                    try
                    {
                        oBorrar.Usuario.Remove(oEliminar);
                        oBorrar.SaveChanges();
                        limpiar();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Ocurrió un error al intentar borrar el registro: " + ex.Message);

                    }

                };
            }

        }
    }
}