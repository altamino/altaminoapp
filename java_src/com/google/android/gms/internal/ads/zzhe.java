package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzhe implements Runnable {
    private final /* synthetic */ int zzafl;
    private final /* synthetic */ int zzafm;
    private final /* synthetic */ float zzafn;
    private final /* synthetic */ zzhd zzafo;

    zzhe(zzhd zzhdVar, int i, int i2, float f) {
        this.zzafo = zzhdVar;
        this.zzafl = i;
        this.zzafm = i2;
        this.zzafn = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzafo.zzaev.zza(this.zzafl, this.zzafm, this.zzafn);
    }
}
