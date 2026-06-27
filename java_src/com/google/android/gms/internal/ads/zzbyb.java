package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbyb implements zzdti<zzbxx> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzdae> zzerp;
    private final zzdtu<JSONObject> zzewq;
    private final zzdtu<zzbmn> zzewx;
    private final zzdtu<zzbri> zzexi;
    private final zzdtu<zzbrt> zzexp;
    private final zzdtu<zzbva> zzeyg;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzbzc> zzfhh;
    private final zzdtu<zzcxm> zzfhj;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzccj> zzfng;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<zzbzq> zzfnj;

    public zzbyb(zzdtu<Context> zzdtuVar, zzdtu<zzbzc> zzdtuVar2, zzdtu<JSONObject> zzdtuVar3, zzdtu<zzccj> zzdtuVar4, zzdtu<zzbyt> zzdtuVar5, zzdtu<zzdh> zzdtuVar6, zzdtu<zzbrt> zzdtuVar7, zzdtu<zzbri> zzdtuVar8, zzdtu<zzcxm> zzdtuVar9, zzdtu<zzbai> zzdtuVar10, zzdtu<zzcxv> zzdtuVar11, zzdtu<zzbmn> zzdtuVar12, zzdtu<zzbzq> zzdtuVar13, zzdtu<Clock> zzdtuVar14, zzdtu<zzbva> zzdtuVar15, zzdtu<zzdae> zzdtuVar16) {
        this.zzeoj = zzdtuVar;
        this.zzfhh = zzdtuVar2;
        this.zzewq = zzdtuVar3;
        this.zzfng = zzdtuVar4;
        this.zzfnh = zzdtuVar5;
        this.zzfni = zzdtuVar6;
        this.zzexp = zzdtuVar7;
        this.zzexi = zzdtuVar8;
        this.zzfhj = zzdtuVar9;
        this.zzfej = zzdtuVar10;
        this.zzfhr = zzdtuVar11;
        this.zzewx = zzdtuVar12;
        this.zzfnj = zzdtuVar13;
        this.zzfgj = zzdtuVar14;
        this.zzeyg = zzdtuVar15;
        this.zzerp = zzdtuVar16;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxx(this.zzeoj.get(), this.zzfhh.get(), this.zzewq.get(), this.zzfng.get(), this.zzfnh.get(), this.zzfni.get(), this.zzexp.get(), this.zzexi.get(), this.zzfhj.get(), this.zzfej.get(), this.zzfhr.get(), this.zzewx.get(), this.zzfnj.get(), this.zzfgj.get(), this.zzeyg.get(), this.zzerp.get());
    }
}
