package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@zzard
/* loaded from: classes2.dex */
public final class zzawl {
    private String zzdmk;
    private final long zzdth;
    private final List<String> zzdti = new ArrayList();
    private final List<String> zzdtj = new ArrayList();
    private final Map<String, zzamm> zzdtk = new HashMap();
    private String zzdtl;
    private JSONObject zzdtm;
    private boolean zzdtn;

    public zzawl(String str, long j) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        this.zzdtn = false;
        this.zzdmk = str;
        this.zzdth = j;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.zzdtm = new JSONObject(str);
            if (this.zzdtm.optInt(NotificationCompat.CATEGORY_STATUS, -1) != 1) {
                this.zzdtn = false;
                zzbad.zzep("App settings could not be fetched successfully.");
                return;
            }
            this.zzdtn = true;
            this.zzdtl = this.zzdtm.optString("app_id");
            JSONArray jSONArrayOptJSONArray = this.zzdtm.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                    String strOptString = jSONObject.optString(IjkMediaMeta.IJKM_KEY_FORMAT);
                    String strOptString2 = jSONObject.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.zzdtj.add(strOptString2);
                        } else if ("rewarded".equalsIgnoreCase(strOptString) && (jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config")) != null) {
                            this.zzdtk.put(strOptString2, new zzamm(jSONObjectOptJSONObject));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = this.zzdtm.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    this.zzdti.add(jSONArrayOptJSONArray2.optString(i2));
                }
            }
        } catch (JSONException e) {
            zzbad.zzd("Exception occurred while processing app setting json", e);
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long zzuq() {
        return this.zzdth;
    }

    public final boolean zzur() {
        return this.zzdtn;
    }

    public final String zzus() {
        return this.zzdmk;
    }

    public final String zzut() {
        return this.zzdtl;
    }

    public final Map<String, zzamm> zzuu() {
        return this.zzdtk;
    }

    public final JSONObject zzuv() {
        return this.zzdtm;
    }
}
