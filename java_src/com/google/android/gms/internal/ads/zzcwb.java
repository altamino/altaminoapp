package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcwb implements zzcuz<JSONObject> {
    private JSONObject zzgja;

    public zzcwb(JSONObject jSONObject) {
        this.zzgja = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("cache_state", this.zzgja);
        } catch (JSONException unused) {
            zzawz.zzds("Unable to get cache_state");
        }
    }
}
