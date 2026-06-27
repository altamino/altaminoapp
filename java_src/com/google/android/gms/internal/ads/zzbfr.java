package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbfr implements Runnable {
    private final /* synthetic */ zzbfq zzehr;

    zzbfr(zzbfq zzbfqVar) {
        this.zzehr = zzbfqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzk.zzmc().zzb(this.zzehr);
    }
}
