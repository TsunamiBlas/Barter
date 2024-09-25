<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aviso_Privacidad.aspx.cs" Inherits="Barter.Aviso_Privacidad" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aviso de Privacidad</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0e263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #e3e3e3;
            color: rgb(34, 34, 34);
            transition-property: background-color, color;
            transition-duration: 0.3s;
            transform-origin: 5%;
            transition-delay: initial;
        }

        h1 {
            text-align: center;
        }

        .Contenedor parrafo {
            text-align: justify;
        }

        .hm-wrapper {
            width: 100%;
        }

        .hm-header {
            position: relative;
            height: 64px;
            background: #f5f6f4;
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
/*
            .hm-header.header-fixed {
                position: fixed;
                width: 100%;
                top: 0;
                left: 0;
                box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.08);
                z-index: 99;
                margin-top: 0px;
                margin-bottom: 0px;
            }
*/
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
  .dropdown-menu {
      display: none;
      position: absolute;
      background-color: white;
      box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
      z-index: 100;
      margin-top: 10px;
      padding: 10px;
  }

  .nav-item.dropdown:hover .dropdown-menu {
      display: block;
  }

  .dropdown-menu a {
      display: block;
      padding: 5px 10px;
      text-decoration: none;
      color: #333;
  }

  .dropdown-menu a:hover {
      background-color: #f1f1f1;
  }
      
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

        img {
            width: 24px;
            height: 24px;
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
                <div class="Aviso">
                    <div class="Contenedor">
                        <h1>AVISO DE PRIVACIDAD</h1>
                        <div class="Parrafo">
                            <p>
                                Dentro de Barter, como administradores del sistema, manejamos y recopilamos con especial cuidado información de nuestros clientes, vendedores y proveedores de servicios, esto con la finalidad de enriquecer la experiencia del usuario dentro de nuestra plataforma. Es por ello por lo que se pone a disposición el siguiente aviso de privacidad.
                            </p>
                            <p>
                            <b>1. Responsabilidad de sus Datos Personales.</b>
                            <br><br>
                            En Barter, nos tomamos en serio la protección de la privacidad y la seguridad de la información personal de nuestros clientes, visitantes, locatarios, proveedores del sitio web. Este aviso de privacidad tiene como objetivo proporcionar una descripción clara, completa y detallada de cómo recopilamos, utilizamos, compartimos y protegemos la información personal, así como los derechos y opciones disponibles para los usuarios en relación con su información personal.
                        </p>
                        <p>
                            <b>2. Departamentos Encargados de la Protección de Datos.</b>
                            <br><br>
                            Para mantener su información de manera segura y protegida nuestros departamentos encargados de la protección de sus datos son los siguientes:
                            <ul>
                                <li><b>Áreas:</b> Dirección General de Programación, Administración de Bases de datos y Gestión de información.</li>
                                <li><b>Domicilio:</b> Barter con domicilio en Calle Sonora número #4, Villas de las Palmas. Atizapán de Zaragoza, Estado de México.</li>
                                <li><b>Correo electrónico:</b> Barter_oficial@gmail.com</li>
                                <li><b>Teléfono:</b> 55 4232 12, (+52) 55 1533 7005</li>
                            </ul>
                        </p>
                        <p>
                            <b>3. Finalidad y Uso de sus Datos Personales.</b>
                            <br><br>
                            En Barter utilizamos sus datos personales para operar, proporcionar, desarrollar y mejorar los productos y servicios que ofrecemos a nuestros clientes. Las finalidades del almacenamiento de información por parte del cliente incluyen:
                            <ul>
                                <li><b>Compra y Entrega de Productos y Servicios:</b> Utilizamos sus datos personales para tomar, manejar pedidos, entregar productos y servicios, procesar pagos y comunicarnos con el cliente acerca de pedidos, productos y servicios, y las ofertas que se promocionen.</li>
                                <li><b>Cumplir con Nuestras Obligaciones Legales:</b> En algunos casos, reunimos y utilizamos sus datos personales para cumplir con las leyes aplicables. Por ejemplo, reunimos de los vendedores datos sobre el establecimiento y la información de la cuenta bancaria para verificar la identidad y otros fines.</li>
                                <li><b>Comunicarnos con Usted:</b> Utilizamos sus datos personales para comunicarnos con usted en relación con los Servicios de Barter a través de diferentes canales (por ejemplo, por teléfono o correo electrónico).</li>
                                <li><b>Prevención de Fraude y Riesgos de Crédito:</b> Utilizamos datos personales para prevenir y descubrir fraudes y abusos con el fin de proteger la seguridad de nuestros clientes y vendedores en Barter.</li>
                            </ul>
                            Por otra parte, Barter almacena información relevante del comerciante, misma información que abarca la verificación del locatario, antecedentes, que este establecido un contrato de renta de local en el mercado, registro de personas físicas que pretendan ejercer actividades comerciales en Mercados Públicos o los locatarios que requieran.
                            <ul>
                                <li><b>Documentos y Fotos de Verificación de Identidad:</b> Esto incluye identificaciones emitidas por el gobierno, como el Sistema Electrónico de Avisos y Permisos de Establecimientos Mercantiles (que pueden contener fotos e identificación oficial, fecha de nacimiento y género).</li>
                                <li><b>Datos Demográficos:</b> Recopilamos datos demográficos como fecha de nacimiento/edad, género u ocupación cuando sea necesario para habilitar ciertas funciones o brindar acceso a productos o servicios restringidos.</li>
                                <li><b>Información de Transacciones:</b> Recopilamos información de las transacciones relacionadas con el uso de servicios, incluido el tipo de servicios requeridos o proporcionados, detalles del pedido (como fecha y hora, direcciones de los puntos de partida y destino, distancia recorrida y artículos pedidos, u otros artículos a domicilio), e información de la transacción de pago (como el nombre y la ubicación del mercado, importe cobrado y método de pago).</li>
                                <li><b>Datos de Uso:</b> Recabamos información sobre cómo los usuarios interactúan con nuestros servicios. Esto incluye la fecha y hora de acceso, las funciones de las páginas, vistas, el tipo de navegador, los fallos y otras actividades del sistema.</li>
                                <li><b>Datos del Dispositivo:</b> Recabamos datos sobre los dispositivos usados para acceder a nuestros servicios, lo que incluye modelos de hardware, dirección IP u otros identificadores únicos del dispositivo, sistemas operativos y sus versiones, software, idiomas preferidos, identificadores de publicidad, información de movimiento del dispositivo y datos de la red móvil.</li>
                                <li><b>Datos de Comunicación:</b> Recopilamos datos sobre las comunicaciones entre usuarios que se realizan a través de la página de Barter. Esto incluye el tipo de comunicación (llamada telefónica, por correo), fecha/hora y contenido (incluidas las grabaciones de llamadas telefónicas solo cuando los usuarios son informados previamente de la grabación).</li>
                            </ul>
                        </p>
                        <p>
                            <b>4. Datos Recabados.</b>
                            <br><br>
                            Los datos personales que recaba el personal de Barter a través de la Dirección General de Programación, Administración de base de datos y gestión de información, son de manera directa a través del titular de los datos, mismos que se recaban a través de medios digitales.
                            <br><br>
                            Los datos son Identificativos: Nombre, Edad, Correo Electrónico, Número de identificación oficial. No se omite mencionar que sus datos serán resguardados en los archivos de la Dirección General de Programación; por lo que sólo tiene acceso a ellos, el personal autorizado por el titular de dicha área. Asimismo, se le informa que no se recaba ningún dato considerado como sensible de acuerdo con la Ley General de Protección de Datos Personales en Posesión de Sujetos Obligados.
                            <br><br>
                            En Barter, nos comprometemos a mantener altos estándares de seguridad y privacidad en el manejo de los datos personales de nuestros usuarios, garantizando su protección y cumpliendo con las regulaciones pertinentes en materia de privacidad y protección de datos.
                            <br><br>
                            Recopilamos una variedad de información personal de nuestros usuarios con el fin de proporcionarles una experiencia personalizada y satisfactoria, así como para cumplir con nuestras obligaciones legales y comerciales. La información personal que recopilamos puede incluir, pero no se limita a:
                            <ul>
                                <li><b>Información de contacto:</b> recopilamos nombres, direcciones de correo electrónico, código postal, números de teléfono y otros detalles de contacto proporcionados por los usuarios al registrarse en nuestro sitio web, realizar una compra, suscribirse a boletines informativos u otros servicios, o participar en encuestas o promociones.</li>
                                <li><b>Información de pago:</b> cuando los usuarios realizan una compra a través de nuestro sitio web, recopilamos información de pago, como números de tarjeta de crédito o débito, información de facturación y detalles de transacciones. Esta información se utiliza únicamente para procesar pagos y completar transacciones de compra.</li>
                            </ul>
                            Además de la información proporcionada directamente por los usuarios, también podemos obtener información de fuentes externas, como proveedores de servicios de terceros, redes sociales u otras fuentes públicas y comerciales, cuando los usuarios eligen iniciar sesión o interactuar con nuestras plataformas a través de estas fuentes.
                        </p>
                        <p>
                            <b>5. ¿Cómo puede Limitar el Uso o Divulgación de sus Datos Personales?</b>
                            <br><br>
                            Se va a regir por los artículos mencionados en la Ley federal de Protección de Datos Personales en Posesión de los Particulares.
                            <br><br>
                            La Principal Seguridad que se Utilizara para la Protección de Datos es:
                            <ul>
                                <li><b>Un buen Manejo de contraseñas:</b> Para el manejo de contraseñas dentro de nuestras cuentas de usuarios se utilizarán las normas y estándares que podemos encontrar en ISO 27001 creando contraseñas seguras, robusta y diferentes para cada cuenta, de esta manera podemos asegurarnos el acceso controlado.</li>
                                <li>Utilizaremos Codificación Cesar Rot01 para el guardado de las contraseñas, es decir, una vez que el usuario realice su registro la contraseña colocada será traducida a Rot01 y almacenada dentro de la base de datos.</li>
                                <li>Únicamente los gestores de bases de datos podrán acceder a la información contenida y el Gestor de nuestra base maneja una encriptación y autenticación para entrar al sistema, adicional maneja un certificado de confianza el cual permite que solo bases de datos creadas en el sistema puedan ser operadas, en caso de usar una base de datos cuyo origen sea diferente esta no podrá abrirse.</li>
                                <li>El sistema de seguridad bajo el cual operamos es el mismo utilizado por Google llamado Google Cloud Platform (GCP), esta es una plataforma con todas las funciones y un paquete de más de 100 productos con los que podemos garantizar un acceso seguro a las aplicaciones, sistemas de gestión de bases de datos y gestión de registros para un almacenamiento seguro.</li>
                            </ul>
                            Por lo tanto, toda la información del usuario que recabemos será usada únicamente para la finalidad mencionada en el presente aviso de privacidad.
                            <br><br>
                            Es así como Barter, bajo sus principios, procura dar certeza, veracidad y seguridad a la protección de datos personales, por lo que para poder realizar la compra de un artículo o servicio de Barter el usuario debe estar de acuerdo con estos términos y condiciones.
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

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
</html>
