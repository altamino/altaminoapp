package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbyd implements zzdti<JSONObject> {
    private final zzdtu<zzbyx> zzews;
    private final zzbyc zzfnl;

    public zzbyd(zzbyc zzbycVar, zzdtu<zzbyx> zzdtuVar) {
        this.zzfnl = zzbycVar;
        this.zzews = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return this.zzews.get().zzaie();
    }
}
