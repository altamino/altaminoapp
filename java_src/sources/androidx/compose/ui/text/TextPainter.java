package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.b1;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TextPainter {

    @NotNull
    public static final TextPainter INSTANCE = new TextPainter();

    public final void a(@NotNull Canvas canvas, @NotNull TextLayoutResult textLayoutResult) {
        t.j(canvas, "canvas");
        t.j(textLayoutResult, "textLayoutResult");
        boolean z6 = textLayoutResult.h() && TextOverflow.e(textLayoutResult.k().f(), TextOverflow.Companion.a());
        if (z6) {
            Rect rectB = RectKt.b(Offset.Companion.c(), SizeKt.a(IntSize.g(textLayoutResult.A()), IntSize.f(textLayoutResult.A())));
            canvas.r();
            b1.e(canvas, rectB, 0, 2, null);
        }
        try {
            Brush brushF = textLayoutResult.k().i().f();
            if (brushF != null) {
                textLayoutResult.v().A(canvas, brushF, textLayoutResult.k().i().t(), textLayoutResult.k().i().w());
            } else {
                textLayoutResult.v().B(canvas, textLayoutResult.k().i().g(), textLayoutResult.k().i().t(), textLayoutResult.k().i().w());
            }
        } finally {
            if (z6) {
                canvas.n();
            }
        }
    }

    private TextPainter() {
    }
}
