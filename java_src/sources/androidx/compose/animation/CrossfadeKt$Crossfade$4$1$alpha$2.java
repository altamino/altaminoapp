package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
final class CrossfadeKt$Crossfade$4$1$alpha$2<T> extends v implements q<Transition.Segment<T>, Composer, Integer, FiniteAnimationSpec<Float>> {
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CrossfadeKt$Crossfade$4$1$alpha$2(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        super(3);
        this.$animationSpec = finiteAnimationSpec;
    }

    @Composable
    @NotNull
    public final FiniteAnimationSpec<Float> a(@NotNull Transition.Segment<T> animateFloat, @Nullable Composer composer, int i10) {
        t.j(animateFloat, "$this$animateFloat");
        composer.G(438406499);
        FiniteAnimationSpec<Float> finiteAnimationSpec = this.$animationSpec;
        composer.Q();
        return finiteAnimationSpec;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Object obj, Composer composer, Integer num) {
        return a((Transition.Segment) obj, composer, num.intValue());
    }
}
