package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcmj implements zzdti<zzcmg> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbxo> zzfzs;

    public zzcmj(zzdtu<Context> zzdtuVar, zzdtu<zzbxo> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfzs = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcmg(this.zzeoj.get(), this.zzfzs.get());
    }
}
