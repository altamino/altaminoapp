package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import e8.l;
import e8.p;
import java.util.Iterator;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Stable
public final class Transition<S> {

    @NotNull
    private final SnapshotStateList<Transition<S>.TransitionAnimationState<?, ?>> _animations;

    @NotNull
    private final SnapshotStateList<Transition<?>> _transitions;

    @NotNull
    private final MutableState isSeeking$delegate;

    @Nullable
    private final String label;
    private long lastSeekedTimeNanos;

    @NotNull
    private final MutableState playTimeNanos$delegate;

    @NotNull
    private final MutableState segment$delegate;

    @NotNull
    private final MutableState startTimeNanos$delegate;

    @NotNull
    private final MutableState targetState$delegate;

    @NotNull
    private final State totalDurationNanos$delegate;

    @NotNull
    private final MutableTransitionState<S> transitionState;

    @NotNull
    private final MutableState updateChildrenNeeded$delegate;

    @InternalAnimationApi
    public final class DeferredAnimation<T, V extends AnimationVector> {

        @Nullable
        private Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> data;

        @NotNull
        private final String label;
        final /* synthetic */ Transition<S> this$0;

        @NotNull
        private final TwoWayConverter<T, V> typeConverter;

        public final class DeferredAnimationData<T, V extends AnimationVector> implements State<T> {

            @NotNull
            private final Transition<S>.TransitionAnimationState<T, V> animation;

            @NotNull
            private l<? super S, ? extends T> targetValueByState;
            final /* synthetic */ Transition<S>.DeferredAnimation<T, V> this$0;

            @NotNull
            private l<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec;

            @NotNull
            public final Transition<S>.TransitionAnimationState<T, V> a() {
                return this.animation;
            }

            @NotNull
            public final l<S, T> b() {
                return this.targetValueByState;
            }

            @NotNull
            public final l<Segment<S>, FiniteAnimationSpec<T>> d() {
                return this.transitionSpec;
            }

            public final void e(@NotNull l<? super S, ? extends T> lVar) {
                t.j(lVar, "<set-?>");
                this.targetValueByState = lVar;
            }

            public final void f(@NotNull l<? super Segment<S>, ? extends FiniteAnimationSpec<T>> lVar) {
                t.j(lVar, "<set-?>");
                this.transitionSpec = lVar;
            }

            public DeferredAnimationData(@NotNull DeferredAnimation deferredAnimation, @NotNull Transition<S>.TransitionAnimationState<T, V> animation, @NotNull l<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec, l<? super S, ? extends T> targetValueByState) {
                t.j(animation, "animation");
                t.j(transitionSpec, "transitionSpec");
                t.j(targetValueByState, "targetValueByState");
                this.this$0 = deferredAnimation;
                this.animation = animation;
                this.transitionSpec = transitionSpec;
                this.targetValueByState = targetValueByState;
            }

            @Override // androidx.compose.runtime.State
            public T getValue() {
                j(this.this$0.this$0.k());
                return this.animation.getValue();
            }

            public final void j(@NotNull Segment<S> segment) {
                t.j(segment, "segment");
                T tInvoke = this.targetValueByState.invoke(segment.b());
                if (!this.this$0.this$0.q()) {
                    this.animation.y(tInvoke, this.transitionSpec.invoke(segment));
                } else {
                    this.animation.x(this.targetValueByState.invoke(segment.c()), tInvoke, this.transitionSpec.invoke(segment));
                }
            }
        }

        @Nullable
        public final Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> b() {
            return this.data;
        }

        public DeferredAnimation(@NotNull Transition transition, @NotNull TwoWayConverter<T, V> typeConverter, String label) {
            t.j(typeConverter, "typeConverter");
            t.j(label, "label");
            this.this$0 = transition;
            this.typeConverter = typeConverter;
            this.label = label;
        }

