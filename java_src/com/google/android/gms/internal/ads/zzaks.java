package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzaks implements zzbbv<zzajw> {
    private final /* synthetic */ zzakh zzdcn;
    private final /* synthetic */ zzala zzdcq;

    zzaks(zzakh zzakhVar, zzala zzalaVar) {
        this.zzdcn = zzakhVar;
        this.zzdcq = zzalaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbv
    public final /* synthetic */ void zzh(zzajw zzajwVar) {
        synchronized (this.zzdcn.lock) {
            this.zzdcn.status = 0;
            if (this.zzdcn.zzdcd != null && this.zzdcq != this.zzdcn.zzdcd) {
                zzawz.zzds("New JS engine is loaded, marking previous one as destroyable.");
                this.zzdcn.zzdcd.zzrz();
            }
            this.zzdcn.zzdcd = this.zzdcq;
        }
    }
}
