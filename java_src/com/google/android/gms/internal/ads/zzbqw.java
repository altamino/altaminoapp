package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbqw implements zzdti<zzbam<zzcxm, zzayb>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcxv> zzfhr;

    public zzbqw(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3) {
        this.zzeoj = zzdtuVar;
        this.zzfej = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final Context context = this.zzeoj.get();
        final zzbai zzbaiVar = this.zzfej.get();
        final zzcxv zzcxvVar = this.zzfhr.get();
        return (zzbam) zzdto.zza(new zzbam(context, zzbaiVar, zzcxvVar) { // from class: com.google.android.gms.internal.ads.zzbqv
            private final Context zzdef;
            private final zzbai zzfhl;
            private final zzcxv zzfjs;

            {
                this.zzdef = context;
                this.zzfhl = zzbaiVar;
                this.zzfjs = zzcxvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                Context context2 = this.zzdef;
                zzbai zzbaiVar2 = this.zzfhl;
                zzcxv zzcxvVar2 = this.zzfjs;
                zzcxm zzcxmVar = (zzcxm) obj;
                zzayb zzaybVar = new zzayb(context2);
                zzaybVar.zzee(zzcxmVar.zzdno);
                zzaybVar.zzef(zzcxmVar.zzgkj.toString());
                zzaybVar.zzp(zzbaiVar2.zzbsx);
                zzaybVar.setAdUnitId(zzcxvVar2.zzglb);
                return zzaybVar;
            }
        }, "Cannot return null from a non-@Nullable @Provides method");
    }
}
