package com.narvii.widget.histogram;

import java.text.DecimalFormat;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistogramView.kt */
/* loaded from: classes3.dex */
final class HistogramView$decimalFormatOne$2 extends Lambda implements Function0<DecimalFormat> {
    public static final HistogramView$decimalFormatOne$2 INSTANCE = new HistogramView$decimalFormatOne$2();

    HistogramView$decimalFormatOne$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final DecimalFormat invoke() {
        return new DecimalFormat("0.00");
    }
}
