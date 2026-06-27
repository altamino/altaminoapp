package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.ae;

/* loaded from: classes.dex */
public final class j {
    private static final ae a = new ae("SplitInstallInfoProvider");
    private final Context b;
    private final String c;
    private i d;
    private b e;

    public static boolean a(String str) {
        return str.startsWith("config.");
    }

    public static boolean b(String str) {
        return str.startsWith("config.") || str.contains(".config.");
    }

    public static String c(String str) {
        return str.startsWith("config.") ? "" : str.split("\\.config\\.", 2)[0];
    }
}
