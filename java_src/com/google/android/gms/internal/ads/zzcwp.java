package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcwp implements zzcuz<JSONObject> {
    private final Location zzmw;

    public zzcwp(Location location) {
        this.zzmw = location;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.zzmw != null) {
                JSONObject jSONObject3 = new JSONObject();
                Float fValueOf = Float.valueOf(this.zzmw.getAccuracy() * 1000.0f);
                Long lValueOf = Long.valueOf(this.zzmw.getTime() * 1000);
                Long lValueOf2 = Long.valueOf((long) (this.zzmw.getLatitude() * 1.0E7d));
                Long lValueOf3 = Long.valueOf((long) (this.zzmw.getLongitude() * 1.0E7d));
                jSONObject3.put("radius", fValueOf);
                jSONObject3.put("lat", lValueOf2);
                jSONObject3.put("long", lValueOf3);
                jSONObject3.put("time", lValueOf);
                jSONObject2.put("uule", jSONObject3);
            }
        } catch (JSONException e) {
            zzawz.zza("Failed adding location to the request JSON.", e);
        }
    }
}
