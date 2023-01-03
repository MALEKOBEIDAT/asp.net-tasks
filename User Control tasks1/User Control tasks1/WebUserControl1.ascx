<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="User_Control_tasks1.WebUserControl1" %>


<style type="text/css">
    .auto-style1 {
        margin-right: 21px;
    }
</style>


<div>   
    <h3>
        How Pleased Our Online Servises :
    </h3>
</div>
<div id="radio" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style1">
    <asp:ListItem>Exellent</asp:ListItem>
    <asp:ListItem>V.Good</asp:ListItem>
    <asp:ListItem>Good</asp:ListItem>
    <asp:ListItem>Fair</asp:ListItem>
    <asp:ListItem>Poor</asp:ListItem>

</asp:RadioButtonList>


<div>

    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Vote" OnClick="Button1_Click1" />
</div>

    </div>


<div id="results" runat="server" visible="false">
    <h1>Your Opinion Is Important</h1>

    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="excellent" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="vgood" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="good" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="fair" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="poor" runat="server" ></div>
    </div>



</div>
