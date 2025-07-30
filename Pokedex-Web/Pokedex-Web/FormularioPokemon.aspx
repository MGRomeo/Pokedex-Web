<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="Pokedex_Web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">

        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Número</label>
                <asp:TextBox ID="txtNumero" CssClass="form-control" runat="server" />
            </div>

            <div class="mb-3">
                <label for="ddlTipo" class="form-label">Tipo</label>
                <asp:DropDownList ID="ddlTipo" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlDebilidad" class="form-label">Debilidad</label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" CssClass="btn btn-danger" OnClick="btnAceptar_Click" Text="Aceptar" runat="server" />
                <a href="PokemonLista.aspx">Cancelar</a>
            </div>
        </div>

        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descipción</label>
                <asp:TextBox TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtUrlImagen" class="form-label">
                    Url Imagen
                </label>
                <asp:TextBox ID="txtUrlImagen" CssClass="form-control" runat="server" />
            </div>
            <div>
                <asp:Image ID="imgUrl" ImageUrl="https://www.smaroadsafety.com/wp-content/uploads/2022/06/no-pic.png" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
