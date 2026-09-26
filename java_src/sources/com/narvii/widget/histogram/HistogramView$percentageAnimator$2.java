package com.narvii.widget.histogram;

import android.animation.ValueAnimator;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes3.dex */
final class HistogramView$percentageAnimator$2 extends v implements e8.a<ValueAnimator> {
    public static final HistogramView$percentageAnimator$2 INSTANCE = new HistogramView$percentageAnimator$2();

    HistogramView$percentageAnimator$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ValueAnimator invoke() {
        return ValueAnimator.ofFloat(0.02f, 1.0f);
    }
}
