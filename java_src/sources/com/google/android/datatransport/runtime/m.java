package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes9.dex */
public abstract class m {
    private static final com.google.firebase.encoders.proto.h ENCODER = com.google.firebase.encoders.proto.h.a().d(a.CONFIG).c();

    public abstract h2.a b();

    public static byte[] a(Object obj) {
        return ENCODER.c(obj);
    }

    private m() {
    }
}
