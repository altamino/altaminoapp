package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzbz implements Runnable {
    private final /* synthetic */ zzdc zzoo;
    private final /* synthetic */ zzby zzop;

    zzbz(zzby zzbyVar, zzdc zzdcVar) {
        this.zzop = zzbyVar;
        this.zzoo = zzdcVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzop.zza(this.zzoo);
        this.zzop.start();
    }
}
