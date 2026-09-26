package com.airbnb.lottie.model.animatable;

import android.graphics.Path;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class h extends o<com.airbnb.lottie.model.content.l, Path> {
    private final Path convertTypePath;

    public static final class b {
        /* JADX WARN: Multi-variable type inference failed */
        public static h a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            n.a aVarD = n.b(jSONObject, eVar.j(), eVar, com.airbnb.lottie.model.content.l.b.INSTANCE).d();
            return new h(aVarD.keyframes, (com.airbnb.lottie.model.content.l) aVarD.initialValue);
        }
    }

    private h(List<h0.a<com.airbnb.lottie.model.content.l>> list, com.airbnb.lottie.model.content.l lVar) {
        super(list, lVar);
        this.convertTypePath = new Path();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.model.animatable.o
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Path b(com.airbnb.lottie.model.content.l lVar) {
        this.convertTypePath.reset();
        com.airbnb.lottie.utils.e.f(lVar, this.convertTypePath);
        return this.convertTypePath;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.l, Path> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(b((com.airbnb.lottie.model.content.l) this.initialValue));
        }
        return new com.airbnb.lottie.animation.keyframe.l(this.keyframes);
    }
}
