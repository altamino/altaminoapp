package androidx.compose.animation.core;

import androidx.compose.runtime.Stable;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class AnimationSpecKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, V extends AnimationVector> V b(TwoWayConverter<T, V> twoWayConverter, T t5) {
        if (t5 == null) {
            return null;
        }
        return twoWayConverter.a().invoke(t5);
    }

    @Stable
    @NotNull
    public static final <T> InfiniteRepeatableSpec<T> c(@NotNull DurationBasedAnimationSpec<T> animation, @NotNull RepeatMode repeatMode, long j6) {
        t.j(animation, "animation");
        t.j(repeatMode, "repeatMode");
        return new InfiniteRepeatableSpec<>(animation, repeatMode, j6, (k) null);
    }

    public static /* synthetic */ InfiniteRepeatableSpec d(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        if ((i10 & 4) != 0) {
            j6 = StartOffset.c(0, 0, 2, null);
        }
        return c(durationBasedAnimationSpec, repeatMode, j6);
    }

    @Stable
    @NotNull
    public static final <T> KeyframesSpec<T> e(@NotNull l<? super KeyframesSpec.KeyframesSpecConfig<T>, l0> init) {
        t.j(init, "init");
        KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = new KeyframesSpec.KeyframesSpecConfig();
        init.invoke(keyframesSpecConfig);
        return new KeyframesSpec<>(keyframesSpecConfig);
    }

    @Stable
    @NotNull
    public static final <T> SnapSpec<T> f(int i10) {
        return new SnapSpec<>(i10);
    }

    public static /* synthetic */ SnapSpec g(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return f(i10);
    }

    @Stable
    @NotNull
    public static final <T> SpringSpec<T> h(float f, float f6, @Nullable T t5) {
        return new SpringSpec<>(f, f6, t5);
    }

    public static /* synthetic */ SpringSpec i(float f, float f6, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            f = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f6 = 1500.0f;
        }
        if ((i10 & 4) != 0) {
            obj = null;
        }
        return h(f, f6, obj);
    }

    @Stable
    @NotNull
    public static final <T> TweenSpec<T> j(int i10, int i11, @NotNull Easing easing) {
        t.j(easing, "easing");
        return new TweenSpec<>(i10, i11, easing);
    }

    public static /* synthetic */ TweenSpec k(int i10, int i11, Easing easing, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 300;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            easing = EasingKt.a();
        }
        return j(i10, i11, easing);
    }
}
