package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
final class zzaxk implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzaxi zzdvz;

    zzaxk(zzaxi zzaxiVar, Context context) {
        this.zzdvz = zzaxiVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzdvz.zzdvw) {
            this.zzdvz.zzapq = zzaxi.zzam(this.val$context);
            this.zzdvz.zzdvw.notifyAll();
        }
    }
}
