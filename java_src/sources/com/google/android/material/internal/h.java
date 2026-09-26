package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.RestrictTo;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class h {
    private static final String LGE = "lge";
    private static final String MEIZU = "meizu";
    private static final String SAMSUNG = "samsung";

    public static boolean a() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(MEIZU);
    }
}
