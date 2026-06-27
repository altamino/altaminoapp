package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcmd implements zzdti<zzclx> {
    private final zzdtu<zzcaq> zzeuw;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzbxo> zzfzs;

    public zzcmd(zzdtu<zzbxo> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzcaq> zzdtuVar3) {
        this.zzfzs = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzeuw = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzclx(this.zzfzs.get(), this.zzfgh.get(), this.zzeuw.get());
    }
}
