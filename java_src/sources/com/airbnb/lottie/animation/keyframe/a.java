package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a<K, A> {

    @Nullable
    private h0.a<K> cachedKeyframe;
    private final List<? extends h0.a<K>> keyframes;
    final List<InterfaceC0108a> listeners = new ArrayList();
    private boolean isDiscrete = false;
    private float progress = 0.0f;

    /* JADX INFO: renamed from: com.airbnb.lottie.animation.keyframe.a$a, reason: collision with other inner class name */
    public interface InterfaceC0108a {
        void e();
    }

    public float e() {
        return this.progress;
    }

    abstract A h(h0.a<K> aVar, float f);

    public void i() {
        this.isDiscrete = true;
    }

    private h0.a<K> b() {
        if (this.keyframes.isEmpty()) {
            throw new IllegalStateException("There are no keyframes");
        }
        h0.a<K> aVar = this.cachedKeyframe;
        if (aVar != null && aVar.b(this.progress)) {
            return this.cachedKeyframe;
        }
        h0.a<K> aVar2 = this.keyframes.get(0);
        if (this.progress < aVar2.d()) {
            this.cachedKeyframe = aVar2;
            return aVar2;
        }
        for (int i10 = 0; !aVar2.b(this.progress) && i10 < this.keyframes.size(); i10++) {
            aVar2 = this.keyframes.get(i10);
        }
        this.cachedKeyframe = aVar2;
        return aVar2;
    }

    private float c() {
        if (this.isDiscrete) {
            return 0.0f;
        }
        h0.a<K> aVarB = b();
        if (aVarB.e()) {
            return 0.0f;
        }
        return aVarB.interpolator.getInterpolation((this.progress - aVarB.d()) / (aVarB.c() - aVarB.d()));
    }

    @FloatRange
    private float d() {
        if (this.keyframes.isEmpty()) {
            return 1.0f;
        }
        List<? extends h0.a<K>> list = this.keyframes;
        return list.get(list.size() - 1).c();
    }

    @FloatRange
    private float f() {
        if (this.keyframes.isEmpty()) {
            return 0.0f;
        }
        return this.keyframes.get(0).d();
    }

    public void a(InterfaceC0108a interfaceC0108a) {
        this.listeners.add(interfaceC0108a);
    }

    a(List<? extends h0.a<K>> list) {
        this.keyframes = list;
    }

    public A g() {
        return h(b(), c());
    }

    public void j(@FloatRange float f) {
        if (f < f()) {
            f = 0.0f;
        } else if (f > d()) {
            f = 1.0f;
        }
        if (f == this.progress) {
            return;
        }
        this.progress = f;
        for (int i10 = 0; i10 < this.listeners.size(); i10++) {
            this.listeners.get(i10).e();
        }
    }
}
