package c6;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final int ALL = 5;
    public static final int ERRORS_ONLY = 1;
    public static final int ERRORS_WARNINGS = 2;
    public static final int ERRORS_WARNINGS_INFO = 3;
    public static final int ERRORS_WARNINGS_INFO_DEBUG = 4;
    public static int LOGGING_LEVEL = 5;
    public static final int NONE = 0;
    private static final String TAG = "RootBeer";
    private static final String TAG_GENERAL_OUTPUT = "QLog";

    public static boolean d() {
        return LOGGING_LEVEL > 0;
    }

    public static boolean e() {
        return LOGGING_LEVEL > 4;
    }

    private static String c() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String methodName = stackTrace[2].getMethodName();
        String className = stackTrace[2].getClassName();
        int lineNumber = stackTrace[2].getLineNumber();
        return className.substring(className.lastIndexOf(46) + 1) + ": " + methodName + "() [" + lineNumber + "] - ";
    }

    public static void a(Exception exc) {
        if (d()) {
            exc.printStackTrace();
        }
    }

    public static void b(Object obj) {
        if (d()) {
            Log.e(TAG, c() + String.valueOf(obj));
            Log.e(TAG_GENERAL_OUTPUT, c() + String.valueOf(obj));
        }
    }

    public static void f(Object obj) {
        if (e()) {
            Log.v(TAG, c() + String.valueOf(obj));
        }
    }
}
