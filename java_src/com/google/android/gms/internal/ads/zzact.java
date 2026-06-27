package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
final class zzact<T> implements Callable<T> {
    private final /* synthetic */ zzacj zzckr;
    private final /* synthetic */ zzacr zzcks;

    zzact(zzacr zzacrVar, zzacj zzacjVar) {
        this.zzcks = zzacrVar;
        this.zzckr = zzacjVar;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return (T) this.zzckr.zza(this.zzcks.zzckn);
    }
}
