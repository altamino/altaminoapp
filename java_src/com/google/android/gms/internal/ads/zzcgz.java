package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcgz implements zzdti<zzbbh<zzcxu>> {
    private final zzdtu<zzchq> zzesb;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzchl> zzfwn;
    private final zzdtu<zzbbh<zzarx>> zzfwo;

    private zzcgz(zzdtu<zzczt> zzdtuVar, zzdtu<zzchl> zzdtuVar2, zzdtu<zzchq> zzdtuVar3, zzdtu<zzbbh<zzarx>> zzdtuVar4, zzdtu<zzcxv> zzdtuVar5) {
        this.zzfhv = zzdtuVar;
        this.zzfwn = zzdtuVar2;
        this.zzesb = zzdtuVar3;
        this.zzfwo = zzdtuVar4;
        this.zzfhr = zzdtuVar5;
    }

    public static zzcgz zzf(zzdtu<zzczt> zzdtuVar, zzdtu<zzchl> zzdtuVar2, zzdtu<zzchq> zzdtuVar3, zzdtu<zzbbh<zzarx>> zzdtuVar4, zzdtu<zzcxv> zzdtuVar5) {
        return new zzcgz(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzcze zzczeVarZzane;
        zzczt zzcztVar = this.zzfhv.get();
        zzchl zzchlVar = this.zzfwn.get();
        zzchq zzchqVar = this.zzesb.get();
        zzbbh<zzarx> zzbbhVar = this.zzfwo.get();
        zzcxv zzcxvVar = this.zzfhr.get();
        com.google.android.gms.ads.internal.zzk.zzlm().zzng();
        if (zzcxvVar.zzghg.zzchb != null) {
            zzczeVarZzane = zzcztVar.zza((zzczt) zzczs.SERVER_TRANSACTION, (zzbbh) zzbbhVar).zzb(zzchqVar.zzakg()).zzane();
        } else {
            zzczeVarZzane = zzcztVar.zza((zzczt) zzczs.SERVER_TRANSACTION, (zzbbh) zzbbhVar).zza(zzchlVar).zzane();
        }
        return (zzbbh) zzdto.zza(zzczeVarZzane, "Cannot return null from a non-@Nullable @Provides method");
    }
}
