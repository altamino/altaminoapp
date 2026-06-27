package com.airbnb.lottie;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieImageAsset {
    private final String fileName;
    private final int height;
    private final String id;
    private final int width;

    private LottieImageAsset(int i, int i2, String str, String str2) {
        this.width = i;
        this.height = i2;
        this.id = str;
        this.fileName = str2;
    }

    static class Factory {
        static LottieImageAsset newInstance(JSONObject jSONObject) {
            return new LottieImageAsset(jSONObject.optInt("w"), jSONObject.optInt("h"), jSONObject.optString("id"), jSONObject.optString(TtmlNode.TAG_P));
        }
    }

    public String getId() {
        return this.id;
    }

    public String getFileName() {
        return this.fileName;
    }
}
