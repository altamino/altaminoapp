package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.IntSize;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class AnimationModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull FiniteAnimationSpec<IntSize> animationSpec, @Nullable p<? super IntSize, ? super IntSize, l0> pVar) {
        t.j(modifier, "<this>");
        t.j(animationSpec, "animationSpec");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new AnimationModifierKt$animateContentSize$$inlined$debugInspectorInfo$1(animationSpec, pVar) : InspectableValueKt.a(), new AnimationModifierKt$animateContentSize$2(pVar, animationSpec));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        if ((i10 & 2) != 0) {
            pVar = null;
        }
        return a(modifier, finiteAnimationSpec, pVar);
    }
}
