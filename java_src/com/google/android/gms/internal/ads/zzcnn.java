package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcnn implements Runnable {
    private final zzced zzgar;

    private zzcnn(zzced zzcedVar) {
        this.zzgar = zzcedVar;
    }

    static Runnable zza(zzced zzcedVar) {
        return new zzcnn(zzcedVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgar.zzajo();
    }
}
