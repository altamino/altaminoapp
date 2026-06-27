package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcea implements zzdti<zzcdp> {
    private final zzdtu<zzbtp> zzewe;
    private final zzdtu<zzbss> zzewk;
    private final zzdtu<zzbmn> zzewx;
    private final zzdtu<zzbse> zzexf;
    private final zzdtu<zzbri> zzexi;
    private final zzdtu<zzbsv> zzeya;
    private final zzdtu<zzbva> zzeyg;
    private final zzdtu<zzbtl> zzfbp;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzavb> zzfjn;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<com.google.android.gms.ads.internal.zzb> zzftn;
    private final zzdtu<zzbry> zzfto;

    private zzcea(zzdtu<zzbri> zzdtuVar, zzdtu<zzbse> zzdtuVar2, zzdtu<zzbss> zzdtuVar3, zzdtu<zzbsv> zzdtuVar4, zzdtu<zzbtp> zzdtuVar5, zzdtu<Executor> zzdtuVar6, zzdtu<zzbva> zzdtuVar7, zzdtu<zzbmn> zzdtuVar8, zzdtu<com.google.android.gms.ads.internal.zzb> zzdtuVar9, zzdtu<zzbry> zzdtuVar10, zzdtu<zzavb> zzdtuVar11, zzdtu<zzdh> zzdtuVar12, zzdtu<zzbtl> zzdtuVar13) {
        this.zzexi = zzdtuVar;
        this.zzexf = zzdtuVar2;
        this.zzewk = zzdtuVar3;
        this.zzeya = zzdtuVar4;
        this.zzewe = zzdtuVar5;
        this.zzfgh = zzdtuVar6;
        this.zzeyg = zzdtuVar7;
        this.zzewx = zzdtuVar8;
        this.zzftn = zzdtuVar9;
        this.zzfto = zzdtuVar10;
        this.zzfjn = zzdtuVar11;
        this.zzfni = zzdtuVar12;
        this.zzfbp = zzdtuVar13;
    }

    public static zzcea zza(zzdtu<zzbri> zzdtuVar, zzdtu<zzbse> zzdtuVar2, zzdtu<zzbss> zzdtuVar3, zzdtu<zzbsv> zzdtuVar4, zzdtu<zzbtp> zzdtuVar5, zzdtu<Executor> zzdtuVar6, zzdtu<zzbva> zzdtuVar7, zzdtu<zzbmn> zzdtuVar8, zzdtu<com.google.android.gms.ads.internal.zzb> zzdtuVar9, zzdtu<zzbry> zzdtuVar10, zzdtu<zzavb> zzdtuVar11, zzdtu<zzdh> zzdtuVar12, zzdtu<zzbtl> zzdtuVar13) {
        return new zzcea(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8, zzdtuVar9, zzdtuVar10, zzdtuVar11, zzdtuVar12, zzdtuVar13);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcdp(this.zzexi.get(), this.zzexf.get(), this.zzewk.get(), this.zzeya.get(), this.zzewe.get(), this.zzfgh.get(), this.zzeyg.get(), this.zzewx.get(), this.zzftn.get(), this.zzfto.get(), this.zzfjn.get(), this.zzfni.get(), this.zzfbp.get());
    }
}
