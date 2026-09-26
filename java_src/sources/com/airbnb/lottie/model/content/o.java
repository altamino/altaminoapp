package com.airbnb.lottie.model.content;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class o implements com.airbnb.lottie.model.content.b {
    private final int index;
    private final String name;
    private final com.airbnb.lottie.model.animatable.h shapePath;

    static class b {
        static o a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return new o(jSONObject.optString("nm"), jSONObject.optInt("ind"), com.airbnb.lottie.model.animatable.h.b.a(jSONObject.optJSONObject("ks"), eVar));
        }
    }

    public String b() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.h c() {
        return this.shapePath;
    }

    private o(String str, int i10, com.airbnb.lottie.model.animatable.h hVar) {
        this.name = str;
        this.index = i10;
        this.shapePath = hVar;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.o(fVar, aVar, this);
    }

    public String toString() {
        return "ShapePath{name=" + this.name + ", index=" + this.index + ", hasAnimation=" + this.shapePath.d() + kotlinx.serialization.json.internal.b.END_OBJ;
    }
}
