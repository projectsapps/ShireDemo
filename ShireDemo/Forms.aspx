﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Forms.aspx.cs" Inherits="ShireDemo.Forms" %>

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

<%--<%--<%@ Register TagPrefix="qsf" Namespace="Telerik.QuickStart" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
    <title>Forms</title>
    
    <link href="styles/style.css" rel="stylesheet" type="text/css"/>
    
    <script src="scripts/scripts.js"  type="text/javascript"></script>
</head>
  

<body>
    
    
    <form id="form1" runat="server">
    <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <div id="rfd-demo-zone" class="demo-containers">
        <div class="validationSummary">
            <telerik:RadFormDecorator RenderMode="Lightweight" ID="RadFormDecorator1" runat="server" DecoratedControls="All"
                DecorationZoneID="rfd-demo-zone" ControlsToSkip="Zone"></telerik:RadFormDecorator>
           
            <div class="demo-container size-custom mtFix">
                  <div id="logo-container">
    <asp:Image ID="image2" runat="server" ImageUrl="~/images/sitelogo.png" /></div>
  
                <asp:Panel runat="server" ID="Panel4">
                       
                    <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" Width="100%" EnableViewState="false"
                        OnCreatingUser="CreateUserWizard2_OnCreatingUser">
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep2" runat="server">
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep ID="CompleteWizardStep2" runat="server">
                            </asp:CompleteWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                   
                    <asp:Label ID="LabelCreateUser" Text="" Font-Size="Large" ForeColor="Green" runat="server"></asp:Label>
                </asp:Panel>
            </div>
 
        </div>
    </div>
 
    <telerik:RadAjaxManager runat="server" ID="AjaxManager1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="Configurator1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Configurator1" />
                    <telerik:AjaxUpdatedControl ControlID="RadFormDecorator1" />
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="Panel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="Panel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="Panel4" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
 
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
    </telerik:RadAjaxLoadingPanel>
 
       <qsf:ConfiguratorPanel runat="server" ID="Configurator1">
            <views>
            <qsf:View>
                <qsf:ConfiguratorColumn runat="server" Title="Enable/Disable FormDecorator" Size="Medium">
                    <qsf:RadioButtonList ID="toggleDecorator" runat="server" AutoPostBack="true" Orientation="Horizontal">
                        <asp:ListItem Text="Enable" Value="1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Disable" Value="0"></asp:ListItem>
                    </qsf:RadioButtonList>
                </qsf:ConfiguratorColumn>
                <qsf:ConfiguratorColumn runat="server" Title="Reset Forms" Size="Medium">
                    <qsf:Button runat="server" Text="Reset" Size="Medium" OnClientClicked="TelerikDemo.ResetPage"
                         AutoPostBack="false" CausesValidation="false"></qsf:Button>
                </qsf:ConfiguratorColumn>
            </qsf:View>
        </views>
        </qsf:ConfiguratorPanel>--%>
    </form>
</body>
</html>--%>