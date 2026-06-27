package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzckf implements Runnable {
    private final zzbgz zzemf;

    private zzckf(zzbgz zzbgzVar) {
        this.zzemf = zzbgzVar;
    }

    static Runnable zzo(zzbgz zzbgzVar) {
        return new zzckf(zzbgzVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzemf.zzaav();
    }
}
