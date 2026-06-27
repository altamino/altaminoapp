package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbza implements zzdti<zzbyy> {
    private final zzdtu<JSONObject> zzewq;
    private final zzdtu<zzcxm> zzfgo;

    public zzbza(zzdtu<zzcxm> zzdtuVar, zzdtu<JSONObject> zzdtuVar2) {
        this.zzfgo = zzdtuVar;
        this.zzewq = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbyy(this.zzfgo.get(), this.zzewq.get());
    }
}
