package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbys implements zzdti<zzbyn> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbyx> zzews;
    private final zzdtu<zzbry> zzexa;
    private final zzdtu<zzbso> zzexw;
    private final zzdtu<zzbzb> zzeyi;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcxu> zzfff;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbzc> zzfhh;
    private final zzdtu<zzcxm> zzfhj;
    private final zzdtu<String> zzfhk;
    private final zzdtu<zzavf> zzfip;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<zzbzl> zzfoa;
    private final zzdtu<zzccb> zzfob;
    private final zzdtu<zzcbz> zzfoc;
    private final zzdtu<zzccg> zzfod;
    private final zzdtu<zzcbw> zzfoe;
    private final zzdtu<zzccd> zzfof;

    private zzbys(zzdtu<Executor> zzdtuVar, zzdtu<zzbyt> zzdtuVar2, zzdtu<zzbzb> zzdtuVar3, zzdtu<zzbzl> zzdtuVar4, zzdtu<zzbyx> zzdtuVar5, zzdtu<zzbzc> zzdtuVar6, zzdtu<zzccb> zzdtuVar7, zzdtu<zzcbz> zzdtuVar8, zzdtu<zzccg> zzdtuVar9, zzdtu<zzcbw> zzdtuVar10, zzdtu<zzccd> zzdtuVar11, zzdtu<zzavf> zzdtuVar12, zzdtu<zzdh> zzdtuVar13, zzdtu<zzbai> zzdtuVar14, zzdtu<Context> zzdtuVar15, zzdtu<zzcxu> zzdtuVar16, zzdtu<zzcxm> zzdtuVar17, zzdtu<zzbry> zzdtuVar18, zzdtu<zzbso> zzdtuVar19, zzdtu<String> zzdtuVar20) {
        this.zzfgh = zzdtuVar;
        this.zzfnh = zzdtuVar2;
        this.zzeyi = zzdtuVar3;
        this.zzfoa = zzdtuVar4;
        this.zzews = zzdtuVar5;
        this.zzfhh = zzdtuVar6;
        this.zzfob = zzdtuVar7;
        this.zzfoc = zzdtuVar8;
        this.zzfod = zzdtuVar9;
        this.zzfoe = zzdtuVar10;
        this.zzfof = zzdtuVar11;
        this.zzfip = zzdtuVar12;
        this.zzfni = zzdtuVar13;
        this.zzfej = zzdtuVar14;
        this.zzeoj = zzdtuVar15;
        this.zzfff = zzdtuVar16;
        this.zzfhj = zzdtuVar17;
        this.zzexa = zzdtuVar18;
        this.zzexw = zzdtuVar19;
        this.zzfhk = zzdtuVar20;
    }

    public static zzbys zza(zzdtu<Executor> zzdtuVar, zzdtu<zzbyt> zzdtuVar2, zzdtu<zzbzb> zzdtuVar3, zzdtu<zzbzl> zzdtuVar4, zzdtu<zzbyx> zzdtuVar5, zzdtu<zzbzc> zzdtuVar6, zzdtu<zzccb> zzdtuVar7, zzdtu<zzcbz> zzdtuVar8, zzdtu<zzccg> zzdtuVar9, zzdtu<zzcbw> zzdtuVar10, zzdtu<zzccd> zzdtuVar11, zzdtu<zzavf> zzdtuVar12, zzdtu<zzdh> zzdtuVar13, zzdtu<zzbai> zzdtuVar14, zzdtu<Context> zzdtuVar15, zzdtu<zzcxu> zzdtuVar16, zzdtu<zzcxm> zzdtuVar17, zzdtu<zzbry> zzdtuVar18, zzdtu<zzbso> zzdtuVar19, zzdtu<String> zzdtuVar20) {
        return new zzbys(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8, zzdtuVar9, zzdtuVar10, zzdtuVar11, zzdtuVar12, zzdtuVar13, zzdtuVar14, zzdtuVar15, zzdtuVar16, zzdtuVar17, zzdtuVar18, zzdtuVar19, zzdtuVar20);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbyn zzbynVar = new zzbyn(this.zzfgh.get(), this.zzfnh.get(), this.zzeyi.get(), this.zzfoa.get(), this.zzews.get(), this.zzfhh.get(), zzdth.zzap(this.zzfob), zzdth.zzap(this.zzfoc), zzdth.zzap(this.zzfod), zzdth.zzap(this.zzfoe), zzdth.zzap(this.zzfof), this.zzfip.get(), this.zzfni.get(), this.zzfej.get(), this.zzeoj.get());
        zzbql.zza(zzbynVar, this.zzfff.get());
        zzbql.zza(zzbynVar, this.zzfhj.get());
        zzbql.zza(zzbynVar, this.zzexa.get());
        zzbql.zza(zzbynVar, this.zzexw.get());
        zzbql.zza(zzbynVar, this.zzfhk.get());
        return zzbynVar;
    }
}
