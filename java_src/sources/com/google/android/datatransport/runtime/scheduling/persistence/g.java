package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes.dex */
public final class g implements com.google.android.datatransport.runtime.dagger.internal.b<String> {

    private static final class a {
        private static final g INSTANCE = new g();
    }

    public static g a() {
        return a.INSTANCE;
    }

    public static String b() {
        return (String) com.google.android.datatransport.runtime.dagger.internal.e.c(f.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // v7.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String get() {
        return b();
    }
}
