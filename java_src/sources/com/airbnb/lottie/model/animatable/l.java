package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.animation.keyframe.p;
import java.util.Collections;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class l implements com.airbnb.lottie.model.content.b {
    private final e anchorPoint;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b endOpacity;
    private final d opacity;
    private final m<PointF, PointF> position;
    private final com.airbnb.lottie.model.animatable.b rotation;
    private final g scale;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b startOpacity;

    public static class b {
        public static l a() {
            return new l(new e(), new e(), g.b.a(), com.airbnb.lottie.model.animatable.b.C0111b.a(), d.b.a(), com.airbnb.lottie.model.animatable.b.C0111b.a(), com.airbnb.lottie.model.animatable.b.C0111b.a());
        }

        public static l b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            e eVar2;
            m<PointF, PointF> mVarB;
            com.airbnb.lottie.model.animatable.b bVarC;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
            if (jSONObjectOptJSONObject != null) {
                eVar2 = new e(jSONObjectOptJSONObject.opt("k"), eVar);
            } else {
                Log.w(com.airbnb.lottie.d.TAG, "Layer has no transform property. You may be using an unsupported layer type such as a camera.");
                eVar2 = new e();
            }
            e eVar3 = eVar2;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("p");
            if (jSONObjectOptJSONObject2 != null) {
                mVarB = e.b(jSONObjectOptJSONObject2, eVar);
            } else {
                c("position");
                mVarB = null;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS);
            g gVarB = jSONObjectOptJSONObject3 != null ? g.b.b(jSONObjectOptJSONObject3, eVar) : new g(Collections.emptyList(), new com.airbnb.lottie.model.k());
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("r");
            if (jSONObjectOptJSONObject4 == null) {
                jSONObjectOptJSONObject4 = jSONObject.optJSONObject("rz");
            }
            if (jSONObjectOptJSONObject4 != null) {
                bVarC = com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObjectOptJSONObject4, eVar, false);
            } else {
                c(Key.ROTATION);
                bVarC = null;
            }
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("o");
            d dVarB = jSONObjectOptJSONObject5 != null ? d.b.b(jSONObjectOptJSONObject5, eVar) : new d(Collections.emptyList(), 100);
            JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("so");
            com.airbnb.lottie.model.animatable.b bVarC2 = jSONObjectOptJSONObject6 != null ? com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObjectOptJSONObject6, eVar, false) : null;
            JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("eo");
            return new l(eVar3, mVarB, gVarB, bVarC, dVarB, bVarC2, jSONObjectOptJSONObject7 != null ? com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObjectOptJSONObject7, eVar, false) : null);
        }

        private static void c(String str) {
            throw new IllegalArgumentException("Missing transform for " + str);
        }
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return null;
    }

    public e c() {
        return this.anchorPoint;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.b d() {
        return this.endOpacity;
    }

    public d e() {
        return this.opacity;
    }

    public m<PointF, PointF> f() {
        return this.position;
    }

    public com.airbnb.lottie.model.animatable.b g() {
        return this.rotation;
    }

    public g h() {
        return this.scale;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.b i() {
        return this.startOpacity;
    }

    private l(e eVar, m<PointF, PointF> mVar, g gVar, com.airbnb.lottie.model.animatable.b bVar, d dVar, @Nullable com.airbnb.lottie.model.animatable.b bVar2, @Nullable com.airbnb.lottie.model.animatable.b bVar3) {
        this.anchorPoint = eVar;
        this.position = mVar;
        this.scale = gVar;
        this.rotation = bVar;
        this.opacity = dVar;
        this.startOpacity = bVar2;
        this.endOpacity = bVar3;
    }

    public p b() {
        return new p(this);
    }
}
