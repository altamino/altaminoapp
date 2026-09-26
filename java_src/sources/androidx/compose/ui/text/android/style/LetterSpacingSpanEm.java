package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@InternalPlatformTextApi
public final class LetterSpacingSpanEm extends MetricAffectingSpan {
    private final float letterSpacing;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        textPaint.setLetterSpacing(this.letterSpacing);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        textPaint.setLetterSpacing(this.letterSpacing);
    }

    public LetterSpacingSpanEm(float f) {
        this.letterSpacing = f;
    }
}
