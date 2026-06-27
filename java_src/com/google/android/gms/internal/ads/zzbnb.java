package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbnb implements zzdti<JSONObject> {
    private final zzdtu<zzcxm> zzfgo;

    private zzbnb(zzdtu<zzcxm> zzdtuVar) {
        this.zzfgo = zzdtuVar;
    }

    public static zzbnb zzi(zzdtu<zzcxm> zzdtuVar) {
        return new zzbnb(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzbna.zza(this.zzfgo.get());
    }
}
