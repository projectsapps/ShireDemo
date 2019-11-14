<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="ShireDemo.FormView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>

<head runat="server">
     
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
  <%--  <link href="styles/css/all.min.css" rel="stylesheet" />
  
    <link href="styles/StyleSheet.css" rel="stylesheet" />--%>
     <link href="styles/StyleSheet.css" rel="stylesheet" />
      <link href="styles/sb-admin-2.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js" type="text/javascript"></script>
    <title>Shire of Coolgardie</title>  
    <style type="text/css">  
        .style1 {  
            width: 100%;
            height:100%;
        }  

    </style>  
 
</head>  
<body class="bg-gradient-primary">

<div class="container">
    <div class ="card o-hidden border-0 shadow-lg my-5">
 <div class="card-body">
     <form runat="server">
         <div class="text-center">
             <h2>Equipment/Vehicle Pre-start checklist</h2>
         </div>
         <hr />
         <table class="style1">
            <tr>
              <td>Company:</td>
                <td>  <div class="form-group">
              <asp:TextBox ID="Company" runat="server" BorderStyle="Solid"></asp:TextBox>
                </div></td>
            </tr>
             <tr>
                 <td>Unit #:</td>
                 <td><div class="form-group">
            <asp:TextBox ID="Unitno" runat="server"></asp:TextBox>  
                 </div></td>
             </tr>
               <tr>
                 <td>Mileage:</td>
                   <td>
                       <div class="form-group">
                           <asp:TextBox ID="Mileage" runat="server"></asp:TextBox>
                       </div>
                   </td>
             </tr>
            <tr>
                <td>Fluid levels: </td>
                <td>
                    <div class ="form-group">
                <asp:DropDownList ID="fluidlevels" runat="server"  
                            AppendDataBoundItems="true">  
                            <asp:ListItem Value="-1">Motor Oil</asp:ListItem>  
                            <asp:ListItem>Radiator</asp:ListItem>  
                            <asp:ListItem>Power Sterring</asp:ListItem>
                            <asp:ListItem>Windshield Washer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
             <tr>
                 <td>Date & Time:</td>
                   <td>
                       <div class="form-group">
                           <asp:TextBox ID="dates" TextMode="DateTimeLocal" runat="server"></asp:TextBox>
                           
                       </div>
                   </td>
             </tr>
         </table> 
         <hr />
           <div class="btn btn-google center-block"> 
                     <asp:Button ID="submit" runat="server" Text="Submit" BackColor="Transparent" BorderWidth="0px" onclick="ButtonClick_Event" /> 
                </div>
    </form>

 </div>
    </div>
     
     <script src="scripts/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="scripts/jquery.easing.min.js"type="text/javascript"></script>
    <script src="scripts/sb-admin-2.min.js" type="text/javascript"></script>
</div>
 
</body>
</html>

