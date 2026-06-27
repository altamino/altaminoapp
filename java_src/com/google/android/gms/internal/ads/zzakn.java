package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzakn implements Runnable {
    private final zzajw zzdck;

    private zzakn(zzajw zzajwVar) {
        this.zzdck = zzajwVar;
    }

    static Runnable zzb(zzajw zzajwVar) {
        return new zzakn(zzajwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdck.destroy();
    }
}
