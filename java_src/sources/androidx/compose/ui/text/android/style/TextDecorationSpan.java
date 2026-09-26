package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@InternalPlatformTextApi
public final class TextDecorationSpan extends CharacterStyle {
    private final boolean isStrikethroughText;
    private final boolean isUnderlineText;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        t.j(textPaint, "textPaint");
        textPaint.setUnderlineText(this.isUnderlineText);
        textPaint.setStrikeThruText(this.isStrikethroughText);
    }

    public TextDecorationSpan(boolean z6, boolean z10) {
        this.isUnderlineText = z6;
        this.isStrikethroughText = z10;
    }
}
