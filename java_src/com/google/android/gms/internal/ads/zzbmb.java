package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbmb implements zzbls {
    private final zzaxb zzduk;

    public zzbmb(zzaxb zzaxbVar) {
        this.zzduk = zzaxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzk(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get("value");
        if ("auto_collect_location".equals(str)) {
            this.zzduk.zzak(Boolean.parseBoolean(str2));
        }
    }
}
