package com.google.android.play.integrity.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    public static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }
}
