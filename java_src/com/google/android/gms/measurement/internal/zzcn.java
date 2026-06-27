package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzcn implements Callable<byte[]> {
    private final /* synthetic */ zzaj zzdj;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzca zzot;

    zzcn(zzca zzcaVar, zzaj zzajVar, String str) {
        this.zzot = zzcaVar;
        this.zzdj = zzajVar;
        this.zzdk = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        this.zzot.zzkt.zzgf();
        return this.zzot.zzkt.zzfx().zzb(this.zzdj, this.zzdk);
    }
}
