package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.airbnb.lottie.model.content.b {
    private final String name;
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> position;
    private final com.airbnb.lottie.model.animatable.f size;

    static class b {
        static a a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return new a(jSONObject.optString("nm"), com.airbnb.lottie.model.animatable.e.b(jSONObject.optJSONObject("p"), eVar), com.airbnb.lottie.model.animatable.f.b.a(jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS), eVar));
        }
    }

    public String b() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> c() {
        return this.position;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.size;
    }

    private a(String str, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.f fVar) {
        this.name = str;
        this.position = mVar;
        this.size = fVar;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.e(fVar, aVar, this);
    }
}
