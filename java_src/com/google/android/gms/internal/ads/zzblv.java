package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblv implements zzbls {
    private zzaxb zzduk;

    public zzblv(zzaxb zzaxbVar) {
        this.zzduk = zzaxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzk(Map<String, String> map) {
        this.zzduk.zzaj(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
