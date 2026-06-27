package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzasd {
    private final int errorCode;
    private final String type;
    private String url;
    private final String zzdlx;
    private final String zzdoj;
    private final boolean zzdok;
    private final List<String> zzdox;
    private final String zzdoy;
    private final String zzdoz;
    private final boolean zzdpa;
    private final String zzdpb;
    private final boolean zzdpc;
    private final JSONObject zzdpd;

    public zzasd(JSONObject jSONObject) {
        this.url = jSONObject.optString("url");
        this.zzdoy = jSONObject.optString("base_uri");
        this.zzdoz = jSONObject.optString("post_parameters");
        String strOptString = jSONObject.optString("drt_include");
        this.zzdpa = strOptString != null && (strOptString.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE) || strOptString.equals("true"));
        this.zzdlx = jSONObject.optString("request_id");
        this.type = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("errors");
        this.zzdox = strOptString2 == null ? null : Arrays.asList(strOptString2.split(","));
        this.errorCode = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.zzdpb = jSONObject.optString("fetched_ad");
        this.zzdpc = jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.zzdpd = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        this.zzdoj = jSONObject.optString("analytics_query_ad_event_id");
        this.zzdok = jSONObject.optBoolean("is_analytics_logging_enabled");
    }

    public final String zztu() {
        return this.zzdoy;
    }

    public final String zztv() {
        return this.zzdoz;
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean zztw() {
        return this.zzdpa;
    }

    public final JSONObject zztx() {
        return this.zzdpd;
    }
}
