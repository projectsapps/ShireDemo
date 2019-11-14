<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Forms.aspx.cs" Inherits="ShireDemo.Forms" %>

<%--<%@ Register TagPrefix="qsf" Namespace="Telerik.QuickStart" %>--%>
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
 
       <%-- <qsf:ConfiguratorPanel runat="server" ID="Configurator1">
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
</html>