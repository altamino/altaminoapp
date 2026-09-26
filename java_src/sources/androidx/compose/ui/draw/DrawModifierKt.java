package androidx.compose.ui.draw;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull l<? super DrawScope, l0> onDraw) {
        t.j(modifier, "<this>");
        t.j(onDraw, "onDraw");
        return modifier.B(new DrawBackgroundModifier(onDraw, InspectableValueKt.c() ? new DrawModifierKt$drawBehind$$inlined$debugInspectorInfo$1(onDraw) : InspectableValueKt.a()));
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull l<? super CacheDrawScope, DrawResult> onBuildDrawCache) {
        t.j(modifier, "<this>");
        t.j(onBuildDrawCache, "onBuildDrawCache");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new DrawModifierKt$drawWithCache$$inlined$debugInspectorInfo$1(onBuildDrawCache) : InspectableValueKt.a(), new DrawModifierKt$drawWithCache$2(onBuildDrawCache));
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull l<? super ContentDrawScope, l0> onDraw) {
        t.j(modifier, "<this>");
        t.j(onDraw, "onDraw");
        return modifier.B(new DrawWithContentModifier(onDraw, InspectableValueKt.c() ? new DrawModifierKt$drawWithContent$$inlined$debugInspectorInfo$1(onDraw) : InspectableValueKt.a()));
    }
}
