package com.google.firebase.crashlytics.internal.metadata;

import com.google.auto.value.AutoValue;
import com.google.firebase.crashlytics.internal.model.f0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@AutoValue
public abstract class i {
    private static final int MAX_PARAMETER_VALUE_LENGTH = 256;
    public static final j4.a ROLLOUT_ASSIGNMENT_JSON_ENCODER = new com.google.firebase.encoders.json.d().j(a.CONFIG).i();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract long f();

    public abstract String g();

    static i a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return b(jSONObject.getString(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_ID), jSONObject.getString("parameterKey"), jSONObject.getString("parameterValue"), jSONObject.getString(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_VARIANT_ID), jSONObject.getLong("templateVersion"));
    }

    public static i b(String str, String str2, String str3, String str4, long j6) {
        return new b(str, str2, i(str3), str4, j6);
    }

    private static String i(String str) {
        if (str.length() > 256) {
            return str.substring(0, 256);
        }
        return str;
    }

    public f0.e.d.AbstractC0251e h() {
        return f0.e.d.AbstractC0251e.a().d(f0.e.d.AbstractC0251e.b.a().c(g()).b(e()).a()).b(c()).c(d()).e(f()).a();
    }
}
