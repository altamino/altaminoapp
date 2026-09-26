package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class InfiniteTransitionKt {
    @Composable
    @NotNull
    public static final State<Float> a(@NotNull InfiniteTransition infiniteTransition, float f, float f6, @NotNull InfiniteRepeatableSpec<Float> animationSpec, @Nullable Composer composer, int i10) {
        t.j(infiniteTransition, "<this>");
        t.j(animationSpec, "animationSpec");
        composer.G(469472752);
        State<Float> stateB = b(infiniteTransition, Float.valueOf(f), Float.valueOf(f6), VectorConvertersKt.i(m.INSTANCE), animationSpec, composer, (i10 & 112) | 8 | (i10 & 896) | ((i10 << 3) & 57344));
        composer.Q();
        return stateB;
    }

    @Composable
    @NotNull
    public static final <T, V extends AnimationVector> State<T> b(@NotNull InfiniteTransition infiniteTransition, T t5, T t10, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull InfiniteRepeatableSpec<T> animationSpec, @Nullable Composer composer, int i10) {
        t.j(infiniteTransition, "<this>");
        t.j(typeConverter, "typeConverter");
        t.j(animationSpec, "animationSpec");
        composer.G(-1695411770);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new InfiniteTransition.TransitionAnimationState(infiniteTransition, t5, t10, typeConverter, animationSpec);
            composer.z(objH);
        }
        composer.Q();
        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objH;
        EffectsKt.h(new InfiniteTransitionKt$animateValue$1(t5, transitionAnimationState, t10, animationSpec), composer, 0);
        EffectsKt.a(transitionAnimationState, new InfiniteTransitionKt$animateValue$2(infiniteTransition, transitionAnimationState), composer, 6);
        composer.Q();
        return transitionAnimationState;
    }

    @Composable
    @NotNull
    public static final InfiniteTransition c(@Nullable Composer composer, int i10) {
        composer.G(-840193660);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new InfiniteTransition();
            composer.z(objH);
        }
        composer.Q();
        InfiniteTransition infiniteTransition = (InfiniteTransition) objH;
        infiniteTransition.k(composer, 8);
        composer.Q();
        return infiniteTransition;
    }
}
