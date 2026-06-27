package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbcg implements Runnable {
    private final /* synthetic */ zzbcd zzebm;

    zzbcg(zzbcd zzbcdVar) {
        this.zzebm = zzbcdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzebm.zzebk != null) {
            this.zzebm.zzebk.zzxn();
        }
    }
}
