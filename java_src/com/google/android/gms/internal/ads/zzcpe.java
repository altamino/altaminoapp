package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcpe implements zzdti<zzcpa> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbws> zzfzs;

    public zzcpe(zzdtu<Context> zzdtuVar, zzdtu<zzbws> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfzs = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcpa(this.zzeoj.get(), this.zzfzs.get());
    }
}
