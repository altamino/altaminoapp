package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbpf<AdT> implements zzbpe<AdT> {
    private final Map<String, zzcjv<AdT>> zzfit;

    zzbpf(Map<String, zzcjv<AdT>> map) {
        this.zzfit = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final zzcjv<AdT> zze(int i, String str) {
        return this.zzfit.get(str);
    }
}
