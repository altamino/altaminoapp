package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public final class u0 implements com.google.android.datatransport.runtime.dagger.internal.b<t0> {
    private final v7.a<Context> contextProvider;
    private final v7.a<String> dbNameProvider;
    private final v7.a<Integer> schemaVersionProvider;

    public static u0 a(v7.a<Context> aVar, v7.a<String> aVar2, v7.a<Integer> aVar3) {
        return new u0(aVar, aVar2, aVar3);
    }

    public static t0 c(Context context, String str, int i10) {
        return new t0(context, str, i10);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public t0 get() {
        return c(this.contextProvider.get(), this.dbNameProvider.get(), this.schemaVersionProvider.get().intValue());
    }

    public u0(v7.a<Context> aVar, v7.a<String> aVar2, v7.a<Integer> aVar3) {
        this.contextProvider = aVar;
        this.dbNameProvider = aVar2;
        this.schemaVersionProvider = aVar3;
    }
}
