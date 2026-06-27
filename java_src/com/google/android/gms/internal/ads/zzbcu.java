package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbcu implements Runnable {
    private final /* synthetic */ zzbcq zzecn;

    zzbcu(zzbcq zzbcqVar) {
        this.zzecn = zzbcqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzecn.zzd("surfaceDestroyed", new String[0]);
    }
}
