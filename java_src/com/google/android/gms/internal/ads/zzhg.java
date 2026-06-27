package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzhg implements Runnable {
    private final /* synthetic */ zzhd zzafo;
    private final /* synthetic */ int zzafq;
    private final /* synthetic */ long zzafr;

    zzhg(zzhd zzhdVar, int i, long j) {
        this.zzafo = zzhdVar;
        this.zzafq = i;
        this.zzafr = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzafo.zzaev.zzb(this.zzafq, this.zzafr);
    }
}
