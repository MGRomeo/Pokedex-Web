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
            txtId.Enabled = false;
            try
            {
                if (!IsPostBack)
                {
                    ElementoNegocio negocio = new ElementoNegocio();
                    List<Elemento> listaElemento = negocio.listar();
                    ddlTipo.DataSource = listaElemento;
                    ddlTipo.DataValueField = "Id";
                    ddlTipo.DataTextField = "Descripcion";
                    ddlTipo.DataBind();

                    ddlDebilidad.DataSource = listaElemento;
                    ddlDebilidad.DataValueField = "Id";
                    ddlDebilidad.DataTextField = "Descripcion";
                    ddlDebilidad.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
                //redireccion panralla error
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                PokemonNegocio negocio = new PokemonNegocio();
                Pokemon poke = new Pokemon();
                poke.Nombre = txtNombre.Text;
                poke.Numero = int.Parse(txtNumero.Text);
                poke.Descripcion = txtDescripcion.Text;

                // instancio tipo y debilidad
                poke.Tipo = new Elemento();
                poke.Debilidad = new Elemento();
                poke.Tipo.Id = int.Parse(ddlTipo.SelectedValue);
                poke.Debilidad.Id = int.Parse(ddlDebilidad.SelectedValue);
                poke.UrlImagen = txtUrlImagen.Text;
                negocio.AgregarConSp(poke);
                Response.Redirect("PokemonLista.aspx", false);
            }
            catch (Exception)
            {

                throw;
            }


        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgUrl.ImageUrl = txtUrlImagen.Text;
        }
    }
}