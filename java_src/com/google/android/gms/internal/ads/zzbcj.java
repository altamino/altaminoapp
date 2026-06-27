package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbcj implements Runnable {
    private final /* synthetic */ zzbcd zzebm;
    private final /* synthetic */ int zzebp;
    private final /* synthetic */ int zzebq;

    zzbcj(zzbcd zzbcdVar, int i, int i2) {
        this.zzebm = zzbcdVar;
        this.zzebp = i;
        this.zzebq = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzebm.zzebk != null) {
            this.zzebm.zzebk.zzk(this.zzebp, this.zzebq);
        }
    }
}
