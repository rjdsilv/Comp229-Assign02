using System;

namespace Comp229_Assign02
{
    /**
     * Class containing methods to deal with dates.
     */
    public class UtilsHelper
    {

        /*
         * The greater birthdate accepted to access the website will be.
         * This method will calculate 16 years from the current date.
         */
        public static string MaxBirthDate()
        {
            return DateTime.Now.AddYears(-16).ToString("yyyy/MM/dd", null);
        }

        /*
         * This method will format a 10 digit phone number to be in the format (ddd) ddd-dddd
         */
        public static string FormatPhoneNumber(string phoneNumber)
        {
            return "(" + phoneNumber.Substring(0, 3) + ") " + phoneNumber.Substring(3, 3) + "-" + phoneNumber.Substring(6);
        }
    }
}