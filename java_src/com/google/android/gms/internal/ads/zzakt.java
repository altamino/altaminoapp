package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzakt implements zzbbt {
    private final /* synthetic */ zzakh zzdcn;
    private final /* synthetic */ zzala zzdcq;

    zzakt(zzakh zzakhVar, zzala zzalaVar) {
        this.zzdcn = zzakhVar;
        this.zzdcq = zzalaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbt
    public final void run() {
        synchronized (this.zzdcn.lock) {
            this.zzdcn.status = 1;
            zzawz.zzds("Failed loading new engine. Marking new engine destroyable.");
            this.zzdcq.zzrz();
        }
    }
}
