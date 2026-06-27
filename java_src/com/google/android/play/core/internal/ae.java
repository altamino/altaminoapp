package com.google.android.play.core.internal;

import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;

/* loaded from: classes.dex */
public class ae {
    private final String a;

    public ae(String str) {
        int iMyUid = Process.myUid();
        int iMyPid = Process.myPid();
        StringBuilder sb = new StringBuilder(39);
        sb.append("UID: [");
        sb.append(iMyUid);
        sb.append("]  PID: [");
        sb.append(iMyPid);
        sb.append("] ");
        String strValueOf = String.valueOf(sb.toString());
        String strValueOf2 = String.valueOf(str);
        this.a = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private int a(int i, String str, Object[] objArr) {
        if (Log.isLoggable("PlayCore", i)) {
            return Log.i("PlayCore", a(this.a, str, objArr));
        }
        return 0;
    }

    public static af a() {
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.PREVIEW_SDK_INT != 0) {
            int i = Build.VERSION.SDK_INT;
            if (i == 27) {
                return new ax();
            }
            if (i == 28) {
                return new aw();
            }
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            throw new AssertionError("Unsupported Android Version");
        }
        switch (i2) {
            case 21:
                return new ah();
            case 22:
                return new ak();
            case 23:
                return new an();
            case 24:
                return new ar();
            case 25:
                return new aq();
            case 26:
                return new at();
            case 27:
                return new au();
            case 28:
                if (!Build.VERSION.CODENAME.equalsIgnoreCase("Q")) {
                    return new ax();
                }
                break;
        }
        return new aw();
    }

    private static String a(String str, String str2, Object... objArr) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        String string = sb.toString();
        if (objArr == null || objArr.length <= 0) {
            return string;
        }
        try {
            return String.format(Locale.US, string, objArr);
        } catch (IllegalFormatException e) {
            String strValueOf = String.valueOf(string);
            Log.e("PlayCore", strValueOf.length() != 0 ? "Unable to format ".concat(strValueOf) : new String("Unable to format "), e);
            String strValueOf2 = String.valueOf(string);
            String strJoin = TextUtils.join(", ", objArr);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 3 + String.valueOf(strJoin).length());
            sb2.append(strValueOf2);
            sb2.append(" [");
            sb2.append(strJoin);
            sb2.append("]");
            return sb2.toString();
        }
    }

    public int a(String str, Object... objArr) {
        return a(4, str, objArr);
    }

    public int b(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public int c(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public int d(String str, Object... objArr) {
        return a(6, str, objArr);
    }
}
