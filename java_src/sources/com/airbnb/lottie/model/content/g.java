package com.airbnb.lottie.model.content;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final c maskMode;
    private final com.airbnb.lottie.model.animatable.h maskPath;
    private final com.airbnb.lottie.model.animatable.d opacity;

    public static class b {
        public static g a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            c cVar;
            String strOptString = jSONObject.optString("mode");
            strOptString.hashCode();
            switch (strOptString) {
                case "a":
                    cVar = c.MaskModeAdd;
                    break;
                case "i":
                    cVar = c.MaskModeIntersect;
                    break;
                case "s":
                    cVar = c.MaskModeSubtract;
                    break;
                default:
                    cVar = c.MaskModeUnknown;
                    break;
            }
            return new g(cVar, com.airbnb.lottie.model.animatable.h.b.a(jSONObject.optJSONObject("pt"), eVar), com.airbnb.lottie.model.animatable.d.b.b(jSONObject.optJSONObject("o"), eVar));
        }
    }

    public enum c {
        MaskModeAdd,
        MaskModeSubtract,
        MaskModeIntersect,
        MaskModeUnknown
    }

    public c a() {
        return this.maskMode;
    }

    public com.airbnb.lottie.model.animatable.h b() {
        return this.maskPath;
    }

    public com.airbnb.lottie.model.animatable.d c() {
        return this.opacity;
    }

    private g(c cVar, com.airbnb.lottie.model.animatable.h hVar, com.airbnb.lottie.model.animatable.d dVar) {
        this.maskMode = cVar;
        this.maskPath = hVar;
        this.opacity = dVar;
    }
}
