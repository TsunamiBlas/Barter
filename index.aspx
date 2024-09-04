<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Barter.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/CSS/styles.css">
    <title>Barter ©</title>
</head>
<body>
    <div class="BarterLogin">
        <div class="BarterLogo">
            <img src="/Img/BlackNoLetters.png" alt="Logo de Barter">
            <h1>BARTER</h1>
        </div>

        <form id="form1" runat="server">
            <div class="Formulario-de-entrada">
                <label for="Correo">Correo Electrónico:</label>
                <br>
                <asp:TextBox runat="server" ID="CORREO" type="email" placeholder="Correo@Ejemplo.com" CssClass="FormatoTexto"  Width="397px"/>
                <br><br>
                <label for="Contraseña">Contraseña:</label>
                <br>
                <asp:TextBox runat="server" ID="CONTRASEÑA"  type="password" placeholder="Contraseña" CssClass="FormatoTexto" Width="397px"/>
                <br>
                <br>
                <asp:Button runat="server" Text="Ingresar" CssClass="Botones" ID="Ingresar" OnClick="Ingresar_Click"/>          
                <asp:Button runat="server"  Text="Registrar" CssClass="Botones" ID="Registro" OnClick="Registro_Click" />
                <a href="#" class="ContraseñaOlvidada">¿Olvidaste la contraseña?</a>
            </div>
            <div class="Invitado">
                <p>____________________________________________</p>
                <a href="Principal.aspx" class="Botones">Continuar como invitado</a>
            </div>
        </form>
        <div class="BarterSlogan">
            <small>Un Mercado de todo para todos.</small>
            <br><br>
            <small>Copyright &copy; Todos los derechos reservados.</small>
            <small>Al continuar, aceptas las condiciones de uso y el <br>
                <a href="AvisoPriv.aspx" style="text-decoration: none;">Aviso de Privacidad de Barter</a>
            </small>
        </div>
    </div>

    <div class="ContrasenaOlvidada">   
        <div class="Formulario-de-contrasena">
            <h1>¿Olvidaste tu contraseña?</h1>
            <p>Ingresa tu correo electrónico y te enviaremos un enlace para restablecer tu contraseña.</p>
            <input type="text" placeholder="Correo Electrónico" class="FormatoContrasena">
            <br><br>
            <button class="Botones" id="Enviar">Enviar</button>
            <button class="Botones" id="Volver">Volver</button>
        </div>
    </div>

    <!-- Modal de notificación -->
    <div id="notificationModal" class="modal">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <p>Verificación enviada a correo</p>
        </div>
    </div>

    <style>
        .Formulario-de-contrasena {
            width: 450px;
            margin: 0 auto;
            padding: 40px;
            background-color: #f2f2f2;
            border: 1px solid #ddd;
            border-radius: 25px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .FormatoContrasena {
            width: 95.3%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .BarterLogin, .ContrasenaOlvidada {
            transition: opacity 0.5s ease;
        }

        .ContrasenaOlvidada {
            display: none;
            opacity: 0;
        }

        .show {
            display: block;
            opacity: 1;
        }

        .hide {
            opacity: 0;
        }

        .modal {
            display: none; 
            position: fixed;
            z-index: 1000; 
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); 
            align-items: center;
            justify-content: center;
            animation: fadeIn 0.5s;
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 300px;
            border-radius: 10px;
            text-align: center;
        }

        .close-button {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close-button:hover,
        .close-button:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>

    <script>
        function mostrarFormularioContrasena(event) {
            event.preventDefault();
            const loginDiv = document.querySelector('.BarterLogin');
            const contrasenaDiv = document.querySelector('.ContrasenaOlvidada');

            loginDiv.classList.add('hide');
            setTimeout(() => {
                loginDiv.style.display = 'none';
                contrasenaDiv.style.display = 'block';
                setTimeout(() => {
                    contrasenaDiv.classList.add('show');
                }, 10);
            }, 500);
        }

        function volverAlFormularioPrincipal() {
            const loginDiv = document.querySelector('.BarterLogin');
            const contrasenaDiv = document.querySelector('.ContrasenaOlvidada');

            contrasenaDiv.classList.remove('show');
            setTimeout(() => {
                contrasenaDiv.style.display = 'none';
                loginDiv.style.display = 'block';
                setTimeout(() => {
                    loginDiv.classList.remove('hide');
                }, 10);
            }, 500);
        }

        function mostrarNotificacion() {
            const modal = document.getElementById('notificationModal');
            modal.style.display = 'flex';
            setTimeout(() => {
                modal.style.display = 'none';
            }, 3000);
        }

        function enviarVerificacion() {
            mostrarNotificacion();
            volverAlFormularioPrincipal();
        }

        document.querySelector('.ContraseñaOlvidada').addEventListener('click', mostrarFormularioContrasena);
        document.querySelector('#Volver').addEventListener('click', volverAlFormularioPrincipal);
        document.querySelector('#Enviar').addEventListener('click', enviarVerificacion);

        document.querySelector('.close-button').addEventListener('click', () => {
            document.getElementById('notificationModal').style.display = 'none';
        });
    </script>
</body>
</html>
