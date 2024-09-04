<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Barter.Principal" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/CSS/styles.css">
    <title>Barter ©</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">
    <link rel="stylesheet" href="/CSS/principalstyles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
    <body>  <!-- Esta es la parta del header -->
        <div class="hm-wrapper">
            <div class="hm-header">
                <div class="container">
                    <div class="header-menu">
                        <div class="hm-logo">
                            <a href="/principal.html">
                                <img style="border-radius: 100%;" src="Img/BarterWhite.png" alt="Logo">
                            </a>
                        </div>
                        <div class="Buscador" data-mdb-input-init>
                            <form class="form-inline">
                                <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-dark" type="submit">Buscar</button> <!-- Aqui va a ir un if -->
 
                            </form>
                        </div>
                        <nav class="hm-menu">
                            <ul>
                                <li><a href="Principal.aspx">Inicio</a></li>
                                <li><a href="PerfilBarter.aspx">Mi perfil</a></li>  
                                <li><a href="https://web.whatsapp.com/send?phone=551533700">Mensajes</a></li>
                                <li><a href="Aviso_Privacidad.aspx">FAQ</a></li>
                                <li><a href="Carrito.aspx">Carrito</a></li>
                                <li><a href="index.aspx">Salir</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
    
        <div class="hm-banner">
            <div class="img-banner">
                <img src="/Img/Banner.jpg" alt="BannerBArter">
            </div>
            <a href=""></a>
        </div>

        <div class="hm-page-block bg-fondo">
            <div class="container">
                <div class="header-title" data-aos="fade-up">
                    <h1>Productos populares</h1>
                </div>
                <ul class="hm-tabs" data-aos="fade-up">
                    <li class="hm-tab-link">
                        Fruteria y Verduleria
                    </li>
                    <li class="hm-tab-link ">
                        Tecnologia
                    </li>
                    <li class="hm-tab-link ">
                        Comida
                    </li>
                    <li class="hm-tab-link ative">
                        Calzado
                    </li>
                    <li class="hm-tab-link ative">
                        Accesorios
                    </li>
                    <li class="hm-tab-link ative">
                        Molino y semillas
                    </li>
                </ul>                
            </div>
        </div>
        <div class="hm-page-block">
            <div class="container">
                <div class="header-title">
                    <h1  data-aos="fade-up" data-aos-duration="3000">Categorías</h1>
                </div>

                <div class="hm-grid-category">

                    <div class="grid-item" data-aos="fade-up" data-aos-duration="1000">
                        <a href="#">
                            <img src="/BarterPhotos/Frutas.jpeg" alt="">
                            <div class="c-info">
                                <h3>Fruteria</h3>
                            </div>
                        </a>
                    </div>
                    <div class="grid-item" data-aos="fade-up" data-aos-duration="1500">
                        <a href="#">
                            <img src="/BarterPhotos/Refrigerios.jpeg" alt="">
                            <div class="c-info">
                                <h3>Congelados</h3>
                            </div>
                        </a>
                    </div>
                    <div class="grid-item" data-aos="fade-up" data-aos-duration="1500">
                        <a href="#">
                            <img src="/BarterPhotos/tianguis.jpg" alt="">
                            <div class="c-info">
                                <h3>Variedades</h3>
                            </div>
                        </a>
                    </div>
                    <div class="grid-item" data-aos="fade-up" data-aos-duration="1500">
                        <a href="#">
                            <img src="/BarterPhotos/Variedades.jpeg" alt="">
                            <div class="c-info">
                                <h3>Accesorios</h3>
                            </div>
                        </a>
                    </div>
                </div>

            </div>
        </div>

        <div class="gmp-map">
            <ul>
                <script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBD-BH5jqUzA8OZGSMPxaBZLGKdOHg-dSs&callback=console.debug&libraries=maps,marker&v=beta">
                </script>
                <style>
           
                  gmp-map {
                    height: 100%;
                  }
            
                  html,
                  body {
                    height: 100%;
                    margin: 0;
                    padding: 0;
                  }
                </style>
              </head>
              <body>
                <gmp-map center="40.12150192260742,-100.45039367675781" zoom="4" map-id="DEMO_MAP_ID">
                  <gmp-advanced-marker position="40.12150192260742,-100.45039367675781" title="My location"></gmp-advanced-marker>
                </gmp-map>
              </body>

            </ul>
        </div>
    </div>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>

        AOS.init({
            duration: 1200,
        })
    </script>


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
        <a href="json.json">Enlace 1</a>
        <a href="#link2">Enlace 2</a>
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