package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.style.TextDecoration;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidTextPaint extends TextPaint {

    @Nullable
    private Brush brush;

    @Nullable
    private Size brushSize;

    @NotNull
    private Shadow shadow;

    @NotNull
    private TextDecoration textDecoration;

    public final void a(@Nullable Brush brush, long j6) {
        Size size;
        if (brush == null) {
            setShader(null);
            return;
        }
        if (t.e(this.brush, brush) && (size = this.brushSize) != null && Size.f(size.m(), j6)) {
            return;
        }
        this.brush = brush;
        this.brushSize = Size.c(j6);
        if (brush instanceof SolidColor) {
            setShader(null);
            b(((SolidColor) brush).c());
        } else {
            if (!(brush instanceof ShaderBrush) || j6 == Size.Companion.a()) {
                return;
            }
            setShader(((ShaderBrush) brush).c(j6));
        }
    }

    public final void b(long j6) {
        int iL;
        if (j6 == Color.Companion.f() || getColor() == (iL = ColorKt.l(j6))) {
            return;
        }
        setColor(iL);
    }

    public final void c(@Nullable Shadow shadow) {
        if (shadow == null) {
            shadow = Shadow.Companion.a();
        }
        if (t.e(this.shadow, shadow)) {
            return;
        }
        this.shadow = shadow;
        if (t.e(shadow, Shadow.Companion.a())) {
            clearShadowLayer();
        } else {
            setShadowLayer(this.shadow.b(), Offset.m(this.shadow.d()), Offset.n(this.shadow.d()), ColorKt.l(this.shadow.c()));
        }
    }

    public final void d(@Nullable TextDecoration textDecoration) {
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.c();
        }
        if (t.e(this.textDecoration, textDecoration)) {
            return;
        }
        this.textDecoration = textDecoration;
        TextDecoration.Companion companion = TextDecoration.Companion;
        setUnderlineText(textDecoration.d(companion.d()));
        setStrikeThruText(this.textDecoration.d(companion.b()));
    }

    public AndroidTextPaint(int i10, float f) {
        super(i10);
        ((TextPaint) this).density = f;
        this.textDecoration = TextDecoration.Companion.c();
        this.shadow = Shadow.Companion.a();
    }
}
