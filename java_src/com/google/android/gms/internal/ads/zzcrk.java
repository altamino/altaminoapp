package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcrk implements zzcva<Object> {
    private final Executor zzffi;
    private final zzbbh<String> zzggd;

    public zzcrk(zzbbh<String> zzbbhVar, Executor executor) {
        this.zzggd = zzbbhVar;
        this.zzffi = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<Object> zzalm() {
        return zzbar.zza(this.zzggd, zzcrl.zzbqz, this.zzffi);
    }
}
