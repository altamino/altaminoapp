package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbct implements Runnable {
    private final /* synthetic */ zzbcq zzecn;

    zzbct(zzbcq zzbcqVar) {
        this.zzecn = zzbcqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzecn.zzd("surfaceCreated", new String[0]);
    }
}
