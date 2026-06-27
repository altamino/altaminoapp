package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcxq implements zzazf {
    public final String zzdkn;
    public final String zzdkp;
    public final JSONObject zzfmo;
    private final JSONObject zzgks;

    zzcxq(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        this.zzgks = zzazc.zzc(jsonReader);
        this.zzdkp = this.zzgks.optString("ad_html", null);
        this.zzdkn = this.zzgks.optString("ad_base_url", null);
        this.zzfmo = this.zzgks.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.zzazf
    public final void zza(JsonWriter jsonWriter) throws JSONException, IOException {
        zzazc.zza(jsonWriter, this.zzgks);
    }
}
