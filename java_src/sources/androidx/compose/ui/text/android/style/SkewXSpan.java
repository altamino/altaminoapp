package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@InternalPlatformTextApi
public class SkewXSpan extends MetricAffectingSpan {
    private final float skewX;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        textPaint.setTextSkewX(this.skewX + textPaint.getTextSkewX());
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        textPaint.setTextSkewX(this.skewX + textPaint.getTextSkewX());
    }

    public SkewXSpan(float f) {
        this.skewX = f;
    }
}
