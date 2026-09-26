package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class h implements com.google.android.datatransport.runtime.dagger.internal.b<String> {
    private final v7.a<Context> contextProvider;

    public static h a(v7.a<Context> aVar) {
        return new h(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String get() {
        return c(this.contextProvider.get());
    }

    public h(v7.a<Context> aVar) {
        this.contextProvider = aVar;
    }

    public static String c(Context context) {
        return (String) com.google.android.datatransport.runtime.dagger.internal.e.c(f.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
