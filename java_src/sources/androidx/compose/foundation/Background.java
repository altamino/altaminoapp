package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class Background extends InspectorValueInfo implements DrawModifier {
    private final float alpha;

    @Nullable
    private final Brush brush;

    @Nullable
    private final Color color;

    @Nullable
    private LayoutDirection lastLayoutDirection;

    @Nullable
    private Outline lastOutline;

    @Nullable
    private Size lastSize;

    @NotNull
    private final Shape shape;

    public /* synthetic */ Background(Color color, Brush brush, float f, Shape shape, l lVar, k kVar) {
        this(color, brush, f, shape, lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public /* synthetic */ Background(Color color, Brush brush, float f, Shape shape, l lVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : color, (i10 & 2) != 0 ? null : brush, (i10 & 4) != 0 ? 1.0f : f, shape, lVar, null);
    }

    private final void b(ContentDrawScope contentDrawScope) {
        Color color = this.color;
        if (color != null) {
            androidx.compose.ui.graphics.drawscope.a.n(contentDrawScope, color.v(), 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        Brush brush = this.brush;
        if (brush != null) {
            androidx.compose.ui.graphics.drawscope.a.m(contentDrawScope, brush, 0L, 0L, this.alpha, null, null, 0, 118, null);
        }
    }

    public boolean equals(@Nullable Object obj) {
        Background background = obj instanceof Background ? (Background) obj : null;
        return background != null && t.e(this.color, background.color) && t.e(this.brush, background.brush) && this.alpha == background.alpha && t.e(this.shape, background.shape);
    }

    public int hashCode() {
        Color color = this.color;
        int iT = (color != null ? Color.t(color.v()) : 0) * 31;
        Brush brush = this.brush;
        return ((((iT + (brush != null ? brush.hashCode() : 0)) * 31) + Float.floatToIntBits(this.alpha)) * 31) + this.shape.hashCode();
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void r(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        if (this.shape == RectangleShapeKt.a()) {
            b(contentDrawScope);
        } else {
            a(contentDrawScope);
        }
        contentDrawScope.Z();
    }

    @NotNull
    public String toString() {
        return "Background(color=" + this.color + ", brush=" + this.brush + ", alpha = " + this.alpha + ", shape=" + this.shape + ')';
    }

    private Background(Color color, Brush brush, float f, Shape shape, l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.color = color;
        this.brush = brush;
        this.alpha = f;
        this.shape = shape;
    }

    private final void a(ContentDrawScope contentDrawScope) {
        Outline outlineA;
        if (Size.e(contentDrawScope.c(), this.lastSize) && contentDrawScope.getLayoutDirection() == this.lastLayoutDirection) {
            outlineA = this.lastOutline;
            t.g(outlineA);
        } else {
            outlineA = this.shape.a(contentDrawScope.c(), contentDrawScope.getLayoutDirection(), contentDrawScope);
        }
        Color color = this.color;
        if (color != null) {
            color.v();
            OutlineKt.e(contentDrawScope, outlineA, this.color.v(), (60 & 4) != 0 ? 1.0f : 0.0f, (60 & 8) != 0 ? Fill.INSTANCE : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? DrawScope.Companion.a() : 0);
        }
        Brush brush = this.brush;
        if (brush != null) {
            OutlineKt.d(contentDrawScope, outlineA, brush, this.alpha, null, null, 0, 56, null);
        }
        this.lastOutline = outlineA;
        this.lastSize = Size.c(contentDrawScope.c());
    }
}
