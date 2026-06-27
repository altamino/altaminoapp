package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcwi implements zzcuz<JSONObject> {
    private String zzgjf;
    private String zzgjg;

    public zzcwi(String str, String str2) {
        this.zzgjf = str;
        this.zzgjg = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzazc.zzb(jSONObject, "pii");
            jSONObjectZzb.put("doritos", this.zzgjf);
            jSONObjectZzb.put("doritos_v2", this.zzgjg);
        } catch (JSONException unused) {
            zzawz.zzds("Failed putting doritos string.");
        }
    }
}
