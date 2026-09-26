package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class g {
    private final List<a<com.airbnb.lottie.model.content.l, Path>> maskAnimations;
    private final List<com.airbnb.lottie.model.content.g> masks;
    private final List<a<Integer, Integer>> opacityAnimations;

    public List<a<com.airbnb.lottie.model.content.l, Path>> a() {
        return this.maskAnimations;
    }

    public List<com.airbnb.lottie.model.content.g> b() {
        return this.masks;
    }

    public List<a<Integer, Integer>> c() {
        return this.opacityAnimations;
    }

    public g(List<com.airbnb.lottie.model.content.g> list) {
        this.masks = list;
        this.maskAnimations = new ArrayList(list.size());
        this.opacityAnimations = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.maskAnimations.add(list.get(i10).b().a());
            this.opacityAnimations.add(list.get(i10).c().a());
        }
    }
}
