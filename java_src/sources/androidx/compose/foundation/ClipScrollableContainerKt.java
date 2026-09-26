package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class ClipScrollableContainerKt {

    @NotNull
    private static final Modifier HorizontalScrollableClipModifier;
    private static final float MaxSupportedElevation = Dp.f(30);

    @NotNull
    private static final Modifier VerticalScrollableClipModifier;

    public static final float b() {
        return MaxSupportedElevation;
    }

    static {
        Modifier.Companion companion = Modifier.Companion;
        HorizontalScrollableClipModifier = ClipKt.a(companion, new Shape() { // from class: androidx.compose.foundation.ClipScrollableContainerKt$HorizontalScrollableClipModifier$1
            @Override // androidx.compose.ui.graphics.Shape
            @NotNull
            public Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                t.j(layoutDirection, "layoutDirection");
                t.j(density, "density");
                float fJ0 = density.j0(ClipScrollableContainerKt.b());
                return new Outline.Rectangle(new Rect(0.0f, -fJ0, Size.i(j6), Size.g(j6) + fJ0));
            }
        });
        VerticalScrollableClipModifier = ClipKt.a(companion, new Shape() { // from class: androidx.compose.foundation.ClipScrollableContainerKt$VerticalScrollableClipModifier$1
            @Override // androidx.compose.ui.graphics.Shape
            @NotNull
            public Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                t.j(layoutDirection, "layoutDirection");
                t.j(density, "density");
                float fJ0 = density.j0(ClipScrollableContainerKt.b());
                return new Outline.Rectangle(new Rect(-fJ0, 0.0f, Size.i(j6) + fJ0, Size.g(j6)));
            }
        });
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull Orientation orientation) {
        t.j(modifier, "<this>");
        t.j(orientation, "orientation");
        return modifier.B(orientation == Orientation.Vertical ? VerticalScrollableClipModifier : HorizontalScrollableClipModifier);
    }
}
