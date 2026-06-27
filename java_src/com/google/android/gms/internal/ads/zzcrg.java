package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public final class zzcrg implements zzdti<zzcre> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<ViewGroup> zzgbf;
    private final zzdtu<zzbbl> zzggc;

    public zzcrg(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<ViewGroup> zzdtuVar4) {
        this.zzggc = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzgbf = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcre(this.zzggc.get(), this.zzeoj.get(), this.zzfhr.get(), this.zzgbf.get());
    }
}
