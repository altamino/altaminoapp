package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcxg implements zzcuz<JSONObject> {
    private final Map<String, Object> zzgjs;

    public zzcxg(Map<String, Object> map) {
        this.zzgjs = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("video_decoders", com.google.android.gms.ads.internal.zzk.zzlg().zzi(this.zzgjs));
        } catch (JSONException e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzawz.zzds(strValueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(strValueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
