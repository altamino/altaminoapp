package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes.dex */
public final class i implements com.google.android.datatransport.runtime.dagger.internal.b<Integer> {

    private static final class a {
        private static final i INSTANCE = new i();
    }

    public static i a() {
        return a.INSTANCE;
    }

    public static int c() {
        return f.c();
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer get() {
        return Integer.valueOf(c());
    }
}
