package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class TransitionKt {
    public static final int AnimationDebugDurationScale = 1;

    @Composable
    @NotNull
    public static final <S, T> Transition<T> a(@NotNull Transition<S> transition, T t5, T t10, @NotNull String childLabel, @Nullable Composer composer, int i10) {
        t.j(transition, "<this>");
        t.j(childLabel, "childLabel");
        composer.G(-198307638);
        composer.G(1157296644);
        boolean zK = composer.k(transition);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new Transition(new MutableTransitionState(t5), transition.h() + " > " + childLabel);
            composer.z(objH);
        }
        composer.Q();
        Transition<T> transition2 = (Transition) objH;
        EffectsKt.a(transition2, new TransitionKt$createChildTransitionInternal$1(transition, transition2), composer, 0);
        if (transition.q()) {
            transition2.y(t5, t10, transition.i());
        } else {
            transition2.G(t10, composer, ((i10 >> 3) & 8) | ((i10 >> 6) & 14));
            transition2.B(false);
        }
        composer.Q();
        return transition2;
    }

    @Composable
    @InternalAnimationApi
    @NotNull
    public static final <S, T, V extends AnimationVector> Transition<S>.DeferredAnimation<T, V> b(@NotNull Transition<S> transition, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        t.j(transition, "<this>");
        t.j(typeConverter, "typeConverter");
        composer.G(-1714122528);
        if ((i11 & 2) != 0) {
            str = "DeferredAnimation";
        }
        composer.G(1157296644);
        boolean zK = composer.k(transition);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new Transition.DeferredAnimation(transition, typeConverter, str);
            composer.z(objH);
        }
        composer.Q();
        Transition<S>.DeferredAnimation<T, V> deferredAnimation = (Transition.DeferredAnimation) objH;
        EffectsKt.a(deferredAnimation, new TransitionKt$createDeferredAnimation$1(transition, deferredAnimation), composer, 8);
        if (transition.q()) {
            deferredAnimation.c();
        }
        composer.Q();
        return deferredAnimation;
    }

    @Composable
    @NotNull
    public static final <S, T, V extends AnimationVector> State<T> c(@NotNull Transition<S> transition, T t5, T t10, @NotNull FiniteAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull String label, @Nullable Composer composer, int i10) {
        t.j(transition, "<this>");
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
        t.j(label, "label");
        composer.G(-304821198);
        composer.G(1157296644);
        boolean zK = composer.k(transition);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new Transition.TransitionAnimationState(transition, t5, AnimationStateKt.g(typeConverter, t10), typeConverter, label);
            composer.z(objH);
        }
        composer.Q();
        Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) objH;
        if (transition.q()) {
            transitionAnimationState.x(t5, t10, animationSpec);
        } else {
            transitionAnimationState.y(t10, animationSpec);
        }
        EffectsKt.a(transitionAnimationState, new TransitionKt$createTransitionAnimation$1(transition, transitionAnimationState), composer, 0);
        composer.Q();
        return transitionAnimationState;
    }

    @Composable
    @NotNull
    public static final <T> Transition<T> d(@NotNull MutableTransitionState<T> transitionState, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        t.j(transitionState, "transitionState");
        composer.G(882913843);
        if ((i11 & 2) != 0) {
            str = null;
        }
        composer.G(1157296644);
        boolean zK = composer.k(transitionState);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new Transition((MutableTransitionState) transitionState, str);
            composer.z(objH);
        }
        composer.Q();
        Transition<T> transition = (Transition) objH;
        transition.f(transitionState.b(), composer, 0);
        EffectsKt.a(transition, new TransitionKt$updateTransition$2(transition), composer, 0);
        composer.Q();
        return transition;
    }

    @Composable
    @NotNull
    public static final <T> Transition<T> e(T t5, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        composer.G(2029166765);
        if ((i11 & 2) != 0) {
            str = null;
        }
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new Transition(t5, str);
            composer.z(objH);
        }
        composer.Q();
        Transition<T> transition = (Transition) objH;
        transition.f(t5, composer, (i10 & 8) | 48 | (i10 & 14));
        EffectsKt.a(transition, new TransitionKt$updateTransition$1(transition), composer, 6);
        composer.Q();
        return transition;
    }
}
