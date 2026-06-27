package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzbcr implements Runnable {
    private final zzbco zzeck;

    private zzbcr(zzbco zzbcoVar) {
        this.zzeck = zzbcoVar;
    }

    static Runnable zza(zzbco zzbcoVar) {
        return new zzbcr(zzbcoVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeck.stop();
    }
}
