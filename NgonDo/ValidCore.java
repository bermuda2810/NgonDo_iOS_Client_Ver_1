/**
 * Validation helper class.
 * 
 * @author Bookmark
 */

package org.bookmark.helper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ValidCore {

    /**
     * Validate email, commonly used characters only
     * 
     * @param string
     *            email address
     * @return boolean
     */
    public static boolean email(final String email) {
        final Pattern pattern = Pattern.compile("^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$",
                Pattern.CASE_INSENSITIVE);
        final Matcher matcher = pattern.matcher(email);

        if (matcher.matches()) return true;
        else return false;
    }

    /**
     * Validate string length
     * 
     * @param string
     *            input string
     * @param int min char
     * @return boolean
     */

    public static boolean length(final String str, final int min) {
        final int strlen = str.length();

        if (strlen < min) return false;
        else return true;
    }

    /**
     * Validate string length
     * 
     * @param string
     *            input string
     * @param int min char
     * @param int max char
     * @return boolean
     */
    public static boolean length(final String str, final int min, final int max) {
        final int strlen = str.length();

        if (strlen < min || strlen > max) return false;
        else return true;
    }

    /**
     * Checks whether a string consists of alphabetical characters, numbers, underscores and dashes
     * only.
     * 
     * @param string
     *            input string
     * @return boolean
     */
    public static boolean alpha_dash(final String input) {
        final Pattern pattern = Pattern.compile("/^[-a-z0-9_]++$/", Pattern.CASE_INSENSITIVE);
        final Matcher matcher = pattern.matcher(input);

        if (!matcher.matches()) return true;
        else return false;
    }

    /**
     * Checks whether a string is a valid number (negative and decimal numbers allowed).
     * 
     * @param string
     *            input string
     * @return boolean
     */

    public static boolean numeric(final String input) {
        final Pattern pattern = Pattern.compile("^[-+]?[0-9]*\\.?[0-9]+$");
        final Matcher matcher = pattern.matcher(input);

        if (matcher.matches()) return true;
        else return false;
    }
}
