<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Barter.Productos" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <header>
      <div class="menu logo-nav">
        <a href="index.aspx" class="logo">Barter</a>
        <label class="menu-icon"><span class="fas fa-bars icomin"></span></label>
        <nav class="navigation">
          <ul>
            <li><a href="Principal.aspx">Principal</a></li>
            <li><a href="Productos.aspx">Productos</a></li>
            <li><a href="Mensajes.aspx">Mensajes</a></li>
            <li class="search-icon">
              <input type="search" placeholder="Search">
              <label class="icon">
                <span class="fas fa-search"></span>
              </label>
            </li>
            <li class="car" >
              <svg class="bi bi-cart3" width="2em" height="2em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
              </svg>
                <div id="carrito" class="dropdown-menu">
                  <table id="lista-carrito" class="table">
                      <thead>
                          <tr>
                              <th>Imagen</th>
                              <th>Nombre</th>
                              <th>Precio</th>
                              <th></th>
                          </tr>
                      </thead>
                      <tbody></tbody>
                  </table>

                  <a href="#" id="vaciar-carrito" class="button-vaciar">Vaciar Carrito</a>
                  <a href="#" id="procesar-pedido" class="button-pedido">Procesar Compra</a>
              </div>
            </li>
          </ul>
        </nav>
      </div>
    </header>


<main>

        <div class="modal" id="modal">
          <div class="modal-content">
            <img src="" alt="" class="modal-img" id="modal-img">
          </div>
          <div class="modal-boton" id="modal-boton">X</div>
        </div>

        <div class="container-productos" id="lista-productos">

          <div class="card">
            <img src="assets/img/ropa1.jpeg" class="card-img">
            <h5>Ropa Hello Kitty</h5>
            <p>SKU: ROP0000074</p>
            <p>S/.<small class="precio">18</small></p>
            <a href="#" class="button agregar-carrito" data-id="1">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/juguete1.png" class="card-img">
            <h5>Pelota Soga Nudo Grande Colores</h5>
            <p>SKU: JUG0000005</p>
            <p>S/.<small class="precio">14</small></p>
            <a href="#" class="button agregar-carrito" data-id="2">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/alimento1.webp" class="card-img">
            <h5>Pack Yogy Helado para perros 100% Natural 100g de Barker</h5>
            <p>SKU: BPY4UND</p>
            <p>S/.<small class="precio">24</small></p>
            <a href="#" class="button agregar-carrito" data-id="3">Comprar</a>
          </div>

          <div class="card">
            <img src="assets/img/alimento2.webp" class="card-img">
            <h5>Dingo Dental Mini Bones 7und x70gr</h5>
            <p>SKU: DDMB7U70GR</p>
            <p>S/.<small class="precio">26</small></p>
            <a href="#" class="button agregar-carrito" data-id="4">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/juguete3.webp" class="card-img">
            <h5>Hartz - Duraplay Ball Medium</h5>
            <p>SKU: HDB04</p>
            <p>S/.<small class="precio">35</small></p>
            <a href="#" class="button agregar-carrito" data-id="5">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/ropa2.jpeg" class="card-img">
            <h5>Ropa Avengers</h5>
            <p>SKU: ROP0000023</p>
            <p>S/.<small class="precio">21</small></p>
            <a href="#" class="button agregar-carrito" data-id="6">Comprar</a>
          </div>

          <div class="card">
            <img src="assets/img/juguete2.webp" class="card-img">
            <h5>Animal Planet Juguete P/Mascota Medium</h5>
            <p>SKU: AP-D794-011</p>
            <p>S/.<small class="precio">29</small></p>
            <a href="#" class="button agregar-carrito" data-id="7">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/ropa3.webp" class="card-img">
            <h5>Hoodie Hotdogz Mr. Charlie</h5>
            <p>SKU: HTD-TSH023-1</p>
            <p>S/.<small class="precio">90</small></p>
            <a href="Carrito.aspx" class="button agregar-carrito" data-id="8">Comprar</a>
          </div>
          <div class="card">
            <img src="assets/img/alimento3.webp" class="card-img">
            <h5>Hills PD Metabolic Treats</h5>
            <p>SKU: HPDMT</p>
            <p>S/.<small class="precio">45</small></p>
            <a href="#" class="button agregar-carrito" data-id="9">Comprar</a>
          </div>

        </div>
