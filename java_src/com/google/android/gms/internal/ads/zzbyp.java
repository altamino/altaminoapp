package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzbyp implements Runnable {
    private final zzbzb zzfnz;

    private zzbyp(zzbzb zzbzbVar) {
        this.zzfnz = zzbzbVar;
    }

    static Runnable zza(zzbzb zzbzbVar) {
        return new zzbyp(zzbzbVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfnz.zzahm();
    }
}
