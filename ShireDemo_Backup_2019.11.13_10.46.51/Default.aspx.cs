using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace ShireDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void RadDataForm1_PreRender(object sender, EventArgs e)
        //{
            
        //    if (RadDataForm1.Skin != SelectedSkin)
        //    {
        //        RadDataForm1.Skin = SelectedSkin;
        //        RadDataForm1.Rebind();
        //    }
        //}

        //public string SelectedSkin
        //{
        //    get
        //    {
        //        return (string)Session[Telerik.QuickStart.QSFConstants.SelectedSkinLiteral] ?? ConfigurationManager.AppSettings["Telerik.Skin"];
        //    }
        //}
    }
}