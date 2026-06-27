package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcnh implements zzdti<zzcnd> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcdf> zzfzs;

    public zzcnh(zzdtu<Context> zzdtuVar, zzdtu<zzcdf> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfzs = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcnd(this.zzeoj.get(), this.zzfzs.get());
    }
}
