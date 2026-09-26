package com.google.android.exoplayer2.util;

import android.os.Trace;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
public final class m0 {
    public static void a(String str) {
        if (o0.SDK_INT >= 18) {
            b(str);
        }
    }

    public static void c() {
        if (o0.SDK_INT >= 18) {
            d();
        }
    }

    @RequiresApi
    private static void b(String str) {
        Trace.beginSection(str);
    }

    @RequiresApi
    private static void d() {
        Trace.endSection();
    }
}
