package com.airbnb.lottie.model;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    private final float ascent;
    private final String family;
    private final String name;
    private final String style;

    public static class a {
        public static f a(JSONObject jSONObject) {
            return new f(jSONObject.optString("fFamily"), jSONObject.optString("fName"), jSONObject.optString("fStyle"), (float) jSONObject.optDouble("ascent"));
        }
    }

    public String a() {
        return this.family;
    }

    public String b() {
        return this.name;
    }

    public String c() {
        return this.style;
    }

    f(String str, String str2, String str3, float f) {
        this.family = str;
        this.name = str2;
        this.style = str3;
        this.ascent = f;
    }
}
