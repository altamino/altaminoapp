package com.bumptech.glide;

import com.bumptech.glide.k;

/* JADX INFO: loaded from: classes9.dex */
public abstract class k<CHILD extends k<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private com.bumptech.glide.request.transition.c<? super TranscodeType> transitionFactory = com.bumptech.glide.request.transition.a.a();

    final com.bumptech.glide.request.transition.c<? super TranscodeType> c() {
        return this.transitionFactory;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
