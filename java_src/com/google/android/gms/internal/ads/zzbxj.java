package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbxj implements zzdti<zzbxi> {
    private final zzdtu<zzbzc> zzfhh;
    private final zzdtu<Map<String, zzcjv<zzbph>>> zzfiu;
    private final zzdtu<zzbpe<zzbnf>> zzfmb;
    private final zzdtu<Map<String, zzcjv<zzbyn>>> zzfmc;
    private final zzdtu<Map<String, zzclw<zzbyn>>> zzfmd;

    public zzbxj(zzdtu<Map<String, zzcjv<zzbph>>> zzdtuVar, zzdtu<Map<String, zzcjv<zzbyn>>> zzdtuVar2, zzdtu<Map<String, zzclw<zzbyn>>> zzdtuVar3, zzdtu<zzbpe<zzbnf>> zzdtuVar4, zzdtu<zzbzc> zzdtuVar5) {
        this.zzfiu = zzdtuVar;
        this.zzfmc = zzdtuVar2;
        this.zzfmd = zzdtuVar3;
        this.zzfmb = zzdtuVar4;
        this.zzfhh = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxi(this.zzfiu.get(), this.zzfmc.get(), this.zzfmd.get(), this.zzfmb, this.zzfhh.get());
    }
}
