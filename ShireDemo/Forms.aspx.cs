﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Telerik.Web.UI;
using System.Data;
using Telerik.Web.UI.Skins;
using ShireDemo;
using System.Data.SqlClient;

namespace ShireDemo
{
    public partial class Forms : System.Web.UI.Page
    {
        public object DecoratedControlsRadioList { get; private set; }
        public object FormDecorator1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (toggleDecorator.SelectedValue != "1")
            //    RadFormDecorator1.DecoratedControls = UI.FormDecoratorDecoratedControls.None;
            //else
            //    RadFormDecorator1.DecoratedControls = UI.FormDecoratorDecoratedControls.All;
        }

        //protected void Login2_LogginIn(object sender, LoginCancelEventArgs e)
        //{
        //    e.Cancel = true;
        //    //LabelLogin.Text = "Welcome back, " + (Login2.FindControl("UserName") as TextBox).Text;
        //}

        //protected void ChangePassword1_ChangingPassword(Object sender, LoginCancelEventArgs e)
        //{
        //    e.Cancel = true;
        //    //LabelChangePassword.Text = "You have successfully changed your password!";
        //}

        //protected void CreateUserWizard2_OnCreatingUser(object sender, LoginCancelEventArgs e)
        //{
        //    e.Cancel = true;
        //    LabelCreateUser.Text = "User <i>" + (sender as CreateUserWizard).UserName + "</i> created! Welcome aboard!";
        //}
        public class Member
        {
            public int ID { get; set; }
            public string Company { get; set; }
            public int unitNo { get; set; }
            public string FluidLevels { get; set; }
            public string Dates { get; set; }
        }
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["test1Entities"].ConnectionString;
        }
        public void ExecuteInsert(Member member)
        {
            using (SqlConnection sqlConn = new SqlConnection(GetConnectionString()))
            {
                string sql = "Insert Into testtbl (company,unitno,fluidlevels,dates) " +
                    "Values(@company,@unitno,@fluidlevels,@dates)";
                using (SqlCommand sqlCmd = new SqlCommand(sql, sqlConn))
                {
                    sqlCmd.Parameters.AddWithValue("@company", member.Company);
                    sqlCmd.Parameters.AddWithValue("@unitno", member.unitNo);
                    sqlCmd.Parameters.AddWithValue("@fluidlevels", member.FluidLevels);
                    sqlCmd.Parameters.AddWithValue("@dates", member.Dates);
                    sqlConn.Open();
                    sqlCmd.CommandType = CommandType.Text;
                    sqlCmd.ExecuteNonQuery();
                }
            }

        }
        string isOkay = "";
        public void InsertInfo()
        {
            if (Company.Text != "" && Unitno.Text != "" && fluidlevels.Text != "")
            {
                isOkay = "OK";

            }
            else if (Company.Text != "" || Unitno.Text != "" || fluidlevels.Text != "")
            {
                isOkay = "ERROR";
            }

        }
        public void ButtonClick_Event(object sender, EventArgs e)
        {
            if (isOkay == "OK")
            {
                Member member = new Member();
                member.Company = Company.Text; member.unitNo = int.Parse(Unitno.Text);
                member.FluidLevels = fluidlevels.Text; member.Dates = dates.Text.ToString();
                ExecuteInsert(member);
                Response.Write("Record was successfully Submitted");
                ClearControls(Page);
            }
            else if (isOkay == "ERROR")
            {
                Response.Write("Oh snap!, Some field is empty!");
            }
        }
        private static void ClearControls(Control Parent)
        {
            if (Parent is TextBox)
            { (Parent as TextBox).Text = string.Empty; }
            else
            {
                foreach (Control c in Parent.Controls)
                    ClearControls(c);
            }
        }
    }

}