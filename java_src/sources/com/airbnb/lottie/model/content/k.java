package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class k implements b {
    private final com.airbnb.lottie.model.animatable.b copies;
    private final String name;
    private final com.airbnb.lottie.model.animatable.b offset;
    private final com.airbnb.lottie.model.animatable.l transform;

    public com.airbnb.lottie.model.animatable.b b() {
        return this.copies;
    }

    public String c() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.offset;
    }

    public com.airbnb.lottie.model.animatable.l e() {
        return this.transform;
    }

    static final class a {
        static k a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return new k(jSONObject.optString("nm"), com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("c"), eVar, false), com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("o"), eVar, false), com.airbnb.lottie.model.animatable.l.b.b(jSONObject.optJSONObject("tr"), eVar));
        }
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.n(fVar, aVar, this);
    }

    k(String str, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.l lVar) {
        this.name = str;
        this.copies = bVar;
        this.offset = bVar2;
        this.transform = lVar;
    }
}
