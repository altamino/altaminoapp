package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class AnimationState<T, V extends AnimationVector> implements State<T> {
    public static final int $stable = 0;
    private long finishedTimeNanos;
    private boolean isRunning;
    private long lastFrameTimeNanos;

    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    @NotNull
    private final MutableState value$delegate;

    @NotNull
    private V velocityVector;

    public AnimationState(@NotNull TwoWayConverter<T, V> typeConverter, T t5, @Nullable V v5, long j6, long j10, boolean z6) {
        V v6;
        t.j(typeConverter, "typeConverter");
        this.typeConverter = typeConverter;
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
        this.velocityVector = (v5 == null || (v6 = (V) AnimationVectorsKt.b(v5)) == null) ? (V) AnimationStateKt.g(typeConverter, t5) : v6;
        this.lastFrameTimeNanos = j6;
        this.finishedTimeNanos = j10;
        this.isRunning = z6;
    }

    public final long a() {
        return this.finishedTimeNanos;
    }

    public final long b() {
        return this.lastFrameTimeNanos;
    }

    @NotNull
    public final TwoWayConverter<T, V> d() {
        return this.typeConverter;
    }

    @NotNull
    public final V f() {
        return this.velocityVector;
    }

    public final boolean j() {
        return this.isRunning;
    }

    public final void k(long j6) {
        this.finishedTimeNanos = j6;
    }

    public final void l(long j6) {
        this.lastFrameTimeNanos = j6;
    }

    public final void m(boolean z6) {
        this.isRunning = z6;
    }

    public final void o(@NotNull V v5) {
        t.j(v5, "<set-?>");
        this.velocityVector = v5;
    }

    public final T e() {
        return this.typeConverter.b().invoke(this.velocityVector);
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        return this.value$delegate.getValue();
    }

    public void n(T t5) {
        this.value$delegate.setValue(t5);
    }

    @NotNull
    public String toString() {
        return "AnimationState(value=" + getValue() + ", velocity=" + e() + ", isRunning=" + this.isRunning + ", lastFrameTimeNanos=" + this.lastFrameTimeNanos + ", finishedTimeNanos=" + this.finishedTimeNanos + ')';
    }

    public /* synthetic */ AnimationState(TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector, long j6, long j10, boolean z6, int i10, k kVar) {
        this(twoWayConverter, obj, (i10 & 4) != 0 ? null : animationVector, (i10 & 8) != 0 ? Long.MIN_VALUE : j6, (i10 & 16) != 0 ? Long.MIN_VALUE : j10, (i10 & 32) != 0 ? false : z6);
    }
}
