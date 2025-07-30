using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;


namespace Pokedex_Web
{
    public partial class PokemonLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            dgvPokemon.DataSource = negocio.listarConSP();
            dgvPokemon.DataBind();
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioPokemon.aspx");
        }

        protected void dgvPokemon_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvPokemon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvPokemon.PageIndex = e.NewPageIndex;
            dgvPokemon.DataBind();
        }
    }
}