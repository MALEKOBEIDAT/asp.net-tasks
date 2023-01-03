<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="one.aspx.cs" Inherits="_3_1_2022_tasks.one" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="-1">Select User</asp:ListItem>
            <asp:ListItem Value="0">Admin</asp:ListItem>
            <asp:ListItem Value="1">User</asp:ListItem>
        </asp:DropDownList>
        <asp:Panel ID="Panel1" runat="server">
     
                <asp:Label Text="You Are Admin :" runat="server" ID="lbl1" />
                
                    <br />

                <asp:Label Text="Admin Name" runat="server" ID="lbl2" />
                
                        <br />


                   <asp:Label Text="Malek Obeidat" runat="server" ID="lbl3" />
                             <br />

        
                <asp:Label Text="Welcome" runat="server" ID="lbl4" />
                        <br />

              
        </asp:Panel>

        <br />
         <asp:Panel ID="Panel2" runat="server">
       
                <asp:Label Text="You Are User :" runat="server" ID="Label1" />

             <br />
          
                <asp:Label Text="User Name" runat="server" ID="Label2" />
                
                        <br />


                   <asp:Label Text="Ashraf " runat="server" ID="Label3" />
                
                       <br />

                <asp:Label Text="Welcome" runat="server" ID="Label4" />
                       <br />


            
        
        
        </asp:Panel>
    </form>

    
</body>
</html>
