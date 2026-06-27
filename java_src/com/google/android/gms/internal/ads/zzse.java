package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zzse {
    private final ExecutorService zzaqh;
    private zzsg<? extends zzsh> zzbmr;
    private IOException zzbms;

    public zzse(String str) {
        this.zzaqh = zzsy.zzax(str);
    }

    public final <T extends zzsh> long zza(T t, zzsf<T> zzsfVar, int i) {
        Looper looperMyLooper = Looper.myLooper();
        zzsk.checkState(looperMyLooper != null);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new zzsg(this, looperMyLooper, t, zzsfVar, i, jElapsedRealtime).zzeq(0L);
        return jElapsedRealtime;
    }

    public final boolean isLoading() {
        return this.zzbmr != null;
    }

    public final void zzgb() {
        this.zzbmr.zzl(false);
    }

    public final void zza(Runnable runnable) {
        zzsg<? extends zzsh> zzsgVar = this.zzbmr;
        if (zzsgVar != null) {
            zzsgVar.zzl(true);
        }
        this.zzaqh.execute(runnable);
        this.zzaqh.shutdown();
    }

    public final void zzbm(int i) throws IOException {
        IOException iOException = this.zzbms;
        if (iOException != null) {
            throw iOException;
        }
        zzsg<? extends zzsh> zzsgVar = this.zzbmr;
        if (zzsgVar != null) {
            zzsgVar.zzbm(zzsgVar.zzbmv);
        }
    }
}
