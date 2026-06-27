package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzaml {
    private final String zzdeg;
    private final String zzdeh;
    public final List<String> zzdei;
    private final String zzdej;
    private final String zzdek;
    private final List<String> zzdel;
    private final List<String> zzdem;
    private final List<String> zzden;
    private final List<String> zzdeo;
    private final List<String> zzdep;
    public final String zzdeq;
    private final List<String> zzder;
    private final List<String> zzdes;
    private final List<String> zzdet;
    private final String zzdeu;
    private final String zzdev;
    private final String zzdew;
    private final String zzdex;
    private final String zzdey;
    private final List<String> zzdez;
    private final String zzdfa;
    public final String zzdfb;
    private final long zzdfc;

    public zzaml(JSONObject jSONObject) throws JSONException {
        List<String> listZza;
        this.zzdeh = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzdei = Collections.unmodifiableList(arrayList);
        this.zzdej = jSONObject.optString("allocation_id", null);
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdel = zzamn.zza(jSONObject, "clickurl");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdem = zzamn.zza(jSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzden = zzamn.zza(jSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdep = zzamn.zza(jSONObject, "fill_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzder = zzamn.zza(jSONObject, "video_start_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdet = zzamn.zza(jSONObject, "video_complete_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdes = zzamn.zza(jSONObject, "video_reward_urls");
        this.zzdeu = jSONObject.optString("transaction_id");
        this.zzdev = jSONObject.optString("valid_from_timestamp");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            com.google.android.gms.ads.internal.zzk.zzly();
            listZza = zzamn.zza(jSONObjectOptJSONObject, "manual_impression_urls");
        } else {
            listZza = null;
        }
        this.zzdeo = listZza;
        this.zzdeg = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : null;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.zzdeq = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        this.zzdek = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("class_name") : null;
        this.zzdew = jSONObject.optString("html_template", null);
        this.zzdex = jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        this.zzdey = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.toString() : null;
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdez = zzamn.zza(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.zzdfa = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.toString() : null;
        this.zzdfb = jSONObject.optString("response_type", null);
        this.zzdfc = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
