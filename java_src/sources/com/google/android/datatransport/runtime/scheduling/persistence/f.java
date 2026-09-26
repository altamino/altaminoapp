package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    static String a() {
        return "com.google.android.datatransport.events";
    }

    static int c() {
        return t0.SCHEMA_VERSION;
    }

    static e d() {
        return e.DEFAULT;
    }

    static String b(Context context) {
        return context.getPackageName();
    }
}
