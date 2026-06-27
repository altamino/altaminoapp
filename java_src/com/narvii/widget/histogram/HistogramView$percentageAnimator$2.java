package com.narvii.widget.histogram;

import android.animation.ValueAnimator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistogramView.kt */
/* loaded from: classes3.dex */
final class HistogramView$percentageAnimator$2 extends Lambda implements Function0<ValueAnimator> {
    public static final HistogramView$percentageAnimator$2 INSTANCE = new HistogramView$percentageAnimator$2();

    HistogramView$percentageAnimator$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ValueAnimator invoke() {
        return ValueAnimator.ofFloat(0.02f, 1.0f);
    }
}
