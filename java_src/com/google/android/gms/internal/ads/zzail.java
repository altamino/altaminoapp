package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzail implements Runnable {
    private final /* synthetic */ zzaii zzdaz;

    zzail(zzaii zzaiiVar) {
        this.zzdaz = zzaiiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdaz.disconnect();
    }
}
