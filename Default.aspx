<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/Controls/BannerH.ascx" TagName="BannerH" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/theClubClassic/theClubClassicStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <h1>Bienvenidos a la nueva Web de #theClub</h1>
    <p class="Introduction">
        Este es el nuevo site para el club de triatlon #theClub, mientras se implementa este sitio puedes acceder a nuestro actual blog en :
                    <a href="http://www.sharptheclub.com">www.sharptheclub.com</a>.                    
                    Si  lo deseas puedes dejar un comentario en el formulario de contacto que encontrarás en el pie de página.
    </p>
    <p class="Introduction">
        This is a Demo for the new web site for the triathlon club #theClub, while we are under construcction you can visit our site at :
                    <a href="http://www.sharptheclub.com">www.sharptheclub.com</a>. 
                    Feel free to leave a coment using the contact form located at the footer of the page.
    </p>
</asp:Content>

