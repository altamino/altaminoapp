package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbye implements zzdti<JSONObject> {
    private final zzbyc zzfnl;

    public zzbye(zzbyc zzbycVar) {
        this.zzfnl = zzbycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (JSONObject) zzdto.zza(this.zzfnl.zzaho(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