</main>
  

<footer class="footer-section">
  <div class="copyright-area">
      <div class="container-footer">
          <div class="row-footer">
              <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                  <div class="copyright-text">
                      <div class="BarterSlogan">
    <small>Un Mercado de todo para todos.</small>
    <br>
    <br>
    <small>Copyright &copy; Todos los derechos reservados.</small>
    <small>Al continuar, aceptas las condiciones de uso y el <br>
        Aviso de Privacidad de Barter</small>
</div>
                  </div>
              </div>
              <div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
                  <div class="footer-menu">
                  </div>
              </div>
          </div>
      </div>
  </div>
</footer> 

      <style>
          *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
    letter-spacing: 0.03em;
    line-height: 1.3;
}

p{
    padding: 5px;
}

img{
    border-radius: 4px;
}

.button{
    background:#DF691A;
    text-decoration: none;
    padding: 15px;
    margin-top: 15px;
    border-radius: 5px;
    color:  #f2f2f2;
    font-weight: 700;
}
.button:hover{
    cursor: pointer;
    text-decoration: none;
    background-color: #9a4912;
    color: #f2f2f2;
}


/*menu*/
header{
    background:#333;
    color:#f2f2f2;
    padding: 1rem 0;
    position: fixed;
    left: 0;
    top:0;
    right: 0;
    height: 65px;
}
header a{
    color: #cccccc;
    text-decoration: none;
}
.menu{
    width: 95%;
    max-width: 850px;
    margin: 0 auto;
}
.logo-nav{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}
.logo{
    color: #f2f2f2;
    font-size: 30px;
    font-weight: 700;
}
.menu-icon{
    display: none;
}
.navigation ul{
    margin:0;
    padding: 0;
    list-style: none;
}
.navigation ul li{
    display: inline-block;
}
.navigation ul li a{
    display: block;
    padding: 0 1rem;
    font-weight: 700;
}
.navigation ul li a:hover{
    color: #f2f2f2;
}
.navigation ul .search-icon input{
    color: #000;
    font-size: 16px;
    border-radius: 5px 0 0 5px;
}
.navigation ul .search-icon .icon{   
    cursor: pointer;
}
.navigation ul .search-icon .icon span{
    font-size: 18px;
    color: #cccccc;
}
.navigation ul .search-icon .icon span:hover{
    color: #f2f2f2;
}
.icomin{
    color: #cccccc;
}
.icomin:hover{
    color: #f2f2f2;
}
.bi-cart3{
    color: #cccccc;
    cursor: pointer;
}
.bi-cart3:hover{
    color: #f2f2f2;
}
.car{
    position: relative;
}

/*menu-carrito*/
.dropdown-menu{
    position: absolute;
    top: 100%;
    right: 0;
    display: none;
    height: 400px;
    min-width: 10rem;
    padding: .5rem 0;
    margin: .125rem 0 0;
    font-size: 1rem;
    color: #212529;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: .25rem;
    overflow-y: scroll;
}
#vaciar-carrito, #procesar-pedido {
    padding: 8px;
    margin-top:2px;
    text-align: center;
}
.dropdown-menu.show {
    display: block;
}
.button-vaciar{
    background:#17A2B8;
    text-decoration: none;
    padding: 15px;
    margin-top: 15px;
    border-radius: 5px;
    color:  #f2f2f2;
    font-weight: 700;
}
.button-vaciar:hover{
    cursor: pointer;
    text-decoration: none;
    background-color: #0c505a;
    color: #f2f2f2;
}
.button-pedido{
    background:#28A745;
    text-decoration: none;
    padding: 15px;
    margin-top: 15px;
    border-radius: 5px;
    color:  #f2f2f2;
    font-weight: 700;
}
.button-pedido:hover{
    cursor: pointer;
    text-decoration: none;
    background-color: #1e612e;
    color: #f2f2f2;
}


