package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbns implements zzdti<zzbuz<zzbsr>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcxm> zzfgo;
    private final zzbnk zzfhp;
    private final zzdtu<zzcxv> zzfhr;

    public zzbns(zzbnk zzbnkVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzcxv> zzdtuVar4) {
        this.zzfhp = zzbnkVar;
        this.zzeoj = zzdtuVar;
        this.zzfej = zzdtuVar2;
        this.zzfgo = zzdtuVar3;
        this.zzfhr = zzdtuVar4;
    }

    public static zzbuz<zzbsr> zza(zzbnk zzbnkVar, final Context context, final zzbai zzbaiVar, final zzcxm zzcxmVar, final zzcxv zzcxvVar) {
        return (zzbuz) zzdto.zza(new zzbuz(new zzbsr(context, zzbaiVar, zzcxmVar, zzcxvVar) { // from class: com.google.android.gms.internal.ads.zzbnl
            private final Context zzdef;
            private final zzbai zzfhl;
            private final zzcxm zzfhm;
            private final zzcxv zzfhn;

            {
                this.zzdef = context;
                this.zzfhl = zzbaiVar;
                this.zzfhm = zzcxmVar;
                this.zzfhn = zzcxvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbsr
            public final void onAdLoaded() {
                com.google.android.gms.ads.internal.zzk.zzlq().zzb(this.zzdef, this.zzfhl.zzbsx, this.zzfhm.zzgkj.toString(), this.zzfhn.zzglb);
            }
        }, zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp, this.zzeoj.get(), this.zzfej.get(), this.zzfgo.get(), this.zzfhr.get());
    }
}
