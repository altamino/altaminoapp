package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcik implements zzczc {
    static final zzczc zzfvz = new zzcik();

    private zzcik() {
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final Object apply(Object obj) throws zzcif {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optInt("error_code") == 6) {
            return zzalo.zzddj.zzd(jSONObject.getJSONObject("response"));
        }
        throw new zzcif(jSONObject.getString("error_reason"), jSONObject.optInt("error_code", 0));
    }
}
