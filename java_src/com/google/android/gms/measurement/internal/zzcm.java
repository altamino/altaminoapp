package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzcm implements Runnable {
    private final /* synthetic */ zzaj zzdj;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzca zzot;

    zzcm(zzca zzcaVar, zzaj zzajVar, String str) {
        this.zzot = zzcaVar;
        this.zzdj = zzajVar;
        this.zzdk = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzd(this.zzdj, this.zzdk);
    }
}
