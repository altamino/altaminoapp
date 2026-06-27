package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzakp implements zzaho<zzalf> {
    private final /* synthetic */ zzajw zzdcm;
    private final /* synthetic */ zzakh zzdcn;
    private final /* synthetic */ zzdh zzdco;
    private final /* synthetic */ zzazk zzdcp;

    zzakp(zzakh zzakhVar, zzdh zzdhVar, zzajw zzajwVar, zzazk zzazkVar) {
        this.zzdcn = zzakhVar;
        this.zzdco = zzdhVar;
        this.zzdcm = zzajwVar;
        this.zzdcp = zzazkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzalf zzalfVar, Map map) {
        synchronized (this.zzdcn.lock) {
            zzbad.zzeo("JS Engine is requesting an update");
            if (this.zzdcn.status == 0) {
                zzbad.zzeo("Starting reload.");
                this.zzdcn.status = 2;
                this.zzdcn.zza(this.zzdco);
            }
            this.zzdcm.zzb("/requestReload", (zzaho<? super zzalf>) this.zzdcp.get());
        }
    }
}
