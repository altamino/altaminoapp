package com.narvii.widget.histogram;

import com.narvii.widget.histogram.HistogramView.DrawConfig;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class HistogramView$drawConfig$2 extends v implements e8.a<HistogramView.DrawConfig> {
    final /* synthetic */ HistogramView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistogramView$drawConfig$2(HistogramView histogramView) {
        super(0);
        this.this$0 = histogramView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final HistogramView.DrawConfig invoke() {
        HistogramView histogramView = this.this$0;
        return histogramView.new DrawConfig(histogramView.getBottom() - this.this$0.getPaddingBottom(), (this.this$0.getHeight() - this.this$0.getPaddingBottom()) - this.this$0.getPaddingTop());
    }
}
