package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Immutable
public final class SnapSpec<T> implements DurationBasedAnimationSpec<T> {
    private final int delay;

    public SnapSpec() {
        this(0, 1, null);
    }

    public int hashCode() {
        return this.delay;
    }

    public SnapSpec(int i10) {
        this.delay = i10;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedDurationBasedAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        return new VectorizedSnapSpec(this.delay);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof SnapSpec) && ((SnapSpec) obj).delay == this.delay;
    }

    public /* synthetic */ SnapSpec(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
