package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbci implements Runnable {
    private final /* synthetic */ zzbcd zzebm;

    zzbci(zzbcd zzbcdVar) {
        this.zzebm = zzbcdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzebm.zzebk != null) {
            this.zzebm.zzebk.zzxl();
        }
    }
}
