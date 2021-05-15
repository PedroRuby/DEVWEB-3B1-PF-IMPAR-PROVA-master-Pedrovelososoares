<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Vagas_de_Estágio.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <title></title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <asp:HyperLink NavigateUrl="~/UI/Index.aspx" Text="Home" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Candidatura.aspx" Text="Candidatura" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Consulta.aspx" Text="Consulta" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section class="text-center">

            <h1>VAGAS DE ESTÁGIO</h1>
           
            <asp:Image ID="imgHome" ImageUrl="https://th.bing.com/th/id/OIP.5US4l69Z8iFKKOojtbn0fwEgDY?w=218&h=180&c=7&o=5&pid=1.7" AlternateText="vagas TI" runat="server" Height="388px" Width="563px" />
        </section>
    </header>


    <main>
        <section>
            <p>
               varios tipos de estágios para varios tipos de areas atualmente !!
            </p>
        </section>
       <!-- prof eu n consegui fazer 
eu fiz oq eu entendi -->




        <section>
            <article>

                <asp:Table ID="programacao" CellPadding="10"
                    GridLines="Both"
                    HorizontalAlign="NotSet" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>38</asp:TableHeaderCell>
                        <asp:TableHeaderCell>coca cola</asp:TableHeaderCell>
                        <asp:TableHeaderCell>empresa de refrigerantes</asp:TableHeaderCell>
                        <asp:TableHeaderCell>13h </asp:TableHeaderCell>
                        <asp:TableHeaderCell>rua inacio murta </asp:TableHeaderCell>
                        <asp:TableHeaderCell>1300</asp:TableHeaderCell>
                        <asp:TableHeaderCell>vale trasporte e plano de saude </asp:TableHeaderCell>
                        <asp:TableHeaderCell>cadastrar no nosso saite </asp:TableHeaderCell>


                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>                
                            V01
                        </asp:TableCell>
                        <asp:TableCell>
                         Cotemig
                        </asp:TableCell>
                        <asp:TableCell>
                Estágio na área de desenvolvimento Web (ASP.NET e C#)
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 12:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Belo Horizonte
                        </asp:TableCell>
                        <asp:TableCell>
                        R$ 1300,00
                        </asp:TableCell>
                        <asp:TableCell>
                            Vale Transporte
                            Plano de Saúde
                        </asp:TableCell>
                        
                        <asp:TableCell>
                            Ter cursado ⅓ de algum curso de TI
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

            </article>
        </section>
    </main>

    <section class="font-weight-bold">
        <p>Ficou interessado em alguma vaga?</p>
        <asp:HyperLink Text="Candidate-se" NavigateUrl="~/UI/Candidatura.aspx" runat="server"></asp:HyperLink>
    </section>
    <footer>
        <div>
            &copy; Copyright 2021 
            <p>Desenvolvido por: </p>
        </div>
    </footer>
</body>
</html>
