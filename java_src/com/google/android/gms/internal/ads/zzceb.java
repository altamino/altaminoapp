package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzceb implements zzdti<zzcdn> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzbtb> zzfht;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<zzwj> zzfrs;
    private final zzdtu<zzbhf> zzfsx;
    private final zzdtu<com.google.android.gms.ads.internal.zza> zzftp;

    private zzceb(zzdtu<zzbhf> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<zzdh> zzdtuVar4, zzdtu<zzbai> zzdtuVar5, zzdtu<com.google.android.gms.ads.internal.zza> zzdtuVar6, zzdtu<zzwj> zzdtuVar7, zzdtu<zzbtb> zzdtuVar8) {
        this.zzfsx = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzfni = zzdtuVar4;
        this.zzfej = zzdtuVar5;
        this.zzftp = zzdtuVar6;
        this.zzfrs = zzdtuVar7;
        this.zzfht = zzdtuVar8;
    }

    public static zzceb zzb(zzdtu<zzbhf> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<zzdh> zzdtuVar4, zzdtu<zzbai> zzdtuVar5, zzdtu<com.google.android.gms.ads.internal.zza> zzdtuVar6, zzdtu<zzwj> zzdtuVar7, zzdtu<zzbtb> zzdtuVar8) {
        return new zzceb(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcdn(this.zzfsx.get(), this.zzeoj.get(), this.zzfhr.get(), this.zzfni.get(), this.zzfej.get(), this.zzftp.get(), this.zzfrs.get(), this.zzfht.get());
    }
}
