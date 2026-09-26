package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements com.google.android.datatransport.runtime.dagger.internal.b<Executor> {

    private static final class a {
        private static final k INSTANCE = new k();
    }

    public static k a() {
        return a.INSTANCE;
    }

    public static Executor b() {
        return (Executor) com.google.android.datatransport.runtime.dagger.internal.e.c(j.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // v7.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return b();
    }
}
