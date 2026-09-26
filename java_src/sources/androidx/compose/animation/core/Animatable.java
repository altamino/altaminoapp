package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
@StabilityInferred
public final class Animatable<T, V extends AnimationVector> {
    public static final int $stable = 8;

    @NotNull
    private final SpringSpec<T> defaultSpringSpec;

    @NotNull
    private final AnimationState<T, V> internalState;

    @NotNull
    private final MutableState isRunning$delegate;

    @Nullable
    private T lowerBound;

    @NotNull
    private V lowerBoundVector;

    @NotNull
    private final MutatorMutex mutatorMutex;

    @NotNull
    private final V negativeInfinityBounds;

    @NotNull
    private final V positiveInfinityBounds;

    @NotNull
    private final MutableState targetValue$delegate;

    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    @Nullable
    private T upperBound;

    @NotNull
    private V upperBoundVector;

    @Nullable
    private final T visibilityThreshold;

    public Animatable(T t5, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable T t10) {
        t.j(typeConverter, "typeConverter");
        this.typeConverter = typeConverter;
        this.visibilityThreshold = t10;
        this.internalState = new AnimationState<>(typeConverter, t5, null, 0L, 0L, false, 60, null);
        this.isRunning$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        this.targetValue$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
        this.mutatorMutex = new MutatorMutex();
        this.defaultSpringSpec = new SpringSpec<>(0.0f, 0.0f, t10, 3, null);
        V v5 = (V) i(t5, Float.NEGATIVE_INFINITY);
        this.negativeInfinityBounds = v5;
        V v6 = (V) i(t5, Float.POSITIVE_INFINITY);
        this.positiveInfinityBounds = v6;
        this.lowerBoundVector = v5;
        this.upperBoundVector = v6;
    }

    private final Object r(Animation<T, V> animation, T t5, l<? super Animatable<T, V>, l0> lVar, kotlin.coroutines.d<? super AnimationResult<T, V>> dVar) {
        return MutatorMutex.e(this.mutatorMutex, null, new Animatable$runAnimation$2(this, t5, animation, this.internalState.b(), lVar, null), dVar, 1, null);
    }

    @NotNull
    public final State<T> g() {
        return this.internalState;
    }

    @NotNull
    public final AnimationState<T, V> k() {
        return this.internalState;
    }

    @NotNull
    public final TwoWayConverter<T, V> m() {
        return this.typeConverter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object f(Animatable animatable, Object obj, AnimationSpec animationSpec, Object obj2, l lVar, kotlin.coroutines.d dVar, int i10, Object obj3) {
        if ((i10 & 2) != 0) {
            animationSpec = animatable.defaultSpringSpec;
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i10 & 4) != 0) {
            obj2 = animatable.o();
        }
        Object obj4 = obj2;
        if ((i10 & 8) != 0) {
            lVar = null;
        }
        return animatable.e(obj, animationSpec2, obj4, lVar, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final T h(T t5) {
        if (t.e(this.lowerBoundVector, this.negativeInfinityBounds) && t.e(this.upperBoundVector, this.positiveInfinityBounds)) {
            return t5;
        }
        V vInvoke = this.typeConverter.a().invoke(t5);
        int iB = vInvoke.b();
        boolean z6 = false;
        for (int i10 = 0; i10 < iB; i10++) {
            if (vInvoke.a(i10) < this.lowerBoundVector.a(i10) || vInvoke.a(i10) > this.upperBoundVector.a(i10)) {
                vInvoke.e(i10, o.m(vInvoke.a(i10), this.lowerBoundVector.a(i10), this.upperBoundVector.a(i10)));
                z6 = true;
            }
        }
        return z6 ? this.typeConverter.b().invoke(vInvoke) : t5;
    }

    private final V i(T t5, float f) {
        V vInvoke = this.typeConverter.a().invoke(t5);
        int iB = vInvoke.b();
        for (int i10 = 0; i10 < iB; i10++) {
            vInvoke.e(i10, f);
        }
        return vInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        AnimationState<T, V> animationState = this.internalState;
        animationState.f().d();
        animationState.l(Long.MIN_VALUE);
        s(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(boolean z6) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(T t5) {
        this.targetValue$delegate.setValue(t5);
    }

    public final T l() {
        return this.targetValue$delegate.getValue();
    }

    public final T n() {
        return this.internalState.getValue();
    }

    public final T o() {
        return (T) this.typeConverter.b().invoke(p());
    }

    @NotNull
    public final V p() {
        return (V) this.internalState.f();
    }

    public final boolean q() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    @Nullable
    public final Object u(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objE = MutatorMutex.e(this.mutatorMutex, null, new Animatable$snapTo$2(this, t5, null), dVar, 1, null);
        return objE == kotlin.coroutines.intrinsics.d.e() ? objE : l0.INSTANCE;
    }

    @Nullable
    public final Object v(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objE = MutatorMutex.e(this.mutatorMutex, null, new Animatable$stop$2(this, null), dVar, 1, null);
        return objE == kotlin.coroutines.intrinsics.d.e() ? objE : l0.INSTANCE;
    }

    @Nullable
    public final Object e(T t5, @NotNull AnimationSpec<T> animationSpec, T t10, @Nullable l<? super Animatable<T, V>, l0> lVar, @NotNull kotlin.coroutines.d<? super AnimationResult<T, V>> dVar) {
        return r(AnimationKt.b(animationSpec, this.typeConverter, n(), t5, t10), t10, lVar, dVar);
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, int i10, k kVar) {
        this(obj, twoWayConverter, (i10 & 4) != 0 ? null : obj2);
    }
}
