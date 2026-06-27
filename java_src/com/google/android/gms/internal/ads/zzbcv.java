package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbcv implements Runnable {
    private final /* synthetic */ zzbcq zzecn;
    private final /* synthetic */ boolean zzeco;

    zzbcv(zzbcq zzbcqVar, boolean z) {
        this.zzecn = zzbcqVar;
        this.zzeco = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzecn.zzd("windowVisibilityChanged", "isVisible", String.valueOf(this.zzeco));
    }
}
