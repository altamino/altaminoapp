package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class AnimationScope<T, V extends AnimationVector> {
    public static final int $stable = 8;
    private long finishedTimeNanos;

    @NotNull
    private final MutableState isRunning$delegate;
    private long lastFrameTimeNanos;

    @NotNull
    private final e8.a<l0> onCancel;
    private final long startTimeNanos;
    private final T targetValue;

    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    @NotNull
    private final MutableState value$delegate;

    @NotNull
    private V velocityVector;

    public final void a() {
        k(false);
        this.onCancel.invoke();
    }

    public final long b() {
        return this.finishedTimeNanos;
    }

    public final long c() {
        return this.lastFrameTimeNanos;
    }

    public final long d() {
        return this.startTimeNanos;
    }

    @NotNull
    public final V g() {
        return this.velocityVector;
    }

    public final void i(long j6) {
        this.finishedTimeNanos = j6;
    }

    public final void j(long j6) {
        this.lastFrameTimeNanos = j6;
    }

    public final void m(@NotNull V v5) {
        t.j(v5, "<set-?>");
        this.velocityVector = v5;
    }

    public AnimationScope(T t5, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull V initialVelocityVector, long j6, T t10, long j10, boolean z6, @NotNull e8.a<l0> onCancel) {
        t.j(typeConverter, "typeConverter");
        t.j(initialVelocityVector, "initialVelocityVector");
        t.j(onCancel, "onCancel");
        this.typeConverter = typeConverter;
        this.targetValue = t10;
        this.startTimeNanos = j10;
        this.onCancel = onCancel;
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
        this.velocityVector = (V) AnimationVectorsKt.b(initialVelocityVector);
        this.lastFrameTimeNanos = j6;
        this.finishedTimeNanos = Long.MIN_VALUE;
        this.isRunning$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.valueOf(z6), null, 2, null);
    }

    public final T e() {
        return this.value$delegate.getValue();
    }

    public final T f() {
        return this.typeConverter.b().invoke(this.velocityVector);
    }

    public final boolean h() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    public final void k(boolean z6) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void l(T t5) {
        this.value$delegate.setValue(t5);
    }
}
