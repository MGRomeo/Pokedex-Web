using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace Pokedex_Web
{
    public partial class FormularioPokemon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ElementoNegocio negocio = new ElementoNegocio();
            List<Elemento> listaElemento = new List<Elemento>();
            listaElemento = negocio.listar();
            ddlTipo.DataSource = listaElemento;
            ddlTipo.DataTextField = "Descripcion";
            ddlTipo.DataValueField = "Id";
            ddlTipo.DataBind();

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            Pokemon poke = new Pokemon();
            poke.Id = int.Parse(txtId.Text);
            poke.Nombre = txtNombre.Text;
            poke.Numero = int.Parse(txtNumero.Text);
            poke.Descripcion = txtDescripcion.Text;

        }
    }
}