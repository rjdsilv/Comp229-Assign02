using System;

namespace Comp229_Assign02
{
    /**
     * Class containing methods to deal with dates.
     */
    public class DateManipulator
    {

        /*
         * The greater birthdate accepted to access the website will be.
         * This method will calculate 16 years from the current date.
         */
        public static string MaxBirthDate()
        {
            return DateTime.Now.AddYears(-16).ToString("yyyy/MM/dd", null);
        }
    }
}