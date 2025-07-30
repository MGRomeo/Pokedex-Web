<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex_Web.PokemonLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="dgvPokemon" OnSelectedIndexChanged="dgvPokemon_SelectedIndexChanged" CssClass="table table-dark" DataKeyNames="Id" AutoGenerateColumns="false" runat="server" AllowPaging="true" PageSize="2" OnPageIndexChanging="dgvPokemon_PageIndexChanging">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre"/>
            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Editar" />
        </Columns>
    </asp:GridView>
    <asp:Button Text="Agregar" Id="btnAgregar" OnClick="btnAgregar_Click" runat="server" />
</asp:Content>
