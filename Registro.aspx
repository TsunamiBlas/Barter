<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Barter.Registro" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">
    <link rel="stylesheet" href="/CSS/principalstyles.css">
    <link rel="stylesheet" href="/CSS/styles.css">
</head>
<body class="Transicion">
    <form id="form1" runat="server">
        <div class="Registro">  
            <h1>Crear Cuenta</h1>
            <br>
            <label for="Usuario">Nombre(s)</label>
            <br>
            <asp:TextBox ID="Usuario" runat="server" CssClass="FormatoTexto" placeholder="Nombre/Nombres"></asp:TextBox>
            <br><br>
            <label for="Paterno">Apellido Paterno</label>
            <br>
            <asp:TextBox ID="Paterno" runat="server" CssClass="FormatoTexto" placeholder="Apellido Paterno"></asp:TextBox>
            <br><br>
            <label for="Materno">Apellido Materno</label>
            <br>
            <asp:TextBox ID="Materno" runat="server" CssClass="FormatoTexto" placeholder="Apellido Materno"></asp:TextBox>
            <br><br>
            <label for="Correo">Correo Electrónico</label>
            <br>
            <asp:TextBox ID="Correo" runat="server" CssClass="FormatoTexto" placeholder="Correo@Ejemplo.com"></asp:TextBox>
            <br><br>
            <label for="FechaNacimiento">Fecha Nacimiento</label>
            <br>
            <asp:TextBox ID="FechaNacimiento" runat="server" CssClass="FormatoTexto" placeholder="Fecha" TextMode="Date"></asp:TextBox>
            <br><br>
            <label for="Telefono">Teléfono</label>
            <br>  
            <asp:TextBox ID="Telefono" runat="server" CssClass="FormatoTexto" placeholder="Telefono de contacto"></asp:TextBox>
            <br><br>
            <label for="Contraseña">Contraseña</label>
            <br>
            <asp:TextBox ID="Contraseña" runat="server" CssClass="FormatoTexto" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
            <br><br>
            <label for="Confirmacion">Confirmación Contraseña</label>
            <br>
            <asp:TextBox Text="Registrar" ID="Confirmacion" runat="server" CssClass="FormatoTexto" placeholder="Confirmacion" TextMode="Password"></asp:TextBox>
   
            __________________________________________________
            <br>
            <asp:Button runat="server" Text="Registrar" ID="GuardarDatos" CssClass="Botones" OnClick="GuardarDatos_Click" Width="418px"/>
            <div class="BarterSlogan">
                <small>Un Mercado de todo para todos.</small>
                <br>
                <br>
                <small>Copyright &copy; Todos los derechos reservados.</small>
                <small>Al continuar, aceptas las condiciones de uso y el <br>
                    <asp:HyperLink ID="AvisoPriv" runat="server" NavigateUrl="~/Aviso_Privacidad.aspx">Aviso de Privacidad de Barter</asp:HyperLink></small>
            </div>
        </div>
    </form>

   <style>
                            body{ background-color:rgba(75, 67, 67, 0.164);  
                            color: rgb(0, 0, 0);
                            transition-property: background-color, color;
                            transition-duration: 0.3s;
                            transform-origin: 5%;
                            transition-delay: initial;
                            }                     
                            .Registro {
                             width: 500px;
                            margin: 0 auto;
                            padding: 40px;
                            background-color: #f2f2f2;
                            border: 1px solid #ddd;
                            border-radius: 25px;
                            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
                            font-family:Verdana, Geneva, Tahoma, sans-serif;
                            }
                            .Registro small {
                                text-align: left;
                                color: gray;
                            }
                            .Registro h1 {
                                text-align: center;
                                font-size: 48px; 
                            }
                     </style>
    </body>
</html>