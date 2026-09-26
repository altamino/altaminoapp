package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class InfiniteTransition {
    public static final int $stable = 8;

    @NotNull
    private final MutableVector<TransitionAnimationState<?, ?>> animations = new MutableVector<>(new TransitionAnimationState[16], 0);

    @NotNull
    private final MutableState refreshChildNeeded$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
    private long startTimeNanos = Long.MIN_VALUE;

    @NotNull
    private final MutableState isRunning$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);

    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {

        @NotNull
        private TargetBasedAnimation<T, V> animation;

        @NotNull
        private AnimationSpec<T> animationSpec;
        private T initialValue;
        private boolean isFinished;
        private long playTimeNanosOffset;
        private boolean startOnTheNextFrame;
        private T targetValue;
        final /* synthetic */ InfiniteTransition this$0;

        @NotNull
        private final TwoWayConverter<T, V> typeConverter;

        @NotNull
        private final MutableState value$delegate;

        public final T a() {
            return this.initialValue;
        }

        public final T b() {
            return this.targetValue;
        }

        public final boolean d() {
            return this.isFinished;
        }

        public final void f() {
            this.startOnTheNextFrame = true;
        }

        public TransitionAnimationState(InfiniteTransition infiniteTransition, T t5, @NotNull T t10, @NotNull TwoWayConverter<T, V> typeConverter, AnimationSpec<T> animationSpec) {
            t.j(typeConverter, "typeConverter");
            t.j(animationSpec, "animationSpec");
            this.this$0 = infiniteTransition;
            this.initialValue = t5;
            this.targetValue = t10;
            this.typeConverter = typeConverter;
            this.animationSpec = animationSpec;
            this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
            this.animation = new TargetBasedAnimation<>(this.animationSpec, typeConverter, this.initialValue, this.targetValue, (AnimationVector) null, 16, (k) null);
        }

        public final void e(long j6) {
            this.this$0.l(false);
            if (this.startOnTheNextFrame) {
                this.startOnTheNextFrame = false;
                this.playTimeNanosOffset = j6;
            }
            long j10 = j6 - this.playTimeNanosOffset;
            j(this.animation.e(j10));
            this.isFinished = this.animation.b(j10);
        }

        @Override // androidx.compose.runtime.State
        public T getValue() {
            return this.value$delegate.getValue();
        }

        public void j(T t5) {
            this.value$delegate.setValue(t5);
        }

        public final void k() {
            j(this.animation.f());
            this.startOnTheNextFrame = true;
        }

        public final void l(T t5, T t10, @NotNull AnimationSpec<T> animationSpec) {
            t.j(animationSpec, "animationSpec");
            this.initialValue = t5;
            this.targetValue = t10;
            this.animationSpec = animationSpec;
            this.animation = new TargetBasedAnimation<>(animationSpec, this.typeConverter, t5, t10, (AnimationVector) null, 16, (k) null);
            this.this$0.l(true);
            this.isFinished = false;
            this.startOnTheNextFrame = true;
        }
    }

    @NotNull
    public final MutableVector<TransitionAnimationState<?, ?>> f() {
        return this.animations;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean g() {
        return ((Boolean) this.refreshChildNeeded$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean h() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(long j6) {
        boolean z6;
        MutableVector<TransitionAnimationState<?, ?>> mutableVector = this.animations;
        int iN = mutableVector.n();
        if (iN > 0) {
            TransitionAnimationState<?, ?>[] transitionAnimationStateArrM = mutableVector.m();
            z6 = true;
            int i10 = 0;
            do {
                TransitionAnimationState<?, ?> transitionAnimationState = transitionAnimationStateArrM[i10];
                if (!transitionAnimationState.d()) {
                    transitionAnimationState.e(j6);
                }
                if (!transitionAnimationState.d()) {
                    z6 = false;
                }
                i10++;
            } while (i10 < iN);
        } else {
            z6 = true;
        }
        m(!z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(boolean z6) {
        this.refreshChildNeeded$delegate.setValue(Boolean.valueOf(z6));
    }

    private final void m(boolean z6) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void e(@NotNull TransitionAnimationState<?, ?> animation) {
        t.j(animation, "animation");
        this.animations.b(animation);
        l(true);
    }

    public final void j(@NotNull TransitionAnimationState<?, ?> animation) {
        t.j(animation, "animation");
        this.animations.s(animation);
    }

    @Composable
    public final void k(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(-318043801);
        if (h() || g()) {
            EffectsKt.d(this, new InfiniteTransition$run$1(this, null), composerS, 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new InfiniteTransition$run$2(this, i10));
        }
    }
}
