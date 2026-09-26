package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class k {
    public abstract com.google.android.datatransport.runtime.i b();

    public abstract long c();

    public abstract com.google.android.datatransport.runtime.p d();

    public static k a(long j6, com.google.android.datatransport.runtime.p pVar, com.google.android.datatransport.runtime.i iVar) {
        return new b(j6, pVar, iVar);
    }
}
