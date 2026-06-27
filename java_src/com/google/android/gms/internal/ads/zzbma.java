package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbma implements zzdti<zzblz> {
    private final zzdtu<Context> zzeoj;

    private zzbma(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    public static zzbma zzf(zzdtu<Context> zzdtuVar) {
        return new zzbma(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzblz(this.zzeoj.get());
    }
}
