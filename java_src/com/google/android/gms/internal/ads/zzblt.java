package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblt implements zzbls {
    private zzaxb zzduk;

    public zzblt(zzaxb zzaxbVar) {
        this.zzduk = zzaxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzk(Map<String, String> map) {
        this.zzduk.zzai(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
