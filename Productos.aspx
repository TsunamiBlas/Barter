<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Barter.Productos" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        body {
            background-color: #e3e3e3;
            color: rgb(34, 34, 34);
            transition-property: background-color, color;
            transition-duration: 0.3s;
        }
        title{
            text-align:center;
        }

        body h1 {
            text-align: center;
            margin-top: 20px;
        }

        .Contenedor p {
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

        .header-menu {
            display: flex;
            width: 100%;
            justify-content: space-between;
            align-items: center;
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
                    color: #222;
                    font-size: 15px;
                    text-decoration: none;
                }

                    .hm-menu ul li a:hover {
                        color: #bec3b6;
                    }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

            footer a {
                margin: 0 10px;
                color: #fff;
                text-decoration: none;
            }

            footer img {
                width: 24px;
                height: 24px;
            }

        /* Estilos para la sección de productos */
        .container-fluid {
            display: flex;
            height: calc(100vh - 64px); /* Ajusta la altura para que ocupe el resto de la pantalla, considerando la altura del header */
        }



        .products-section {
            flex: 4;
            padding: 15px;
            overflow-y: auto; /* Permite el scroll si hay muchos productos */
        }

        .product-card {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            border:hidden;
            border-color: white;
        }

        .product-image {
            max-width: 150px;
            max-height: 150px;
            margin-right: 20px;
        }

        .product-details {
            flex-grow: 1;
        }

        .product-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-price {
            color: #28a745;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .product-quantity {
            margin-bottom: 10px;
        }

        .btn-add-cart {
            background-color: #bec3b6;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
        }

            .btn-add-cart:hover {
                background-color: #0056b3;
            }

        /* Estilos para el GridView */
        #gvProductos {
            border-collapse: collapse; /* Elimina los bordes por defecto de la tabla */
            width: 100%;
            margin-top: 20px;
        }

        #gvProductos .product-card {
            margin-bottom: 0; /* Elimina el margen en la parte inferior */
        }

        /* Centrar el título */
        h1 {
            text-align: center;
            margin-top: 20px;
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
                            <a href="Princiapal.aspx">
                                <img style="border-radius: 100%;" src="Img/BarterWhite.png" alt="Logo">
                            </a>
                        </div>
                        <nav class="hm-menu">
                            <ul>
                                <li><a href="Principal.aspx">Inicio</a></li>
                                <li><a href="PerfilBarter.aspx">Mi perfil</a></li>  
                                <li><a href="https://web.whatsapp.com/send?phone=5518784908">Mensajes</a></li>
                                <li><a href="Productos.aspx">Productos</a></li>
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
                  <h1>Productos</h1>
        </div>

            <div class="products-section">
                <asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="false" CssClass="product-card">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div class="product-card"> 
                                    <div class="product-image">
                                        <!-- Imagen del producto -->
                                        <asp:Image ID="imgProducto" runat="server" ImageUrl='<%# "~/BarterPhotos/Frutas.JPEG" %>' CssClass="img-fluid" AlternateText="Imagen del producto"/>    
                                    </div>
                                    <br />
                                    <div class="product-details">
                                        <div class="product-title">
                                            <%# Eval("Nombre_Producto") %>
                                        </div>
                                        <div class="product-price">
                                            $<%# Eval("Precio_Producto") %>
                                        </div>
                                        <div class="product-quantity">
                                            Cantidad:
                                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" Width="50" />
                                        </div>
                                        <asp:Button ID="btnAgregar" runat="server" CssClass="btn-add-cart" Text="Agregar"
                                            CommandArgument='<%# Eval("Id_Producto") %>'
                                            OnClick="Agregar_Click" />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <script>
            //function addToCart(productId, productName, productPrice) {
            //    console.log(`Producto agregado: ${productName} (ID: ${productId}) - Precio: $${productPrice}`);
            //    alert(`${productName} ha sido añadido a tu carrito`);
            //}

            function addToCart(productId, productName, productPrice) {
                let cart = JSON.parse(localStorage.getItem('cart')) || [];
                let product = { id: productId, name: productName, price: productPrice, quantity: 1 };

                let existingProduct = cart.find(item => item.id === productId);
                if (existingProduct) {
                    existingProduct.quantity++;
                } else {
                    cart.push(product);
                }

                localStorage.setItem('cart', JSON.stringify(cart));
                alert(`${productName} ha sido añadido al carrito`);
            }
        </script>
    </form>
</body>
            <footer>
            <div>
                <a href="https://www.facebook.com/profile.php?id=61564934474884&mibextid=LQQJ4d" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/facebook.png" AlternateText="Facebook" />
                </a>
                <a href="https://x.com/bartercontacto" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/x.png" AlternateText="Twitter" />
                </a>
                <a href="https://www.instagram.com/barterprogrammer" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" AlternateText="Instagram" />
                </a>
            </div>
            <p>Derechos reservados © 2024 - Barter - Intercambio de Productos</p>
        </footer>
</html>
