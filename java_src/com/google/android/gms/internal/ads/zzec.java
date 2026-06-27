package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzec implements Runnable {
    private final /* synthetic */ zzdy zzxx;

    zzec(zzdy zzdyVar) {
        this.zzxx = zzdyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzacu.initialize(this.zzxx.zzlj);
    }
}
