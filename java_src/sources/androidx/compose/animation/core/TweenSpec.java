package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class TweenSpec<T> implements DurationBasedAnimationSpec<T> {
    private final int delay;
    private final int durationMillis;

    @NotNull
    private final Easing easing;

    public TweenSpec() {
        this(0, 0, null, 7, null);
    }

    public TweenSpec(int i10, int i11, @NotNull Easing easing) {
        t.j(easing, "easing");
        this.durationMillis = i10;
        this.delay = i11;
        this.easing = easing;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof TweenSpec)) {
            return false;
        }
        TweenSpec tweenSpec = (TweenSpec) obj;
        return tweenSpec.durationMillis == this.durationMillis && tweenSpec.delay == this.delay && t.e(tweenSpec.easing, this.easing);
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public <V extends AnimationVector> VectorizedTweenSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        return new VectorizedTweenSpec<>(this.durationMillis, this.delay, this.easing);
    }

    public int hashCode() {
        return (((this.durationMillis * 31) + this.easing.hashCode()) * 31) + this.delay;
    }

    public /* synthetic */ TweenSpec(int i10, int i11, Easing easing, int i12, k kVar) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? EasingKt.a() : easing);
    }
}
