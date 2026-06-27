package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzblc implements zzdti<zzbkz> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzclc> zzeor;
    private final zzdtu<zzcgb> zzeox;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzcjz<zzams, zzclb>> zzfek;
    private final zzdtu<zzcpf> zzfel;

    public zzblc(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzclc> zzdtuVar3, zzdtu<zzcjz<zzams, zzclb>> zzdtuVar4, zzdtu<zzcpf> zzdtuVar5, zzdtu<zzcgb> zzdtuVar6) {
        this.zzeoj = zzdtuVar;
        this.zzfej = zzdtuVar2;
        this.zzeor = zzdtuVar3;
        this.zzfek = zzdtuVar4;
        this.zzfel = zzdtuVar5;
        this.zzeox = zzdtuVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbkz(this.zzeoj.get(), this.zzfej.get(), this.zzeor.get(), this.zzfek.get(), this.zzfel.get(), this.zzeox.get());
    }
}
