package androidx.compose.ui.text.platform.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ShaderBrush;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {

    @NotNull
    private final ShaderBrush shaderBrush;

    @Nullable
    private Size size;

    public final void a(@Nullable Size size) {
        this.size = size;
    }

    public ShaderBrushSpan(@NotNull ShaderBrush shaderBrush) {
        t.j(shaderBrush, "shaderBrush");
        this.shaderBrush = shaderBrush;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@Nullable TextPaint textPaint) {
        Size size;
        if (textPaint == null || (size = this.size) == null) {
            return;
        }
        textPaint.setShader(this.shaderBrush.c(size.m()));
    }
}
