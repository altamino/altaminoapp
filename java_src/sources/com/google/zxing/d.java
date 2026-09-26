package com.google.zxing;

/* JADX INFO: loaded from: classes.dex */
public final class d extends f {
    private static final d INSTANCE;

    static {
        d dVar = new d();
        INSTANCE = dVar;
        dVar.setStackTrace(f.NO_TRACE);
    }

    public static d a() {
        return f.isStackTrace ? new d() : INSTANCE;
    }

    private d() {
    }
}