main{
    padding-top: 6rem;
}

/*slider*/
.slider{
    padding-top: 4rem;
    width: 100%;
    margin: auto;
    overflow: hidden;
}
.slider ul{
    display:flex;
    padding: 0;
    width: 300%;
    animation: cambio 20s infinite;
    animation-direction: alternate;
    animation-timing-function:linear;
}
.slider li{
    list-style: none;
    width: 100%;
}
.slider img{
    width: 100%;
}

@keyframes cambio{
    0%{margin-left: 0;}
    30%{margin-left:0;}

    35%{margin-left: -100%;}
    65%{margin-left: -100%;}

    70%{margin-left: -200%;}
    100%{margin-left: -200%;}
}


/*circulo imagenes*/
.container-circulos{
    /* display:flex; */
    width: 100%;
    padding: 20px;
}
.container-imagen{
    width: 33%;
    display:inline-block; 
    align-items: center;
    flex-direction: column;
    text-align:center;
    padding: 20px;
}
.container-imagen h2{
    font-weight: 600;
}
.circulo{    
    width: 60%;
    border-radius: 50%;
    border:2px solid  #DF691A;
    box-shadow: 0 2px 2px rgba(0,0,0,0.2);
}
.ver-todo{
    margin: 50px 0;
    width: 100%;
    text-align: center;
}
.contenedor-columna{
    width: 100%;
    max-width: 1200px;
    height: auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: auto;
}


/*contacto*/
.container-contacto{
    background-image: url("../img/bg-contacto.jpg");
    background-size: 100vw 100vh;
    background-attachment: fixed;
    margin:0;
    padding: 6rem 0;
}
.container-contacto form{
   
    width: 450px;
    margin:auto;
    background:rgba(0,0,0,0.4);
    padding: 10px 20px;
    box-sizing: border-box;
    margin-top: 20px;
    border-radius: 7px;
}  
.container-contacto form h2{
    color: #f2f2f2;
    text-align: center;
    margin:0;
    font-size: 30px;
    margin-bottom: 20px;
    font-weight: 600;
}
.container-contacto form input,textarea{
    width: 100%;
    margin-bottom: 20px;
    padding: 7px;
    box-sizing: border-box;
    font-size: 17px;
    border:none;
}
.container-contacto form textarea{
    min-height: 100px;
    max-height: 200px;
    max-width: 100%;
}


/*productos-modal*/
.modal{
    width: 100%;
    min-height: 100vh;
    background: rgba(0,0,0,0.9);
    position: fixed;
    top: 0;
    left: 0;
    display: none;
}
.modal-content{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
.modal-img{
    width: 50%;
}
.modal-boton{
    position: absolute;
    top: 10px;
    right:10px;
    color:white;
    cursor: pointer;
    font-weight: bold;
    width: 50px;
    height: 50px;
    line-height: 50px;
    background:#DF691A;
    font-size: 2em;
    text-align: center;
    border-radius: 50%;
    font-family: monospace;
}
.modal-open{
    display: block;
}


/*productos-card*/
.container-productos{
    width: 100%;
    max-width: 1200px;
    height: auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: auto;
}
.container-productos .card{
    width: 260px;
    height: 390px;
    background: #4E5D6C;
    color:#f2f2f2;
    border-radius: 8px;
    border:1px solid  #DF691A;
    box-shadow: 0 2px 2px rgba(0,0,0,0.2);
    overflow: hidden;
    margin: 20px;
    text-align: center;
    align-items: center;
    transition: all 0.25s;
}
.container-productos .card:hover{
    transform: translateY(-15px);
    box-shadow: 0 12px 16px rgba(0,0,0,0.2);
}
.container-productos .card img{
    width: 260px;
    height: 190px;
    cursor: pointer;
}
.container-productos .card h5{
    font-weight: 600;
    padding: 5px;
}
.container-productos .card p{
    padding-top: 5px;
}
.container-productos .card a{
    padding:10px;
    display: block;
    width: 50%;
    margin: 0 auto;
}


/*contenido*/
.container{
    width: 100%;
    max-width: 1200px;
    height: auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: 5% auto;
}


/*columnas*/
.columna1{
    width: 50%;
    /* float: left;
    padding-left: 25px; */
    text-align: center;
}
.columna2{
    /* width: 40%;
    float: right; */
}
.columna2 img{
    width: 450px;
}

/*carrito*/
#cargando{
    display: none;
}
.container-carrito h2{
    text-align: center;
    font-size: 30px;
    margin-bottom: 20px;
    font-weight: 600;
}
.container-carrito form{
    width: 650px;
    margin:auto;
    padding: 10px 20px;
}
.container-carrito form .contenido{
    
    padding: 10px 20px;
}
.container-carrito form .titulo{
    font-size: 20px;
    font-weight: 200;    
}
.container-carrito form .titulo input{
    width: 100%;
    margin-bottom: 20px;
    padding: 7px;
    box-sizing: border-box;
    font-size: 17px;
    border-radius: 8px;
    border:1px solid  #DF691A;
}
#total{
    border: 0; 
    font-weight: bold;
    font-size: 20px;
    text-align: center;
}
#procesar-compra{
    border: 0;
    height: 49px;
    font-size: 16px;
    outline: none;
    margin: 50px;
}
#volver{
    margin: 48px;
}
.botones-envio{
    display: flex;
    align-items: center;
    justify-content: center;
}


