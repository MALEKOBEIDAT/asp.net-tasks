<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Entity_Task.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-group row">
    <label for="name" class="col-4 col-form-label">Name</label> 
    <div class="col-8">
        <asp:TextBox runat="server" ID="name" type="text" class="form-control"  placeholder="Name" required/>
        <%--      <input id="name" name="name" placeholder="Name" type="text" class="form-control"/>--%>
    </div>
  </div>
  <div class="form-group row">
    <label for="city" class="col-4 col-form-label">City</label> 
    <div class="col-8">
        <asp:DropDownList ID="DropDownList1" runat="server">
            
        </asp:DropDownList>


    </div>
  </div>
  <div class="form-group row">
    <label for="age" class="col-4 col-form-label">Age</label> 
    <div class="col-8">
        <asp:TextBox runat="server"  placeholder="Age"  id="Agee"   class="form-control" type="text" required/>
        <%--      <input id="age" name="age" placeholder="Age" type="text" class="form-control"/>--%>
    </div>
  </div>
  <div class="form-group row">
    <label for="phone" class="col-4 col-form-label">Phone</label> 
    <div class="col-8">
<%--      <input id="phone" name="phone" placeholder="Phone" type="text" class="form-control"/>--%>
        <asp:TextBox runat="server" id="phone" name="phone" placeholder="Phone" type="text" class="form-control" required />
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-4 col-form-label">Email</label> 
    <div class="col-8">

        <asp:TextBox runat="server" id="email" name="email" placeholder="Email" type="text" class="form-control" required />

    </div>
  </div>
  <div class="form-group row">
    <label for="photo" class="col-4 col-form-label">Photo</label> 
    <div class="col-8">
        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control"  />
    </div>
  </div> 
  <div class="form-group row">
   <%-- <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>--%>


  </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" class="btn btn-primary" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="150px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>



        <asp:Label Text="" ID="lblNum" runat="server" />
               
        <asp:Label Text="" ID="lblAvg" runat="server" />
              
        <asp:Label Text="" ID="lblMax" runat="server" />




    </form>
</body>
</html>
