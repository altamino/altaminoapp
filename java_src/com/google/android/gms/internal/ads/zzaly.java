package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzaly {
    private zzakh zzddw;
    private zzbbr<zzalf> zzddx;

    zzaly(zzakh zzakhVar) {
        this.zzddw = zzakhVar;
    }

    private final void zzsd() {
        if (this.zzddx == null) {
            this.zzddx = new zzbbr<>();
            final zzbbr<zzalf> zzbbrVar = this.zzddx;
            this.zzddw.zzb((zzdh) null).zza(new zzbbv(zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzalz
                private final zzbbr zzbxh;

                {
                    this.zzbxh = zzbbrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbbv
                public final void zzh(Object obj) {
                    this.zzbxh.set((zzalf) obj);
                }
            }, new zzbbt(zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzama
                private final zzbbr zzbxh;

                {
                    this.zzbxh = zzbbrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbbt
                public final void run() {
                    this.zzbxh.setException(new zzali("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzamd zzb(String str, zzalm zzalmVar, zzall zzallVar) {
        zzsd();
        return new zzamd(this.zzddx, str, zzalmVar, zzallVar);
    }

    public final void zzc(final String str, final zzaho<? super zzalf> zzahoVar) {
        zzsd();
        this.zzddx = (zzbbr) zzbar.zza(this.zzddx, new zzbal(str, zzahoVar) { // from class: com.google.android.gms.internal.ads.zzamb
            private final zzaho zzdbq;
            private final String zzddy;

            {
                this.zzddy = str;
                this.zzdbq = zzahoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                zzalf zzalfVar = (zzalf) obj;
                zzalfVar.zza(this.zzddy, this.zzdbq);
                return zzbar.zzm(zzalfVar);
            }
        }, zzbbm.zzeaf);
    }

    public final void zzd(final String str, final zzaho<? super zzalf> zzahoVar) {
        this.zzddx = (zzbbr) zzbar.zza(this.zzddx, new zzbam(str, zzahoVar) { // from class: com.google.android.gms.internal.ads.zzamc
            private final zzaho zzdbq;
            private final String zzddy;

            {
                this.zzddy = str;
                this.zzdbq = zzahoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                zzalf zzalfVar = (zzalf) obj;
                zzalfVar.zzb(this.zzddy, this.zzdbq);
                return zzalfVar;
            }
        }, zzbbm.zzeaf);
    }
}
