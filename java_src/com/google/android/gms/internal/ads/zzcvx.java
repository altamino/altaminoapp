package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcvx implements zzcuz<JSONObject> {
    private final JSONObject zzgix;

    public zzcvx(JSONObject jSONObject) {
        this.zzgix = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzazc.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.zzgix;
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectZzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            zzawz.zzds("Failed putting app indexing json.");
        }
    }
}
