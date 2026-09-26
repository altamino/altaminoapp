package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class j implements com.airbnb.lottie.model.content.b {
    private final com.airbnb.lottie.model.animatable.b cornerRadius;
    private final String name;
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> position;
    private final com.airbnb.lottie.model.animatable.f size;

    static class b {
        static j a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return new j(jSONObject.optString("nm"), com.airbnb.lottie.model.animatable.e.b(jSONObject.optJSONObject("p"), eVar), com.airbnb.lottie.model.animatable.f.b.a(jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS), eVar), com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObject.optJSONObject("r"), eVar));
        }
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.cornerRadius;
    }

    public String c() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> d() {
        return this.position;
    }

    public com.airbnb.lottie.model.animatable.f e() {
        return this.size;
    }

    private j(String str, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.b bVar) {
        this.name = str;
        this.position = mVar;
        this.size = fVar;
        this.cornerRadius = bVar;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.m(fVar, aVar, this);
    }

    public String toString() {
        return "RectangleShape{cornerRadius=" + this.cornerRadius.e() + ", position=" + this.position + ", size=" + this.size + kotlinx.serialization.json.internal.b.END_OBJ;
    }
}
