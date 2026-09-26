package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ColorPainter extends Painter {
    private float alpha;
    private final long color;

    @Nullable
    private ColorFilter colorFilter;
    private final long intrinsicSize;

    public /* synthetic */ ColorPainter(long j6, k kVar) {
        this(j6);
    }

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
        return (obj instanceof ColorPainter) && Color.n(this.color, ((ColorPainter) obj).color);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return this.intrinsicSize;
    }

    private ColorPainter(long j6) {
        this.color = j6;
        this.alpha = 1.0f;
        this.intrinsicSize = Size.Companion.a();
    }

    public int hashCode() {
        return Color.t(this.color);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        a.n(drawScope, this.color, 0L, 0L, this.alpha, null, this.colorFilter, 0, 86, null);
    }

    @NotNull
    public String toString() {
        return "ColorPainter(color=" + ((Object) Color.u(this.color)) + ')';
    }
}