        @NotNull
        public final State<T> a(@NotNull l<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec, @NotNull l<? super S, ? extends T> targetValueByState) {
            t.j(transitionSpec, "transitionSpec");
            t.j(targetValueByState, "targetValueByState");
            DeferredAnimationData deferredAnimationData = this.data;
            if (deferredAnimationData == null) {
                Transition<S> transition = this.this$0;
                deferredAnimationData = new DeferredAnimationData(this, new TransitionAnimationState(transition, targetValueByState.invoke(transition.g()), AnimationStateKt.g(this.typeConverter, targetValueByState.invoke(this.this$0.g())), this.typeConverter, this.label), transitionSpec, targetValueByState);
                Transition<S> transition2 = this.this$0;
                this.data = deferredAnimationData;
                transition2.d(deferredAnimationData.a());
            }
            Transition<S> transition3 = this.this$0;
            deferredAnimationData.e(targetValueByState);
            deferredAnimationData.f(transitionSpec);
            deferredAnimationData.j(transition3.k());
            return deferredAnimationData;
        }

        public final void c() {
            Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> deferredAnimationData = this.data;
            if (deferredAnimationData != null) {
                Transition<S> transition = this.this$0;
                deferredAnimationData.a().x(deferredAnimationData.b().invoke(transition.k().c()), deferredAnimationData.b().invoke(transition.k().b()), deferredAnimationData.d().invoke(transition.k()));
            }
        }
    }

    public interface Segment<S> {

        public static final class DefaultImpls {
        }

        boolean a(S s, S s5);

        S b();

        S c();
    }

    private static final class SegmentImpl<S> implements Segment<S> {
        private final S initialState;
        private final S targetState;

        @Override // androidx.compose.animation.core.Transition.Segment
        public /* synthetic */ boolean a(Object obj, Object obj2) {
            return e.a(this, obj, obj2);
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public S b() {
            return this.targetState;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public S c() {
            return this.initialState;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Segment) {
                Segment segment = (Segment) obj;
                if (t.e(c(), segment.c()) && t.e(b(), segment.b())) {
                    return true;
                }
            }
            return false;
        }

        public SegmentImpl(S s, S s5) {
            this.initialState = s;
            this.targetState = s5;
        }

        public int hashCode() {
            int iHashCode;
            S sC = c();
            int iHashCode2 = 0;
            if (sC != null) {
                iHashCode = sC.hashCode();
            } else {
                iHashCode = 0;
            }
            int i10 = iHashCode * 31;
            S sB = b();
            if (sB != null) {
                iHashCode2 = sB.hashCode();
            }
            return i10 + iHashCode2;
        }
    }

