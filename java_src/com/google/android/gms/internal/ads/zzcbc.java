package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcbc implements zzdti<zzcau> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcan> zzeur;
    private final zzdtu<zzcbi> zzeut;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<com.google.android.gms.ads.internal.zza> zzfrr;
    private final zzdtu<zzwj> zzfrs;

    public zzcbc(zzdtu<Context> zzdtuVar, zzdtu<zzcan> zzdtuVar2, zzdtu<zzdh> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<com.google.android.gms.ads.internal.zza> zzdtuVar5, zzdtu<zzwj> zzdtuVar6, zzdtu<Executor> zzdtuVar7, zzdtu<zzcxv> zzdtuVar8, zzdtu<zzcbi> zzdtuVar9, zzdtu<ScheduledExecutorService> zzdtuVar10) {
        this.zzeoj = zzdtuVar;
        this.zzeur = zzdtuVar2;
        this.zzfni = zzdtuVar3;
        this.zzfej = zzdtuVar4;
        this.zzfrr = zzdtuVar5;
        this.zzfrs = zzdtuVar6;
        this.zzfgh = zzdtuVar7;
        this.zzfhr = zzdtuVar8;
        this.zzeut = zzdtuVar9;
        this.zzfjc = zzdtuVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcau(this.zzeoj.get(), this.zzeur.get(), this.zzfni.get(), this.zzfej.get(), this.zzfrr.get(), this.zzfrs.get(), this.zzfgh.get(), this.zzfhr.get(), this.zzeut.get(), this.zzfjc.get());
    }
}
