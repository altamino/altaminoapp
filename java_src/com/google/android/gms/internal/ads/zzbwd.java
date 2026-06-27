package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbwd implements zzdti<zzbuz<zzbsr>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcxm> zzfgo;
    private final zzdtu<zzcxv> zzfhr;
    private final zzbvz zzflo;

    private zzbwd(zzbvz zzbvzVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzcxv> zzdtuVar4) {
        this.zzflo = zzbvzVar;
        this.zzeoj = zzdtuVar;
        this.zzfej = zzdtuVar2;
        this.zzfgo = zzdtuVar3;
        this.zzfhr = zzdtuVar4;
    }

    public static zzbwd zza(zzbvz zzbvzVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzcxv> zzdtuVar4) {
        return new zzbwd(zzbvzVar, zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final Context context = this.zzeoj.get();
        final zzbai zzbaiVar = this.zzfej.get();
        final zzcxm zzcxmVar = this.zzfgo.get();
        final zzcxv zzcxvVar = this.zzfhr.get();
        return (zzbuz) zzdto.zza(new zzbuz(new zzbsr(context, zzbaiVar, zzcxmVar, zzcxvVar) { // from class: com.google.android.gms.internal.ads.zzbwa
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
}
