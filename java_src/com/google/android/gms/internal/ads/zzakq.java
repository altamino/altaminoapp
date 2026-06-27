package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzakq implements Runnable {
    private final /* synthetic */ zzala zzdcl;
    private final /* synthetic */ zzajw zzdcm;
    private final /* synthetic */ zzakh zzdcn;

    zzakq(zzakh zzakhVar, zzala zzalaVar, zzajw zzajwVar) {
        this.zzdcn = zzakhVar;
        this.zzdcl = zzalaVar;
        this.zzdcm = zzajwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzdcn.lock) {
            if (this.zzdcl.getStatus() != -1 && this.zzdcl.getStatus() != 1) {
                this.zzdcl.reject();
                Executor executor = zzbbm.zzeae;
                zzajw zzajwVar = this.zzdcm;
                zzajwVar.getClass();
                executor.execute(zzakr.zzb(zzajwVar));
                zzawz.zzds("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
