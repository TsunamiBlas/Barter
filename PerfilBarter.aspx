<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilBarter.aspx.cs" Inherits="Barter.PerfilBarter" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MI PERFIL</title> <!-- Aqui va ir el crud (Read, Update y Delete)-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/principalstyles.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HUbX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/CSS/styles.css">
    <style>
        body {
            background-color: #f2f2f2;
        }

        small {
            font-size: 10px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        .EliminarReg, .EditarReg {
            width: 100%;
            padding: 10px;
            font-size: 20px;
            color: rgb(0, 0, 0);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .EliminarReg {
            background-color: #db717181;
        }

        .EditarReg {
            background-color: #a3a38a65;
        }

            .EditarReg:hover {
                color: #e5e6df;
                background-color: #282520;
                transition: all .2s ease-in;
            }

        .EliminarReg:hover {
            color: #fae6e6;
            background-color: #712b2b;
            transition: all .2s ease-in;
        }

        .hm-wrapper {
            width: 100%;
        }

        .hm-header {
            position: relative;
            height: 64px;
            background: #fff;
            line-height: 64px;
            transition: all .6s ease-in-out;
            margin-top: 20px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

            .hm-header .container {
                display: flex;
                align-items: center;
                justify-content: space-between;
                height: 100%;
                max-width: 1200px;
                margin: 0 auto;
                padding: 0 20px;
            }

        .header-menu {
            display: flex;
            width: 100%;
            justify-content: space-between;
            align-items: center;
        }

            .header-menu .hm-logo {
                margin-right: auto;
            }

                .header-menu .hm-logo img {
                    width: 71px;
                    height: 71px;
                    border: 5px solid #474747;
                    border-radius: 50%;
                }

        .Buscador {
            flex-grow: 1;
            margin: 0 20px;
        }

            .Buscador .form-inline {
                display: flex;
                width: 100%;
            }

                .Buscador .form-inline .form-control {
                    flex-grow: 1;
                    border-radius: 5px 0 0 5px;
                    padding: 8px;
                }

                .Buscador .form-inline .btn {
                    border-radius: 0 5px 5px 0;
                    padding: 8px 16px;
                }

        .hm-menu {
            display: flex;
            align-items: center;
        }

            .hm-menu ul {
                display: flex;
                list-style: none;
                padding: 0;
                margin: 0;
            }

                .hm-menu ul li {
                    margin-right: 20px;
                }

                    .hm-menu ul li a {
                        color: var(--color-negro);
                        font-size: 15px;
                        text-decoration: none;
                    }

                        .hm-menu ul li a:hover {
                            color: var(--color-principal);
                        }

            .hm-menu .hm-icon-cart {
                margin-left: 10px;
            }

                .hm-menu .hm-icon-cart a {
                    font-size: 33px;
                    color: var(--color-negro);
                    position: relative;
                }

                    .hm-menu .hm-icon-cart a span {
                        position: absolute;
                        width: 20px;
                        height: 20px;
                        line-height: 20px;
                        text-align: center;
                        top: 2px;
                        right: -2px;
                        font-size: 10px;
                        border-radius: 50%;
                        background: var(--color-principal);
                        color: #fff;
                    }

        .icon-menu button {
            background-color: transparent;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

        .cerrar-menu {
            background-color: transparent;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

        .main-container {
            display: flex;
            padding: 20px;
            gap: 20px;
        }

        .PerfilContenedor {
            width: 450px;
            padding: 40px;
            background-color: #f2f2f2;
            border: 1px solid #000000;
            border-radius: 25px;
            /* box-shadow: 20px 16px rgba(36, 34, 34, 0.171); */
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        .Proximamente {
            text-align: center;
            width: 100%;
            padding: 40px;
            background-color: #f2f2f2;
            border: 1px solid #000000;
            border-radius: 25px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

            .PerfilContenedor h1, .Proximamente h1 {
                text-align: center;
            }

        .PerfilFoto img {
            display: block;
            margin: 0 auto;
            max-width: 200px;
            width: auto;
            height: 150px;
            border-radius: 100%;
        }

        .ProxFoto {
            display: flex;
            margin: 0 auto;
            width: 80%;
            height: 90%;
            border-radius: 100%;
        }

        .Pantalla {
            flex-grow: 1;
            background-color: #f2f2f2;
            padding: 40px;
            border: 1px solid #ddd;
            border-radius: 25px;
            box-shadow: 20px 16px rgba(36, 34, 34, 0.171);
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
    </head>
   <body>
    <form id="form" runat="server" class="form-inline">
        <div class="hm-wrapper">
            <div class="hm-header">
                <div class="container">
                    <div class="header-menu">
                        <div class="hm-logo">
                            <a href="Principal.aspx">
                                <img style="border-radius: 100%;" src="Img/BarterWhite.png" alt="Logo">
                            </a>
                        </div>
                        <nav class="hm-menu">
                            <ul>
                                <li><a href="Principal.aspx">Inicio</a></li>
                                <li><a href="PerfilBarter.aspx">Mi perfil</a></li>  
                                <li><a href="https://web.whatsapp.com/send?phone=5518784908">Mensajes</a></li>
                                <li><a href="Productos.aspx"">Productos</a></li>
                                <li><a href="Carrito.aspx">Carrito</a></li>
                                <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                     Salir
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Aviso_Privacidad.aspx">Aviso de privacidad</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="CerrarSesión.aspx">Cerrar Sesión</a>
                                </div>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
    <div class="main-container">
        
        <div class="PerfilContenedor">
            <h1>Mi Perfil</h1>
            <div class="Perfil">
                <div class="PerfilFoto">
                    <img src="Img/Banner.jpg" alt="Foto de perfil">
                    <div class="Perfil_Info">
                    <br>
                    <label for="Usuario">Nombre(s):</label>
                    <br>
                    <asp:TextBox runat="server" type="text" placeholder="Nombre/Nombres" ID="Usuario" CssClass="FormatoTexto" Width="403px"/>
                    <br><br>
                    <label for="Paterno">Apellido Paterno:</label>
                    <br><br>
                    <asp:TextBox runat="server" type="text" placeholder="Apellido Paterno" ID="Paterno" CssClass="FormatoTexto" Width="404px"/>
                    <br><br>
                    <label for="Materno">Apellido Materno:</label>
                    <br><br>
                    <asp:TextBox runat="server" type="text" placeholder="Apellido Materno" ID="Materno" CssClass="FormatoTexto" Width="403px"/>
                    <br><br>
                    <label for="Correo">Correo Electrónico:</label><br>
                    <asp:TextBox runat="server" type="email" placeholder="Correo@Ejemplo.com" ID="Correo" CssClass="FormatoTexto" Width="402px"/>
                    <br><br>
                    <label for="FechaNacimiento">Fecha de nacimiento:</label><br>  
                    <asp:TextBox runat="server" type="date" placeholder="Fecha" CssClass="FormatoTexto" ID="FechaNacimiento" asp-format="{0:dd-mm-aaaa}" Width="403px"/>
                    <br><br>
                    <small>Debes de ser mayor de 18.</small>
                    <br><br>
                    <label for="Telefono">Teléfono:</label><br>  
                    <asp:TextBox runat="server" type="text" placeholder="Teléfono" CssClass="FormatoTexto" ID="telefono" Width="403px"/>
                    <br><br>
                    <label for="Contraseña">Contraseña:</label>
                    <br><br>
                    <asp:TextBox runat="server" type="password" placeholder="Contraseña" CssClass="FormatoTexto" ID="contraseña" Width="403px"/>
                    <br><br>
                    <small>Recuerda que la contraseña es de máximo 5 caracteres.</small>
                    <br><br>
                    <label for="Confirmacion">Confirmación Contraseña</label>
                    <br><br>
                    <asp:TextBox runat="server" type="password" placeholder="Confirmacion" CssClass="FormatoTexto" Id="confirma" Width="403px"/>
                    <br><br>
                    <asp:Button runat="server" CssClass="EditarReg" ID="Editar" Text="Editar" OnClick="Editar_Click"/> 
                    <asp:Button runat="server" CssClass="EliminarReg" ID="Eliminar" Text="Eliminar" OnClick="Eliminar_Click"/>
                    <asp:Button runat="server" CssClass="Botones" ID="Mostrar" Text="Mostrar Información" OnClick="Mostrar_Click"/>

                        <small>
                        <br />
                        <br />
                        Para hacer valida la eliminación se debera realizar dentro del rango de tiempo estipulado dentro del <a href="Aviso_Privacidad.aspx">Aviso de Privacidad de Barter.</a></small>
                    </div>
                </div>
            </div>
        </div>
   
        <div class="Proximamente">
            <h1>¡Proximamente!</h1>
            <p>Espera las novedades que Barter traera para ti.</p>
            <div class="ProxFoto">
                <img src="Img/Proximamente.jpg" alt="Imagen de Muñeco Proximamente">
            </div>
        </div>
    </div> 
</form>
    <footer>
        <div>
            <a href="https://www.facebook.com/profile.php?id=61564934474884&mibextid=LQQJ4d" target="_blank">
            <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/facebook.png" AlternateText="Facebook" />
            </a>
            <a href="https://x.com/bartercontacto" target="_blank">
            <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/twitter.png" AlternateText="Twitter" />
            </a>
            <a href="https://www.instagram.com/bartercontacto/" target="_blank">
            <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" AlternateText="Instagram" />
            </a>
        </div>
        <div style="margin-top: 20px;">
            <a href="factura.aspx">Emite tu factura</a>
        </div>
        <div style="margin-top: 20px;">
            &copy; 2024 Barter: Universidad CUDEC
        </div>
        </footer>


        <style>
            /* Estilos footer */
            footer {
                background-color: #333;
                color: #fff;
                padding: 20px;
                text-align: center;
            }

            a {
                margin: 0 10px;
                color: #fff;
                text-decoration: none;
            }

            footer img {
                width: 24px;
                height: 24px;
            }
        </style>
       
</body>

</html>