package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes.dex */
public final class j implements com.google.android.datatransport.runtime.dagger.internal.b<e> {

    private static final class a {
        private static final j INSTANCE = new j();
    }

    public static j a() {
        return a.INSTANCE;
    }

    public static e c() {
        return (e) com.google.android.datatransport.runtime.dagger.internal.e.c(f.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e get() {
        return c();
    }
}
