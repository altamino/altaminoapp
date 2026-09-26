package com.bytedance.tea.common.utility;

import android.content.Context;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes9.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f918a = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f920c = "";
    private static int d = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static a f919b = new a();

    public static class a {
    }

    public static final int a(Context context) {
        DisplayMetrics displayMetrics;
        if (context == null || (displayMetrics = context.getResources().getDisplayMetrics()) == null) {
            return 0;
        }
        return displayMetrics.widthPixels;
    }

    public static final int b(Context context) {
        DisplayMetrics displayMetrics;
        if (context == null || (displayMetrics = context.getResources().getDisplayMetrics()) == null) {
            return 0;
        }
        return displayMetrics.heightPixels;
    }

    public static String c(Context context) {
        if (d.a(f920c) && context != null) {
            int iA = a(context);
            int iB = b(context);
            if (iA > 0 && iB > 0) {
                f920c = iA + "*" + iB;
            }
        }
        return f920c;
    }

    public static int d(Context context) {
        if (d == -1 && context != null) {
            d = context.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
        }
        return d;
    }
}
