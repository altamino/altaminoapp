package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class ShadowKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier shadow, float f, @NotNull Shape shape, boolean z6, long j6, long j10) {
        t.j(shadow, "$this$shadow");
        t.j(shape, "shape");
        if (Dp.e(f, Dp.f(0)) > 0 || z6) {
            return InspectableValueKt.b(shadow, InspectableValueKt.c() ? new ShadowKt$shadows4CzXII$$inlined$debugInspectorInfo$1(f, shape, z6, j6, j10) : InspectableValueKt.a(), GraphicsLayerModifierKt.a(Modifier.Companion, new ShadowKt$shadow$2$1(f, shape, z6, j6, j10)));
        }
        return shadow;
    }

    public static /* synthetic */ Modifier b(Modifier modifier, float f, Shape shape, boolean z6, long j6, long j10, int i10, Object obj) {
        boolean z10;
        Shape shapeA = (i10 & 2) != 0 ? RectangleShapeKt.a() : shape;
        if ((i10 & 4) != 0) {
            z10 = false;
            if (Dp.e(f, Dp.f(0)) > 0) {
                z10 = true;
            }
        } else {
            z10 = z6;
        }
        return a(modifier, f, shapeA, z10, (i10 & 8) != 0 ? GraphicsLayerScopeKt.a() : j6, (i10 & 16) != 0 ? GraphicsLayerScopeKt.a() : j10);
    }
}
