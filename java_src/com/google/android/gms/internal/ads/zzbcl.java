package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbcl implements Runnable {
    private final /* synthetic */ zzbcd zzebm;

    zzbcl(zzbcd zzbcdVar) {
        this.zzebm = zzbcdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzebm.zzebk != null) {
            this.zzebm.zzebk.zzxm();
        }
    }
}
