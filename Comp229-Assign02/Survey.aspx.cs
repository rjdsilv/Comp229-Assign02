using System;
using System.Web.UI;

namespace Comp229_Assign02
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Satisfaction Survey";
            FirstNameTextBox.Focus();
            BirthDateTextBox_RangeValidator.MaximumValue = DateManipulator.MaxBirthDate();
        }

        protected void SubmitSurveyButton_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = FirstNameTextBox.Text;
            Session["LastName"] = LastNameTextBox.Text;
            Session["BirthDate"] = BirthDateTextBox.Text;
            Session["Province"] = ProvinceDropDown.SelectedValue;
            Session["City"] = CityTextBox.Text;
            Session["PhoneNumber"] = PhoneNumberTextBox.Text;
            Session["Email"] = EmailTextBox.Text;
        }
    }
}