package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class EasingFunctionsKt {

    @NotNull
    private static final Easing Ease = new CubicBezierEasing(0.25f, 0.1f, 0.25f, 1.0f);

    @NotNull
    private static final Easing EaseOut = new CubicBezierEasing(0.0f, 0.0f, 0.58f, 1.0f);

    @NotNull
    private static final Easing EaseIn = new CubicBezierEasing(0.42f, 0.0f, 1.0f, 1.0f);

    @NotNull
    private static final Easing EaseInOut = new CubicBezierEasing(0.42f, 0.0f, 0.58f, 1.0f);

    @NotNull
    private static final Easing EaseInSine = new CubicBezierEasing(0.12f, 0.0f, 0.39f, 0.0f);

    @NotNull
    private static final Easing EaseOutSine = new CubicBezierEasing(0.61f, 1.0f, 0.88f, 1.0f);

    @NotNull
    private static final Easing EaseInOutSine = new CubicBezierEasing(0.37f, 0.0f, 0.63f, 1.0f);

    @NotNull
    private static final Easing EaseInCubic = new CubicBezierEasing(0.32f, 0.0f, 0.67f, 0.0f);

    @NotNull
    private static final Easing EaseOutCubic = new CubicBezierEasing(0.33f, 1.0f, 0.68f, 1.0f);

    @NotNull
    private static final Easing EaseInOutCubic = new CubicBezierEasing(0.65f, 0.0f, 0.35f, 1.0f);

    @NotNull
    private static final Easing EaseInQuint = new CubicBezierEasing(0.64f, 0.0f, 0.78f, 0.0f);

    @NotNull
    private static final Easing EaseOutQuint = new CubicBezierEasing(0.22f, 1.0f, 0.36f, 1.0f);

    @NotNull
    private static final Easing EaseInOutQuint = new CubicBezierEasing(0.83f, 0.0f, 0.17f, 1.0f);

    @NotNull
    private static final Easing EaseInCirc = new CubicBezierEasing(0.55f, 0.0f, 1.0f, 0.45f);

    @NotNull
    private static final Easing EaseOutCirc = new CubicBezierEasing(0.0f, 0.55f, 0.45f, 1.0f);

    @NotNull
    private static final Easing EaseInOutCirc = new CubicBezierEasing(0.85f, 0.0f, 0.15f, 1.0f);

    @NotNull
    private static final Easing EaseInQuad = new CubicBezierEasing(0.11f, 0.0f, 0.5f, 0.0f);

    @NotNull
    private static final Easing EaseOutQuad = new CubicBezierEasing(0.5f, 1.0f, 0.89f, 1.0f);

    @NotNull
    private static final Easing EaseInOutQuad = new CubicBezierEasing(0.45f, 0.0f, 0.55f, 1.0f);

    @NotNull
    private static final Easing EaseInQuart = new CubicBezierEasing(0.5f, 0.0f, 0.75f, 0.0f);

    @NotNull
    private static final Easing EaseOutQuart = new CubicBezierEasing(0.25f, 1.0f, 0.5f, 1.0f);

    @NotNull
    private static final Easing EaseInOutQuart = new CubicBezierEasing(0.76f, 0.0f, 0.24f, 1.0f);

    @NotNull
    private static final Easing EaseInExpo = new CubicBezierEasing(0.7f, 0.0f, 0.84f, 0.0f);

    @NotNull
    private static final Easing EaseOutExpo = new CubicBezierEasing(0.16f, 1.0f, 0.3f, 1.0f);

    @NotNull
    private static final Easing EaseInOutExpo = new CubicBezierEasing(0.87f, 0.0f, 0.13f, 1.0f);

    @NotNull
    private static final Easing EaseInBack = new CubicBezierEasing(0.36f, 0.0f, 0.66f, -0.56f);

    @NotNull
    private static final Easing EaseOutBack = new CubicBezierEasing(0.34f, 1.56f, 0.64f, 1.0f);

    @NotNull
    private static final Easing EaseInOutBack = new CubicBezierEasing(0.68f, -0.6f, 0.32f, 1.6f);

    @NotNull
    private static final Easing EaseInElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            float f6 = f * 10.0f;
            return (float) (((double) (-((float) Math.pow(2.0f, f6 - 10.0f)))) * Math.sin(((double) (f6 - 10.75f)) * 2.0943951023931953d));
        }
    };

    @NotNull
    private static final Easing EaseOutElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseOutElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            return (float) ((((double) ((float) Math.pow(2.0f, (-10.0f) * f))) * Math.sin(((double) ((f * 10.0f) - 0.75f)) * 2.0943951023931953d)) + ((double) 1.0f));
        }
    };

    @NotNull
    private static final Easing EaseInOutElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInOutElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            if (0.0f > f || f > 0.5f) {
                double d = 2.0f;
                return ((float) ((((double) ((float) Math.pow(d, ((-20.0f) * f) + 10.0f))) * Math.sin(((double) ((f * 20.0f) - 11.125f)) * 1.3962634015954636d)) / d)) + 1.0f;
            }
            double d2 = 2.0f;
            float f6 = f * 20.0f;
            return (float) ((-(((double) ((float) Math.pow(d2, f6 - 10.0f))) * Math.sin(((double) (f6 - 11.125f)) * 1.3962634015954636d))) / d2);
        }
    };

    @NotNull
    private static final Easing EaseOutBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseOutBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            float f6;
            float f7;
            if (f < 0.36363637f) {
                return 7.5625f * f * f;
            }
            if (f < 0.72727275f) {
                float f10 = f - 0.54545456f;
                f6 = 7.5625f * f10 * f10;
                f7 = 0.75f;
            } else if (f < 0.90909094f) {
                float f11 = f - 0.8181818f;
                f6 = 7.5625f * f11 * f11;
                f7 = 0.9375f;
            } else {
                float f12 = f - 0.95454544f;
                f6 = 7.5625f * f12 * f12;
                f7 = 0.984375f;
            }
            return f6 + f7;
        }
    };

    @NotNull
    private static final Easing EaseInBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            return 1 - EasingFunctionsKt.a().a(1.0f - f);
        }
    };

    @NotNull
    private static final Easing EaseInOutBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInOutBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float a(float f) {
            return (((double) f) < 0.5d ? 1 - EasingFunctionsKt.a().a(1.0f - (f * 2.0f)) : 1 + EasingFunctionsKt.a().a((f * 2.0f) - 1.0f)) / 2.0f;
        }
    };

    @NotNull
    public static final Easing a() {
        return EaseOutBounce;
    }
}
