package com.airbnb.lottie.model.content;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class q implements com.airbnb.lottie.model.content.b {
    private final com.airbnb.lottie.model.animatable.b end;
    private final String name;
    private final com.airbnb.lottie.model.animatable.b offset;
    private final com.airbnb.lottie.model.animatable.b start;
    private final c type;

    static class b {
        static q a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return new q(jSONObject.optString("nm"), c.a(jSONObject.optInt("m", 1)), com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS), eVar, false), com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("e"), eVar, false), com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("o"), eVar, false));
        }
    }

    public enum c {
        Simultaneously,
        Individually;

        static c a(int i10) {
            if (i10 == 1) {
                return Simultaneously;
            }
            if (i10 == 2) {
                return Individually;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i10);
        }
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.end;
    }

    public String c() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.offset;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.start;
    }

    public c f() {
        return this.type;
    }

    private q(String str, c cVar, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3) {
        this.name = str;
        this.type = cVar;
        this.start = bVar;
        this.end = bVar2;
        this.offset = bVar3;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.q(aVar, this);
    }

    public String toString() {
        return "Trim Path: {start: " + this.start + ", end: " + this.end + ", offset: " + this.offset + "}";
    }
}
