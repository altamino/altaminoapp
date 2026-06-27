package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzbbn implements Executor {
    private final Handler zzeai = new zzaxa(Looper.getMainLooper());

    zzbbn() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzk.zzlg();
                zzaxi.zza(com.google.android.gms.ads.internal.zzk.zzlk().getApplicationContext(), th);
                throw th;
            }
        }
        this.zzeai.post(runnable);
    }
}
