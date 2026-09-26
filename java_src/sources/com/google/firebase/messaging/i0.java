package com.google.firebase.messaging;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i0 {
    private static final com.google.firebase.encoders.proto.h ENCODER = com.google.firebase.encoders.proto.h.a().d(a.CONFIG).c();

    public abstract t4.b b();

    public static byte[] a(Object obj) {
        return ENCODER.c(obj);
    }

    private i0() {
    }
}
