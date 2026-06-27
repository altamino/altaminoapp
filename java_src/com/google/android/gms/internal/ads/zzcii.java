package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcii implements zzczc {
    static final zzczc zzfvz = new zzcii();

    private zzcii() {
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzawz.zzds("Ad request signals:");
        zzawz.zzds(jSONObject.toString(2));
        return jSONObject;
    }
}