.tabla {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
    border-collapse: collapse;
}
.tabla td, .tabla th {
    padding: .75rem;
    border-top: 1px solid #dee2e6;
    text-align: center;

}
.tabla thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
}


/*footer*/
.footer-menu ul {
    margin: 0px;
    padding: 0px;
}
.container-footer {
    max-width: 1140px;
}
.copyright-area{
  background: #202020;
  padding: 25px 0;
}
.copyright-text p {
  margin: 0;
  font-size: 14px;
  color: #878787;
}
.copyright-text p a{
  color: #ff5e14;
  text-decoration: none;
}
.footer-menu li {
  display: inline-block;
  margin-left: 20px;
}
.footer-menu li:hover a{
  color: #ff5e14;
}
.footer-menu li a {
  font-size: 14px;
  color: #878787;
  text-decoration: none;
}
.row-footer {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
.text-lg-left {
    text-align: left !important;
}
.text-right {
    text-align: right !important;
}
.col-xl-6 {
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 50%;
}
.d-lg-block {
    display: block !important;
}

.col-xl-6{
	    position: relative;
    width: 100%;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}

*, ::after, ::before {
    box-sizing: border-box;
}
.container-footer {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}


@media (max-width: 800px) {

    /*menu*/
    .menu-icon{
        display: block;
        cursor: pointer;
        padding: 0.5rem 1rem;
    }
    .navigation{
        width: 100%;
        margin-top: 1rem;
    }
    .navigation ul{
        display: none;
    }
    .navigation ul.show{
        display: block;
    }
    .navigation ul li{
        display: block;
    }
    .navigation ul li a{
        display: block;
        padding: 0.5rem 0;
    }
    .navigation ul li a:hover{
        color: #f2f2f2;
    }

    header{
        height: auto;
    }

    /*menu-carrito*/
    .dropdown-menu{
        left: 0;
        height: 250px;
    }


    /*slider*/
    .slider{
        padding-top: 5rem;
    }


    /*circulo imagenes*/
    .container-imagen{
        width: 70%;
        display: block;
        margin: 0 auto;
    }


    /*contacto*/
    .container-contacto form{
        width: 100%;
    }


    /*columnas*/
    .columna1{
        width: 100%;
        float: none;
        margin-bottom: 20px;
    }
    .columna2{
        width: 100%;
        float: none;
        text-align: center;   
    }
    .columna2 img{
        width: 300px;
    }

    /*carrito*/
    .container-carrito form{
        width:100%;
    }
    .tabla td, .tabla th {
        padding: .1rem;
    }    

}
      </style>
</body>
</html>