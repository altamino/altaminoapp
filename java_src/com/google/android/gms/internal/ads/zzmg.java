package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmg implements Runnable {
    private final /* synthetic */ zzma zzavk;
    private final /* synthetic */ int zzavs;

    zzmg(zzma zzmaVar, int i) {
        this.zzavk = zzmaVar;
        this.zzavs = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavk.zzavi.zzag(this.zzavs);
    }
}
