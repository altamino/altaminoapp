package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcwm implements zzcuz<JSONObject> {
    private List<String> zzdly;

    public zzcwm(List<String> list) {
        this.zzdly = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.zzdly));
        } catch (JSONException unused) {
            zzawz.zzds("Failed putting experiment ids.");
        }
    }
}
