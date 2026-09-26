package com.airbnb.lottie;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class g {
    private final String fileName;
    private final int height;
    private final String id;
    private final int width;

    static class b {
        static g a(JSONObject jSONObject) {
            return new g(jSONObject.optInt("w"), jSONObject.optInt(CmcdHeadersFactory.STREAMING_FORMAT_HLS), jSONObject.optString("id"), jSONObject.optString("p"));
        }
    }

    public String a() {
        return this.fileName;
    }

    public String b() {
        return this.id;
    }

    private g(int i10, int i11, String str, String str2) {
        this.width = i10;
        this.height = i11;
        this.id = str;
        this.fileName = str2;
    }
}
