using System;
using System.Web.UI;

namespace Comp229_Assign02
{
    public partial class ThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Thank You";
            
            // Only remains in the page if the survey is filled.
            if(Session["SurveyFilled"] as string != "Y")
            {
                Response.Redirect("~/Home");
            }

            // Clearing the session so the values are not re-used.
            Session.Clear();

            // Setting up the survey filling status.
            Session["SurveyFilled"] = "N";
        }

        protected string FormatPhoneNumber()
        {
            return UtilsHelper.FormatPhoneNumber(Session["PhoneNumber"] as string);
        }
    }
}