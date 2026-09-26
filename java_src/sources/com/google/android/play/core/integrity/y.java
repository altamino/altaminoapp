package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static v f1426a;

    static synchronized v a(Context context) {
        try {
            if (f1426a == null) {
                t tVar = new t(null);
                tVar.a(com.google.android.play.integrity.internal.f.a(context));
                f1426a = tVar.b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f1426a;
    }
}
