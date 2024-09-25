using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Newtonsoft.Json;

namespace Barter
{
    public partial class facturaxml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (StreamReader oFile = File.OpenText(@"c:\tsunami\Datos_Equipo.json"))
            {
                string json = oFile.ReadToEnd();
                DataTable MiArreglo = (DataTable)JsonConvert.DeserializeObject(json, typeof(DataTable));
                GridView1.DataSource = MiArreglo;
                GridView1.DataBind();
            }

        }
        private void CrearXML()
        {
            string Emisor = txtemisor.Text;
            string Receptor = txtreceptor.Text;
            string Identificacion = txtidentificacion.Text;
            string expe = txtexpedicion.Text;
            string fact = txtfactura.Text;

            XmlDocument oDocumento = new XmlDocument();
            XmlElement raiz = oDocumento.CreateElement("Factura");
            oDocumento.AppendChild(raiz);

            XmlElement cliente = oDocumento.CreateElement("Cliente");
            raiz.AppendChild(cliente);

            XmlElement datos = oDocumento.CreateElement("Datos");
            raiz.AppendChild(datos);
            cliente.AppendChild(datos);

            XmlElement emisor = oDocumento.CreateElement("Nombre_del_emisor");
            emisor.AppendChild(oDocumento.CreateTextNode(Emisor));
            datos.AppendChild(emisor);

            XmlElement receptor = oDocumento.CreateElement("Nombre_del_receptor");
            receptor.AppendChild(oDocumento.CreateTextNode(Receptor));
            datos.AppendChild(receptor);

            XmlElement identifi = oDocumento.CreateElement("Número_de_Identificación_fiscal");
            identifi.AppendChild(oDocumento.CreateTextNode(Identificacion));
            datos.AppendChild(identifi);

            XmlElement expedicion = oDocumento.CreateElement("Fecha_expedicion");
            expedicion.AppendChild(oDocumento.CreateTextNode(expe));
            datos.AppendChild(expedicion);

            XmlElement factura = oDocumento.CreateElement("Factura");
            factura.AppendChild(oDocumento.CreateTextNode(fact));
            datos.AppendChild(factura);

            oDocumento.Save(@"C:\tsunami\Factura.xml");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CrearXML();
        }

    }
}