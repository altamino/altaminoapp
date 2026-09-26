package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class BrushPainter extends Painter {
    private float alpha;

    @NotNull
    private final Brush brush;

    @Nullable
    private ColorFilter colorFilter;

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BrushPainter) && t.e(this.brush, ((BrushPainter) obj).brush);
    }

    public BrushPainter(@NotNull Brush brush) {
        t.j(brush, "brush");
        this.brush = brush;
        this.alpha = 1.0f;
    }

    public int hashCode() {
        return this.brush.hashCode();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return this.brush.b();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        a.m(drawScope, this.brush, 0L, 0L, this.alpha, null, this.colorFilter, 0, 86, null);
    }

    @NotNull
    public String toString() {
        return "BrushPainter(brush=" + this.brush + ')';
    }
}
