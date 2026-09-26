package com.narvii.widget.histogram;

import java.text.DecimalFormat;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class HistogramView$decimalFormatOne$2 extends v implements e8.a<DecimalFormat> {
    public static final HistogramView$decimalFormatOne$2 INSTANCE = new HistogramView$decimalFormatOne$2();

    HistogramView$decimalFormatOne$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final DecimalFormat invoke() {
        return new DecimalFormat("0.00");
    }
}
