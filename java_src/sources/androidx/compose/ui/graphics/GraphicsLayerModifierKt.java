package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class GraphicsLayerModifierKt {
    public static /* synthetic */ Modifier c(Modifier modifier, float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, Shape shape, boolean z6, RenderEffect renderEffect, long j10, long j11, int i10, Object obj) {
        return b(modifier, (i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 1.0f : f6, (i10 & 4) == 0 ? f7 : 1.0f, (i10 & 8) != 0 ? 0.0f : f10, (i10 & 16) != 0 ? 0.0f : f11, (i10 & 32) != 0 ? 0.0f : f12, (i10 & 64) != 0 ? 0.0f : f13, (i10 & 128) != 0 ? 0.0f : f14, (i10 & 256) == 0 ? f15 : 0.0f, (i10 & 512) != 0 ? 8.0f : f16, (i10 & 1024) != 0 ? TransformOrigin.Companion.a() : j6, (i10 & 2048) != 0 ? RectangleShapeKt.a() : shape, (i10 & 4096) != 0 ? false : z6, (i10 & 8192) != 0 ? null : renderEffect, (i10 & 16384) != 0 ? GraphicsLayerScopeKt.a() : j10, (i10 & 32768) != 0 ? GraphicsLayerScopeKt.a() : j11);
    }

    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull e8.l<? super GraphicsLayerScope, w7.l0> block) {
        kotlin.jvm.internal.t.j(modifier, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        return modifier.B(new BlockGraphicsLayerModifier(block, InspectableValueKt.c() ? new GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1(block) : InspectableValueKt.a()));
    }

    @Stable
    @NotNull
    public static final Modifier b(@NotNull Modifier graphicsLayer, float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, @NotNull Shape shape, boolean z6, @Nullable RenderEffect renderEffect, long j10, long j11) {
        kotlin.jvm.internal.t.j(graphicsLayer, "$this$graphicsLayer");
        kotlin.jvm.internal.t.j(shape, "shape");
        return graphicsLayer.B(new SimpleGraphicsLayerModifier(f, f6, f7, f10, f11, f12, f13, f14, f15, f16, j6, shape, z6, renderEffect, j10, j11, InspectableValueKt.c() ? new GraphicsLayerModifierKt$graphicsLayerpANQ8Wg$$inlined$debugInspectorInfo$1(f, f6, f7, f10, f11, f12, f13, f14, f15, f16, j6, shape, z6, renderEffect, j10, j11) : InspectableValueKt.a(), null));
    }

    @Stable
    @NotNull
    public static final Modifier d(@NotNull Modifier modifier) {
        kotlin.jvm.internal.t.j(modifier, "<this>");
        return InspectableValueKt.c() ? modifier.B(c(Modifier.Companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65535, null)) : modifier;
    }
}
