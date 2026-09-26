package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.MotionDurationScale;
import e8.l;
import e8.p;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class SuspendAnimationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, V extends AnimationVector> void n(AnimationScope<T, V> animationScope, long j6, float f, Animation<T, V> animation, AnimationState<T, V> animationState, l<? super AnimationScope<T, V>, l0> lVar) {
        m(animationScope, j6, f == 0.0f ? animation.c() : (long) ((j6 - animationScope.d()) / f), animation, animationState, lVar);
    }

    @Nullable
    public static final Object b(float f, float f6, float f7, @NotNull AnimationSpec<Float> animationSpec, @NotNull p<? super Float, ? super Float, l0> pVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objD = d(VectorConvertersKt.i(m.INSTANCE), kotlin.coroutines.jvm.internal.b.c(f), kotlin.coroutines.jvm.internal.b.c(f6), kotlin.coroutines.jvm.internal.b.c(f7), animationSpec, pVar, dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x012b  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Type inference failed for: r13v1, types: [T, androidx.compose.animation.core.AnimationScope] */
    @Nullable
    public static final <T, V extends AnimationVector> Object c(@NotNull AnimationState<T, V> animationState, @NotNull Animation<T, V> animation, long j6, @NotNull l<? super AnimationScope<T, V>, l0> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$4;
        p0 p0Var;
        l<? super AnimationScope<T, V>, l0> lVar2;
        AnimationState<T, V> animationState2;
        AnimationScope animationScope;
        AnimationScope animationScope2;
        SuspendAnimationKt$animate$9 suspendAnimationKt$animate$9;
        AnimationState<T, V> animationState3 = animationState;
        Animation<T, V> animation2 = animation;
        if (dVar instanceof SuspendAnimationKt$animate$4) {
            suspendAnimationKt$animate$4 = (SuspendAnimationKt$animate$4) dVar;
            int i10 = suspendAnimationKt$animate$4.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                suspendAnimationKt$animate$4.label = i10 - Integer.MIN_VALUE;
            } else {
                suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(dVar);
            }
        } else {
            suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(dVar);
        }
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$5 = suspendAnimationKt$animate$4;
        Object obj = suspendAnimationKt$animate$5.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = suspendAnimationKt$animate$5.label;
        if (i11 == 0) {
            w.b(obj);
            T tE = animation2.e(0L);
            AnimationVector animationVectorG = animation2.g(0L);
            p0 p0Var2 = new p0();
            try {
                if (j6 == Long.MIN_VALUE) {
                    SuspendAnimationKt$animate$6 suspendAnimationKt$animate$6 = new SuspendAnimationKt$animate$6(p0Var2, tE, animation, animationVectorG, animationState, o(suspendAnimationKt$animate$5.getContext()), lVar);
                    suspendAnimationKt$animate$5.L$0 = animationState3;
                    suspendAnimationKt$animate$5.L$1 = animation2;
                    lVar2 = lVar;
                    suspendAnimationKt$animate$5.L$2 = lVar2;
                    suspendAnimationKt$animate$5.L$3 = p0Var2;
                    suspendAnimationKt$animate$5.label = 1;
                    if (l(animation2, suspendAnimationKt$animate$6, suspendAnimationKt$animate$5) == objE) {
                        return objE;
                    }
                } else {
                    lVar2 = lVar;
                    try {
                        ?? r13 = (T) new AnimationScope(tE, animation.d(), animationVectorG, j6, animation.f(), j6, true, new SuspendAnimationKt$animate$7(animationState3));
                        p0Var2 = p0Var2;
                        n(r13, j6, o(suspendAnimationKt$animate$5.getContext()), animation, animationState, lVar);
                        p0Var2.element = r13;
                    } catch (CancellationException e) {
                        e = e;
                        p0Var2 = p0Var2;
                        p0Var = p0Var2;
                        animationScope = (AnimationScope) p0Var.element;
                        if (animationScope != null) {
                            animationScope.k(false);
                        }
                        animationScope2 = (AnimationScope) p0Var.element;
                        if (animationScope2 != null && animationScope2.c() == animationState3.b()) {
                            animationState3.m(false);
                        }
                        throw e;
                    }
                }
                animationState2 = animationState3;
                p0Var = p0Var2;
            } catch (CancellationException e2) {
                e = e2;
            }
        } else {
            if (i11 != 1 && i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p0Var = (p0) suspendAnimationKt$animate$5.L$3;
            l<? super AnimationScope<T, V>, l0> lVar3 = (l) suspendAnimationKt$animate$5.L$2;
            Animation<T, V> animation3 = (Animation) suspendAnimationKt$animate$5.L$1;
            animationState2 = (AnimationState) suspendAnimationKt$animate$5.L$0;
            try {
                w.b(obj);
                lVar2 = lVar3;
                animation2 = animation3;
            } catch (CancellationException e6) {
                e = e6;
                animationState3 = animationState2;
                animationScope = (AnimationScope) p0Var.element;
                if (animationScope != null) {
                    animationScope.k(false);
                }
                animationScope2 = (AnimationScope) p0Var.element;
                if (animationScope2 != null) {
                    animationState3.m(false);
                }
                throw e;
            }
        }
        do {
            T t5 = p0Var.element;
            t.g(t5);
            if (!((AnimationScope) t5).h()) {
                return l0.INSTANCE;
            }
            suspendAnimationKt$animate$9 = new SuspendAnimationKt$animate$9(p0Var, o(suspendAnimationKt$animate$5.getContext()), animation2, animationState2, lVar2);
            suspendAnimationKt$animate$5.L$0 = animationState2;
            suspendAnimationKt$animate$5.L$1 = animation2;
            suspendAnimationKt$animate$5.L$2 = lVar2;
            suspendAnimationKt$animate$5.L$3 = p0Var;
            suspendAnimationKt$animate$5.label = 2;
        } while (l(animation2, suspendAnimationKt$animate$9, suspendAnimationKt$animate$5) != objE);
        return objE;
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object d(@NotNull TwoWayConverter<T, V> twoWayConverter, T t5, T t10, @Nullable T t11, @NotNull AnimationSpec<T> animationSpec, @NotNull p<? super T, ? super T, l0> pVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        V vD;
        if (t11 == null || (vD = twoWayConverter.a().invoke(t11)) == null) {
            vD = AnimationVectorsKt.d(twoWayConverter.a().invoke(t5));
        }
        Object objF = f(new AnimationState(twoWayConverter, t5, vD, 0L, 0L, false, 56, null), new TargetBasedAnimation(animationSpec, twoWayConverter, t5, t10, vD), 0L, new SuspendAnimationKt$animate$3(pVar, twoWayConverter), dVar, 2, null);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    public static /* synthetic */ Object e(float f, float f6, float f7, AnimationSpec animationSpec, p pVar, kotlin.coroutines.d dVar, int i10, Object obj) {
        float f10 = (i10 & 4) != 0 ? 0.0f : f7;
        if ((i10 & 8) != 0) {
            animationSpec = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        return b(f, f6, f10, animationSpec, pVar, dVar);
    }

    public static /* synthetic */ Object f(AnimationState animationState, Animation animation, long j6, l lVar, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = Long.MIN_VALUE;
        }
        long j10 = j6;
        if ((i10 & 4) != 0) {
            lVar = SuspendAnimationKt$animate$5.INSTANCE;
        }
        return c(animationState, animation, j10, lVar, dVar);
    }

    public static /* synthetic */ Object i(AnimationState animationState, DecayAnimationSpec decayAnimationSpec, boolean z6, l lVar, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        if ((i10 & 4) != 0) {
            lVar = SuspendAnimationKt$animateDecay$4.INSTANCE;
        }
        return h(animationState, decayAnimationSpec, z6, lVar, dVar);
    }

    public static /* synthetic */ Object k(AnimationState animationState, Object obj, AnimationSpec animationSpec, boolean z6, l lVar, kotlin.coroutines.d dVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            animationSpec = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        boolean z10 = z6;
        if ((i10 & 8) != 0) {
            lVar = SuspendAnimationKt$animateTo$2.INSTANCE;
        }
        return j(animationState, obj, animationSpec2, z10, lVar, dVar);
    }

    public static final float o(@NotNull kotlin.coroutines.g gVar) {
        t.j(gVar, "<this>");
        MotionDurationScale motionDurationScale = (MotionDurationScale) gVar.get(MotionDurationScale.Key);
        float fG0 = motionDurationScale != null ? motionDurationScale.g0() : 1.0f;
        if (fG0 >= 0.0f) {
            return fG0;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public static final <T, V extends AnimationVector> void p(@NotNull AnimationScope<T, V> animationScope, @NotNull AnimationState<T, V> state) {
        t.j(animationScope, "<this>");
        t.j(state, "state");
        state.n(animationScope.e());
        AnimationVectorsKt.c(state.f(), animationScope.g());
        state.k(animationScope.b());
        state.l(animationScope.c());
        state.m(animationScope.h());
    }

    @Nullable
    public static final Object g(float f, float f6, @NotNull FloatDecayAnimationSpec floatDecayAnimationSpec, @NotNull p<? super Float, ? super Float, l0> pVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objF = f(AnimationStateKt.b(f, f6, 0L, 0L, false, 28, null), AnimationKt.a(floatDecayAnimationSpec, f, f6), 0L, new SuspendAnimationKt$animateDecay$2(pVar), dVar, 2, null);
        if (objF == kotlin.coroutines.intrinsics.d.e()) {
            return objF;
        }
        return l0.INSTANCE;
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object h(@NotNull AnimationState<T, V> animationState, @NotNull DecayAnimationSpec<T> decayAnimationSpec, boolean z6, @NotNull l<? super AnimationScope<T, V>, l0> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        long jB;
        DecayAnimation decayAnimation = new DecayAnimation((DecayAnimationSpec) decayAnimationSpec, (TwoWayConverter<T, AnimationVector>) animationState.d(), (Object) animationState.getValue(), animationState.f());
        if (z6) {
            jB = animationState.b();
        } else {
            jB = Long.MIN_VALUE;
        }
        Object objC = c(animationState, decayAnimation, jB, lVar, dVar);
        if (objC == kotlin.coroutines.intrinsics.d.e()) {
            return objC;
        }
        return l0.INSTANCE;
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object j(@NotNull AnimationState<T, V> animationState, T t5, @NotNull AnimationSpec<T> animationSpec, boolean z6, @NotNull l<? super AnimationScope<T, V>, l0> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        long jB;
        TargetBasedAnimation targetBasedAnimation = new TargetBasedAnimation(animationSpec, animationState.d(), animationState.getValue(), t5, animationState.f());
        if (z6) {
            jB = animationState.b();
        } else {
            jB = Long.MIN_VALUE;
        }
        Object objC = c(animationState, targetBasedAnimation, jB, lVar, dVar);
        if (objC == kotlin.coroutines.intrinsics.d.e()) {
            return objC;
        }
        return l0.INSTANCE;
    }

    private static final <R, T, V extends AnimationVector> Object l(Animation<T, V> animation, l<? super Long, ? extends R> lVar, kotlin.coroutines.d<? super R> dVar) {
        if (animation.a()) {
            return InfiniteAnimationPolicyKt.a(lVar, dVar);
        }
        return MonotonicFrameClockKt.b(new SuspendAnimationKt$callWithFrameNanos$2(lVar), dVar);
    }

    private static final <T, V extends AnimationVector> void m(AnimationScope<T, V> animationScope, long j6, long j10, Animation<T, V> animation, AnimationState<T, V> animationState, l<? super AnimationScope<T, V>, l0> lVar) {
        animationScope.j(j6);
        animationScope.l(animation.e(j10));
        animationScope.m(animation.g(j10));
        if (animation.b(j10)) {
            animationScope.i(animationScope.c());
            animationScope.k(false);
        }
        p(animationScope, animationState);
        lVar.invoke(animationScope);
    }
}
