package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzcxo {
    public final int responseCode;
    public final String zzcep;
    public final List<String> zzdfh;
    public final String zzdoj;
    public final long zzfyb;
    public final int zzgkr;

    zzcxo(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        List<String> listEmptyList = Collections.emptyList();
        jsonReader.beginObject();
        String strNextString = "";
        int iNextInt = 0;
        long jNextLong = 0;
        int iNextInt2 = 0;
        String strNextString2 = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("nofill_urls".equals(strNextName)) {
                listEmptyList = zzazc.zza(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString2 = jsonReader.nextString();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.zzdfh = listEmptyList;
        this.zzgkr = iNextInt;
        this.zzcep = strNextString;
        this.zzdoj = strNextString2;
        this.responseCode = iNextInt2;
        this.zzfyb = jNextLong;
    }
}
