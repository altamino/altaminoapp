package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcvt implements zzcuz<JSONObject> {
    private final String zzgiu;

    public zzcvt(String str) {
        this.zzgiu = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("ms", this.zzgiu);
        } catch (JSONException e) {
            zzawz.zza("Failed putting Ad ID.", e);
        }
    }
}
