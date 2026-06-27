package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzckq implements zzdti<zzckm> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzboc> zzfzs;

    public zzckq(zzdtu<Context> zzdtuVar, zzdtu<zzboc> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfzs = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzckm(this.zzeoj.get(), this.zzfzs.get());
    }
}
