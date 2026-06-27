package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzclg implements Runnable {
    private final zzced zzgar;

    private zzclg(zzced zzcedVar) {
        this.zzgar = zzcedVar;
    }

    static Runnable zza(zzced zzcedVar) {
        return new zzclg(zzcedVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgar.zzajo();
    }
}
