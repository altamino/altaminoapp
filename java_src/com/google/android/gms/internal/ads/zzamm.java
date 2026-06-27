package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzamm {
    private final long zzdfc;
    public final List<zzaml> zzdfd;
    private final List<String> zzdfe;
    private final List<String> zzdff;
    private final List<String> zzdfg;
    private final List<String> zzdfh;
    private final List<String> zzdfi;
    private final boolean zzdfj;
    private final String zzdfk;
    private final long zzdfl;
    private final String zzdfm;
    private final int zzdfn;
    private final int zzdfo;
    private final long zzdfp;
    private final boolean zzdfq;
    private final boolean zzdfr;
    private final boolean zzdfs;
    private final boolean zzdft;
    private int zzdfu;
    private int zzdfv;
    private boolean zzdfw;

    public zzamm(JSONObject jSONObject) throws JSONException {
        if (zzbad.isLoggable(2)) {
            String strValueOf = String.valueOf(jSONObject.toString(2));
            zzawz.zzds(strValueOf.length() != 0 ? "Mediation Response JSON: ".concat(strValueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzaml zzamlVar = new zzaml(jSONArray.getJSONObject(i2));
                boolean z = true;
                if ("banner".equalsIgnoreCase(zzamlVar.zzdfb)) {
                    this.zzdfw = true;
                }
                arrayList.add(zzamlVar);
                if (i < 0) {
                    Iterator<String> it = zzamlVar.zzdei.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        this.zzdfu = i;
        this.zzdfv = jSONArray.length();
        this.zzdfd = Collections.unmodifiableList(arrayList);
        this.zzdfk = jSONObject.optString("qdata");
        this.zzdfo = jSONObject.optInt("fs_model_type", -1);
        this.zzdfp = jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject == null) {
            this.zzdfc = -1L;
            this.zzdfe = null;
            this.zzdff = null;
            this.zzdfg = null;
            this.zzdfh = null;
            this.zzdfi = null;
            this.zzdfl = -1L;
            this.zzdfm = null;
            this.zzdfn = 0;
            this.zzdfq = false;
            this.zzdfj = false;
            this.zzdfr = false;
            this.zzdfs = false;
            this.zzdft = false;
            return;
        }
        this.zzdfc = jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdfe = zzamn.zza(jSONObjectOptJSONObject, "click_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdff = zzamn.zza(jSONObjectOptJSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdfg = zzamn.zza(jSONObjectOptJSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdfh = zzamn.zza(jSONObjectOptJSONObject, "nofill_urls");
        com.google.android.gms.ads.internal.zzk.zzly();
        this.zzdfi = zzamn.zza(jSONObjectOptJSONObject, "remote_ping_urls");
        this.zzdfj = jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
        long jOptLong = jSONObjectOptJSONObject.optLong("refresh", -1L);
        this.zzdfl = jOptLong > 0 ? 1000 * jOptLong : -1L;
        zzato zzatoVarZza = zzato.zza(jSONObjectOptJSONObject.optJSONArray("rewards"));
        if (zzatoVarZza == null) {
            this.zzdfm = null;
            this.zzdfn = 0;
        } else {
            this.zzdfm = zzatoVarZza.type;
            this.zzdfn = zzatoVarZza.zzdqm;
        }
        this.zzdfq = jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
        this.zzdfr = jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        this.zzdfs = jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        this.zzdft = jSONObjectOptJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