    @Stable
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {

        @NotNull
        private final MutableState animation$delegate;

        @NotNull
        private final MutableState animationSpec$delegate;

        @NotNull
        private final FiniteAnimationSpec<T> interruptionSpec;

        @NotNull
        private final MutableState isFinished$delegate;

        @NotNull
        private final String label;

        @NotNull
        private final MutableState needsReset$delegate;

        @NotNull
        private final MutableState offsetTimeNanos$delegate;

        @NotNull
        private final MutableState targetValue$delegate;
        final /* synthetic */ Transition<S> this$0;

        @NotNull
        private final TwoWayConverter<T, V> typeConverter;

        @NotNull
        private final MutableState value$delegate;

        @NotNull
        private V velocityVector;

        public final void l(long j6, float f) {
            long jC = f == 0.0f ? a().c() : (long) ((j6 - f()) / f);
            u(a().e(jC));
            this.velocityVector = (V) a().g(jC);
            if (a().b(jC)) {
                q(true);
                s(0L);
            }
        }

        public final void m() {
            r(true);
        }

        public TransitionAnimationState(Transition transition, @NotNull T t5, @NotNull V initialVelocityVector, @NotNull TwoWayConverter<T, V> typeConverter, String label) {
            T tInvoke;
            t.j(initialVelocityVector, "initialVelocityVector");
            t.j(typeConverter, "typeConverter");
            t.j(label, "label");
            this.this$0 = transition;
            this.typeConverter = typeConverter;
            this.label = label;
            this.targetValue$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
            this.animationSpec$delegate = SnapshotStateKt__SnapshotStateKt.e(AnimationSpecKt.i(0.0f, 0.0f, null, 7, null), null, 2, null);
            this.animation$delegate = SnapshotStateKt__SnapshotStateKt.e(new TargetBasedAnimation(b(), typeConverter, t5, j(), initialVelocityVector), null, 2, null);
            this.isFinished$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
            this.offsetTimeNanos$delegate = SnapshotStateKt__SnapshotStateKt.e(0L, null, 2, null);
            this.needsReset$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
            this.velocityVector = initialVelocityVector;
            Float f = VisibilityThresholdsKt.h().get(typeConverter);
            if (f != null) {
                float fFloatValue = f.floatValue();
                V vInvoke = typeConverter.a().invoke(t5);
                int iB = vInvoke.b();
                for (int i10 = 0; i10 < iB; i10++) {
                    vInvoke.e(i10, fFloatValue);
                }
                tInvoke = this.typeConverter.b().invoke(vInvoke);
            } else {
                tInvoke = null;
            }
            this.interruptionSpec = AnimationSpecKt.i(0.0f, 0.0f, tInvoke, 3, null);
        }

        private final boolean e() {
            return ((Boolean) this.needsReset$delegate.getValue()).booleanValue();
        }

        private final long f() {
            return ((Number) this.offsetTimeNanos$delegate.getValue()).longValue();
        }

        private final T j() {
            return this.targetValue$delegate.getValue();
        }

        private final void o(TargetBasedAnimation<T, V> targetBasedAnimation) {
            this.animation$delegate.setValue(targetBasedAnimation);
        }

        private final void p(FiniteAnimationSpec<T> finiteAnimationSpec) {
            this.animationSpec$delegate.setValue(finiteAnimationSpec);
        }

        private final void r(boolean z6) {
            this.needsReset$delegate.setValue(Boolean.valueOf(z6));
        }

        private final void s(long j6) {
            this.offsetTimeNanos$delegate.setValue(Long.valueOf(j6));
        }

        private final void t(T t5) {
            this.targetValue$delegate.setValue(t5);
        }

        private final void v(T t5, boolean z6) {
            FiniteAnimationSpec<T> finiteAnimationSpecB = (!z6 || (b() instanceof SpringSpec)) ? b() : this.interruptionSpec;
            o(new TargetBasedAnimation<>(finiteAnimationSpecB, this.typeConverter, t5, j(), this.velocityVector));
            this.this$0.r();
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ void w(TransitionAnimationState transitionAnimationState, Object obj, boolean z6, int i10, Object obj2) {
            if ((i10 & 1) != 0) {
                obj = transitionAnimationState.getValue();
            }
            if ((i10 & 2) != 0) {
                z6 = false;
            }
            transitionAnimationState.v(obj, z6);
        }

        @NotNull
        public final TargetBasedAnimation<T, V> a() {
            return (TargetBasedAnimation) this.animation$delegate.getValue();
        }

        @NotNull
        public final FiniteAnimationSpec<T> b() {
            return (FiniteAnimationSpec) this.animationSpec$delegate.getValue();
        }

        @Override // androidx.compose.runtime.State
        public T getValue() {
            return this.value$delegate.getValue();
        }

        public final boolean k() {
            return ((Boolean) this.isFinished$delegate.getValue()).booleanValue();
        }

        public final void q(boolean z6) {
            this.isFinished$delegate.setValue(Boolean.valueOf(z6));
        }

        public void u(T t5) {
            this.value$delegate.setValue(t5);
        }

        public final void x(T t5, T t10, @NotNull FiniteAnimationSpec<T> animationSpec) {
            t.j(animationSpec, "animationSpec");
            t(t10);
            p(animationSpec);
            if (t.e(a().h(), t5) && t.e(a().f(), t10)) {
                return;
            }
            w(this, t5, false, 2, null);
        }

        public final void y(T t5, @NotNull FiniteAnimationSpec<T> animationSpec) {
            t.j(animationSpec, "animationSpec");
            if (!t.e(j(), t5) || e()) {
                t(t5);
                p(animationSpec);
                w(this, null, !k(), 1, null);
                q(false);
                s(this.this$0.j());
                r(false);
            }
        }

        public final long d() {
            return a().c();
        }

        public final void n(long j6) {
            u(a().e(j6));
            this.velocityVector = (V) a().g(j6);
        }
    }

    public Transition(@NotNull MutableTransitionState<S> transitionState, @Nullable String str) {
        t.j(transitionState, "transitionState");
        this.transitionState = transitionState;
        this.label = str;
        this.targetState$delegate = SnapshotStateKt__SnapshotStateKt.e(g(), null, 2, null);
        this.segment$delegate = SnapshotStateKt__SnapshotStateKt.e(new SegmentImpl(g(), g()), null, 2, null);
        this.playTimeNanos$delegate = SnapshotStateKt__SnapshotStateKt.e(0L, null, 2, null);
        this.startTimeNanos$delegate = SnapshotStateKt__SnapshotStateKt.e(Long.MIN_VALUE, null, 2, null);
        this.updateChildrenNeeded$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        this._animations = SnapshotStateKt.d();
        this._transitions = SnapshotStateKt.d();
        this.isSeeking$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        this.totalDurationNanos$delegate = SnapshotStateKt.c(new Transition$totalDurationNanos$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        F(true);
        if (q()) {
            long jMax = 0;
            for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
                jMax = Math.max(jMax, transitionAnimationState.d());
                transitionAnimationState.n(this.lastSeekedTimeNanos);
            }
            F(false);
        }
    }

    @Nullable
    public final String h() {
        return this.label;
    }

    public final long i() {
        return this.lastSeekedTimeNanos;
    }

    private final void C(Segment<S> segment) {
        this.segment$delegate.setValue(segment);
    }

    private final void D(long j6) {
        this.startTimeNanos$delegate.setValue(Long.valueOf(j6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long l() {
        return ((Number) this.startTimeNanos$delegate.getValue()).longValue();
    }

    public final void A(long j6) {
        this.playTimeNanos$delegate.setValue(Long.valueOf(j6));
    }

    public final void B(boolean z6) {
        this.isSeeking$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void E(S s) {
        this.targetState$delegate.setValue(s);
    }

    public final void F(boolean z6) {
        this.updateChildrenNeeded$delegate.setValue(Boolean.valueOf(z6));
    }

    public final boolean d(@NotNull Transition<S>.TransitionAnimationState<?, ?> animation) {
        t.j(animation, "animation");
        return this._animations.add(animation);
    }

    public final boolean e(@NotNull Transition<?> transition) {
        t.j(transition, "transition");
        return this._transitions.add(transition);
    }

    public final S g() {
        return this.transitionState.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long j() {
        return ((Number) this.playTimeNanos$delegate.getValue()).longValue();
    }

    @NotNull
    public final Segment<S> k() {
        return (Segment) this.segment$delegate.getValue();
    }

    public final S m() {
        return (S) this.targetState$delegate.getValue();
    }

    public final long n() {
        return ((Number) this.totalDurationNanos$delegate.getValue()).longValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean o() {
        return ((Boolean) this.updateChildrenNeeded$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean q() {
        return ((Boolean) this.isSeeking$delegate.getValue()).booleanValue();
    }

    public final void t() {
        D(Long.MIN_VALUE);
        z(m());
        A(0L);
        this.transitionState.d(false);
    }

    public final void v(@NotNull Transition<S>.DeferredAnimation<?, ?> deferredAnimation) {
        Transition<S>.TransitionAnimationState<?, ?> transitionAnimationStateA;
        t.j(deferredAnimation, "deferredAnimation");
        Transition<S>.DeferredAnimationData<?, ?>.DeferredAnimationData<?, V> deferredAnimationDataB = deferredAnimation.b();
        if (deferredAnimationDataB == 0 || (transitionAnimationStateA = deferredAnimationDataB.a()) == null) {
            return;
        }
        w(transitionAnimationStateA);
    }

    public final void w(@NotNull Transition<S>.TransitionAnimationState<?, ?> animation) {
        t.j(animation, "animation");
        this._animations.remove(animation);
    }

    public final boolean x(@NotNull Transition<?> transition) {
        t.j(transition, "transition");
        return this._transitions.remove(transition);
    }

    public final void y(S s, S s5, long j6) {
        D(Long.MIN_VALUE);
        this.transitionState.d(false);
        if (!q() || !t.e(g(), s) || !t.e(m(), s5)) {
            z(s);
            E(s5);
            B(true);
            C(new SegmentImpl(s, s5));
        }
        for (Transition<?> transition : this._transitions) {
            if (transition.q()) {
                transition.y(transition.g(), transition.m(), j6);
            }
        }
        Iterator<Transition<S>.TransitionAnimationState<?, ?>> it = this._animations.iterator();
        while (it.hasNext()) {
            it.next().n(j6);
        }
        this.lastSeekedTimeNanos = j6;
    }

    public final void z(S s) {
        this.transitionState.c(s);
    }

    @Composable
    public final void G(S s, @Nullable Composer composer, int i10) {
        int i11;
        int i12;
        int i13;
        Composer composerS = composer.s(-583974681);
        if ((i10 & 14) == 0) {
            if (composerS.k(s)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(this)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else if (!q() && !t.e(m(), s)) {
            C(new SegmentImpl(m(), s));
            z(m());
            E(s);
            if (!p()) {
                F(true);
            }
            Iterator<Transition<S>.TransitionAnimationState<?, ?>> it = this._animations.iterator();
            while (it.hasNext()) {
                it.next().m();
            }
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new Transition$updateTarget$2(this, s, i10));
        }
    }

    @Composable
    public final void f(S s, @Nullable Composer composer, int i10) {
        int i11;
        int i12;
        int i13;
        Composer composerS = composer.s(-1493585151);
        if ((i10 & 14) == 0) {
            if (composerS.k(s)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(this)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else if (!q()) {
            G(s, composerS, (i11 & 14) | (i11 & 112));
            if (!t.e(s, g()) || p() || o()) {
                int i14 = (i11 >> 3) & 14;
                composerS.G(1157296644);
                boolean zK = composerS.k(this);
                Object objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new Transition$animateTo$1$1(this, null);
                    composerS.z(objH);
                }
                composerS.Q();
                EffectsKt.d(this, (p) objH, composerS, i14);
            }
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new Transition$animateTo$2(this, s, i10));
        }
    }

    public final boolean p() {
        if (l() != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final void s(long j6, float f) {
        if (l() == Long.MIN_VALUE) {
            u(j6);
        }
        F(false);
        A(j6 - l());
        boolean z6 = true;
        for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
            if (!transitionAnimationState.k()) {
                transitionAnimationState.l(j(), f);
            }
            if (!transitionAnimationState.k()) {
                z6 = false;
            }
        }
        for (Transition<?> transition : this._transitions) {
            if (!t.e(transition.m(), transition.g())) {
                transition.s(j(), f);
            }
            if (!t.e(transition.m(), transition.g())) {
                z6 = false;
            }
        }
        if (z6) {
            t();
        }
    }

    public final void u(long j6) {
        D(j6);
        this.transitionState.d(true);
    }

    public /* synthetic */ Transition(MutableTransitionState mutableTransitionState, String str, int i10, k kVar) {
        this(mutableTransitionState, (i10 & 2) != 0 ? null : str);
    }

    public Transition(S s, @Nullable String str) {
        this(new MutableTransitionState(s), str);
    }
}
