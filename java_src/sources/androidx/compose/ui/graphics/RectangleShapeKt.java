package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class RectangleShapeKt {

    @NotNull
    private static final Shape RectangleShape = new Shape() { // from class: androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1
        @NotNull
        public String toString() {
            return "RectangleShape";
        }

        @Override // androidx.compose.ui.graphics.Shape
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Outline.Rectangle a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
            kotlin.jvm.internal.t.j(layoutDirection, "layoutDirection");
            kotlin.jvm.internal.t.j(density, "density");
            return new Outline.Rectangle(SizeKt.c(j6));
        }
    };

    @NotNull
    public static final Shape a() {
        return RectangleShape;
    }
}
