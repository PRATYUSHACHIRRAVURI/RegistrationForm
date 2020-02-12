using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void ValidateForm()
        {
            if(string.IsNullOrEmpty(fn.Text))
            {
               lblfn.Text="Please enter required fields";
            }
            else
            {
                lblfn.Text = " ";
            }
            if (string.IsNullOrEmpty(ln.Text))
            {
                lblln.Text = "Please enter required fields";
            }
            else
            {
                lblln.Text = " ";
            }
            if (string.IsNullOrEmpty(em.Text))
            {
                lblem.Text = "Please enter required fields";
            }
            else
            {
                lblem.Text = " ";
            }
            if (string.IsNullOrEmpty(pn.Text))
            {
                lblpn.Text = "Please enter required fields";
            }
            else
            {
                lblpn.Text = " ";
            }

        }
        protected void btnSubmit_Click(object sender,EventArgs e)
        {
            ValidateForm();
        }


    }
}