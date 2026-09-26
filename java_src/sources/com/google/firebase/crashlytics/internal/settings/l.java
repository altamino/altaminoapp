package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.w;
import com.narvii.invite.InviteMembersFragment;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
class l implements h {
    private static d.a b(JSONObject jSONObject) {
        return new d.a(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false), jSONObject.optBoolean("collect_build_ids", false));
    }

    private static d.b c(JSONObject jSONObject) {
        return new d.b(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    private static long d(w wVar, long j6, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : wVar.a() + (j6 * 1000);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.h
    public d a(w wVar, JSONObject jSONObject) throws JSONException {
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", InviteMembersFragment.SECOND_HOUR);
        return new d(d(wVar, iOptInt2, jSONObject), jSONObject.has("session") ? c(jSONObject.getJSONObject("session")) : c(new JSONObject()), b(jSONObject.getJSONObject("features")), iOptInt, iOptInt2, jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d), jSONObject.optDouble("on_demand_backoff_base", 1.2d), jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60));
    }

    l() {
    }
}
