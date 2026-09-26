package com.airbnb.lottie.animation.content;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class q implements b, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> endAnimation;
    private final List<com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a> listeners = new ArrayList();
    private String name;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> offsetAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> startAnimation;
    private final com.airbnb.lottie.model.content.q.c type;

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        for (int i10 = 0; i10 < this.listeners.size(); i10++) {
            this.listeners.get(i10).e();
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> g() {
        return this.endAnimation;
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> h() {
        return this.offsetAnimation;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> i() {
        return this.startAnimation;
    }

    com.airbnb.lottie.model.content.q.c j() {
        return this.type;
    }

    void c(com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a interfaceC0108a) {
        this.listeners.add(interfaceC0108a);
    }

    public q(com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.q qVar) {
        this.name = qVar.c();
        this.type = qVar.f();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = qVar.e().a();
        this.startAnimation = aVarA;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA2 = qVar.b().a();
        this.endAnimation = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = qVar.d().a();
        this.offsetAnimation = aVarA3;
        aVar.g(aVarA);
        aVar.g(aVarA2);
        aVar.g(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }
}
