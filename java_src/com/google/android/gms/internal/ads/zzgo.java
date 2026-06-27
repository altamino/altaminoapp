package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzgo implements Runnable {
    private final /* synthetic */ zzhu zzadc;
    private final /* synthetic */ zzgn zzadd;

    zzgo(zzgn zzgnVar, zzhu zzhuVar) {
        this.zzadd = zzgnVar;
        this.zzadc = zzhuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzadd.zzacy.zza(this.zzadc);
    }
}
