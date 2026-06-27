package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zzjz {
    private final ExecutorService zzaqh;
    private zzkb zzaqi;
    private boolean zzaqj;

    public zzjz(String str) {
        this.zzaqh = zzkq.zzax(str);
    }

    public final void zza(zzkc zzkcVar, zzka zzkaVar) {
        Looper looperMyLooper = Looper.myLooper();
        zzkh.checkState(looperMyLooper != null);
        zzkh.checkState(!this.zzaqj);
        this.zzaqj = true;
        this.zzaqi = new zzkb(this, looperMyLooper, zzkcVar, zzkaVar, 0);
        this.zzaqh.submit(this.zzaqi);
    }

    public final boolean isLoading() {
        return this.zzaqj;
    }

    public final void zzgb() {
        zzkh.checkState(this.zzaqj);
        this.zzaqi.quit();
    }

    public final void release() {
        if (this.zzaqj) {
            zzgb();
        }
        this.zzaqh.shutdown();
    }

    static /* synthetic */ boolean zza(zzjz zzjzVar, boolean z) {
        zzjzVar.zzaqj = false;
        return false;
    }

    static /* synthetic */ zzkb zza(zzjz zzjzVar, zzkb zzkbVar) {
        zzjzVar.zzaqi = null;
        return null;
    }
}
