package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzccu implements zzdti<zzccr> {
    private final zzdtu<zzbtp> zzewe;
    private final zzdtu<zzbss> zzewk;
    private final zzdtu<zzbse> zzexf;
    private final zzdtu<zzbri> zzexi;
    private final zzdtu<zzbsv> zzeya;

    public zzccu(zzdtu<zzbri> zzdtuVar, zzdtu<zzbse> zzdtuVar2, zzdtu<zzbss> zzdtuVar3, zzdtu<zzbsv> zzdtuVar4, zzdtu<zzbtp> zzdtuVar5) {
        this.zzexi = zzdtuVar;
        this.zzexf = zzdtuVar2;
        this.zzewk = zzdtuVar3;
        this.zzeya = zzdtuVar4;
        this.zzewe = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccr(this.zzexi.get(), this.zzexf.get(), this.zzewk.get(), this.zzeya.get(), this.zzewe.get());
    }
}
