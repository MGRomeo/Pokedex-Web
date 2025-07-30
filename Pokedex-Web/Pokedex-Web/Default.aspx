<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pokedex_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater id="pokeRepeater" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src=<%#Eval("UrlImagen")%> class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetallePokemon.aspx%Id=<%#Eval("Id") %>">Detalle</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
