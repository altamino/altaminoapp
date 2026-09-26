package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Painter {

    @Nullable
    private ColorFilter colorFilter;

    @Nullable
    private Paint layerPaint;
    private boolean useLayer;
    private float alpha = 1.0f;

    @NotNull
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;

    @NotNull
    private final l<DrawScope, l0> drawLambda = new Painter$drawLambda$1(this);

    protected boolean a(float f) {
        return false;
    }

    protected boolean e(@Nullable ColorFilter colorFilter) {
        return false;
    }

    protected boolean f(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return false;
    }

    public abstract long k();

    protected abstract void m(@NotNull DrawScope drawScope);

    private final void g(float f) {
        if (this.alpha == f) {
            return;
        }
        if (!a(f)) {
            if (f == 1.0f) {
                Paint paint = this.layerPaint;
                if (paint != null) {
                    paint.b(f);
                }
                this.useLayer = false;
            } else {
                l().b(f);
                this.useLayer = true;
            }
        }
        this.alpha = f;
    }

    private final void h(ColorFilter colorFilter) {
        if (t.e(this.colorFilter, colorFilter)) {
            return;
        }
        if (!e(colorFilter)) {
            if (colorFilter == null) {
                Paint paint = this.layerPaint;
                if (paint != null) {
                    paint.y(null);
                }
                this.useLayer = false;
            } else {
                l().y(colorFilter);
                this.useLayer = true;
            }
        }
        this.colorFilter = colorFilter;
    }

    private final void i(LayoutDirection layoutDirection) {
        if (this.layoutDirection != layoutDirection) {
            f(layoutDirection);
            this.layoutDirection = layoutDirection;
        }
    }

    private final Paint l() {
        Paint paint = this.layerPaint;
        if (paint != null) {
            return paint;
        }
        Paint paintA = AndroidPaint_androidKt.a();
        this.layerPaint = paintA;
        return paintA;
    }

    public final void j(@NotNull DrawScope draw, long j6, float f, @Nullable ColorFilter colorFilter) {
        t.j(draw, "$this$draw");
        g(f);
        h(colorFilter);
        i(draw.getLayoutDirection());
        float fI = Size.i(draw.c()) - Size.i(j6);
        float fG = Size.g(draw.c()) - Size.g(j6);
        draw.T().d().f(0.0f, 0.0f, fI, fG);
        if (f > 0.0f && Size.i(j6) > 0.0f && Size.g(j6) > 0.0f) {
            if (this.useLayer) {
                Rect rectB = RectKt.b(Offset.Companion.c(), SizeKt.a(Size.i(j6), Size.g(j6)));
                Canvas canvasA = draw.T().a();
                try {
                    canvasA.g(rectB, l());
                    m(draw);
                    canvasA.n();
                } catch (Throwable th) {
                    canvasA.n();
                    throw th;
                }
            } else {
                m(draw);
            }
        }
        draw.T().d().f(-0.0f, -0.0f, -fI, -fG);
    }
}
