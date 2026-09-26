package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@InternalPlatformTextApi
public final class ShadowSpan extends CharacterStyle {
    private final int color;
    private final float offsetX;
    private final float offsetY;
    private final float radius;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint tp) {
        t.j(tp, "tp");
        tp.setShadowLayer(this.radius, this.offsetX, this.offsetY, this.color);
    }

    public ShadowSpan(int i10, float f, float f6, float f7) {
        this.color = i10;
        this.offsetX = f;
        this.offsetY = f6;
        this.radius = f7;
    }
}
