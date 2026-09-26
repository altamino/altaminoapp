package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.Px;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@InternalPlatformTextApi
public final class LetterSpacingSpanPx extends MetricAffectingSpan {
    private final float letterSpacing;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        a(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        a(textPaint);
    }

    public LetterSpacingSpanPx(@Px float f) {
        this.letterSpacing = f;
    }

    private final void a(TextPaint textPaint) {
        float textSize = textPaint.getTextSize() * textPaint.getTextScaleX();
        if (textSize != 0.0f) {
            textPaint.setLetterSpacing(this.letterSpacing / textSize);
        }
    }
}
