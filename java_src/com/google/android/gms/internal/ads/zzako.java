package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzako implements zzaho<zzalf> {
    private final /* synthetic */ zzala zzdcl;
    private final /* synthetic */ zzajw zzdcm;
    private final /* synthetic */ zzakh zzdcn;

    zzako(zzakh zzakhVar, zzala zzalaVar, zzajw zzajwVar) {
        this.zzdcn = zzakhVar;
        this.zzdcl = zzalaVar;
        this.zzdcm = zzajwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzalf zzalfVar, Map map) {
        synchronized (this.zzdcn.lock) {
            if (this.zzdcl.getStatus() != -1 && this.zzdcl.getStatus() != 1) {
                this.zzdcn.status = 0;
                this.zzdcn.zzdcb.zzh(this.zzdcm);
                this.zzdcl.zzo(this.zzdcm);
                this.zzdcn.zzdcd = this.zzdcl;
                zzawz.zzds("Successfully loaded JS Engine.");
            }
        }
    }
}
