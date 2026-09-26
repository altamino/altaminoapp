package m5;

import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes10.dex */
public class a {
    public static final int DEBUG = 4;
    public static final int ERROR = 1;
    private static final String ERROR_MESSAGE = "log message error : ";
    public static final int INFO = 3;
    public static final int LOG_LEVEL = 6;
    public static final int VERBOSE = 5;
    public static final int WARN = 2;

    public static <T> void b(String str, String str2, T... tArr) {
        if (str2 != null) {
            Log.e(str, c(str2, tArr));
        }
    }

    private static <T> String c(String str, T[] tArr) {
        try {
            return String.format(Locale.ENGLISH, str.replaceAll("\\{\\}", "%s"), tArr);
        } catch (IllegalFormatException | PatternSyntaxException e) {
            return ERROR_MESSAGE + e.getMessage();
        }
    }

    public static <T> void e(String str, String str2, T... tArr) {
        if (str2 != null) {
            Log.i(str, c(str2, tArr));
        }
    }

    public static void a(String str, String str2) {
        Log.e(str, str2);
    }

    public static void d(String str, String str2) {
        Log.i(str, str2);
    }
}
