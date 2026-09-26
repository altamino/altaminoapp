package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.graphics.Insets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "WindowInsetsAnimCompat";
    private Impl mImpl;

    public static final class BoundsCompat {
        private final Insets mLowerBound;
        private final Insets mUpperBound;

        public BoundsCompat(@NonNull Insets insets, @NonNull Insets insets2) {
            this.mLowerBound = insets;
            this.mUpperBound = insets2;
        }

        @NonNull
        public Insets a() {
            return this.mLowerBound;
        }

        @NonNull
        public Insets b() {
            return this.mUpperBound;
        }

        @RequiresApi
        private BoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            this.mLowerBound = Impl30.g(bounds);
            this.mUpperBound = Impl30.f(bounds);
        }

        @NonNull
        @RequiresApi
        public static BoundsCompat d(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        public String toString() {
            return "Bounds{lower=" + this.mLowerBound + " upper=" + this.mUpperBound + "}";
        }

        @NonNull
        @RequiresApi
        public WindowInsetsAnimation.Bounds c() {
            return Impl30.e(this);
        }
    }

    private static class Impl {
        private float mAlpha;
        private final long mDurationMillis;
        private float mFraction;

        @Nullable
        private final Interpolator mInterpolator;
        private final int mTypeMask;

        public long a() {
            return this.mDurationMillis;
        }

        public int c() {
            return this.mTypeMask;
        }

        public void d(float f) {
            this.mFraction = f;
        }

        public float b() {
            Interpolator interpolator = this.mInterpolator;
            return interpolator != null ? interpolator.getInterpolation(this.mFraction) : this.mFraction;
        }

        Impl(int i10, @Nullable Interpolator interpolator, long j6) {
            this.mTypeMask = i10;
            this.mInterpolator = interpolator;
            this.mDurationMillis = j6;
        }
    }

    @RequiresApi
    private static class Impl21 extends Impl {
        @SuppressLint({"WrongConstant"})
        static int e(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2) {
            int i10 = 0;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if (!windowInsetsCompat.f(i11).equals(windowInsetsCompat2.f(i11))) {
                    i10 |= i11;
                }
            }
            return i10;
        }

        @RequiresApi
        private static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {
            private static final int COMPAT_ANIMATION_DURATION = 160;
            final Callback mCallback;
            private WindowInsetsCompat mLastInsets;

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.mLastInsets = WindowInsetsCompat.z(windowInsets, view);
                    return Impl21.l(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompatZ = WindowInsetsCompat.z(windowInsets, view);
                if (this.mLastInsets == null) {
                    this.mLastInsets = ViewCompat.K(view);
                }
                if (this.mLastInsets == null) {
                    this.mLastInsets = windowInsetsCompatZ;
                    return Impl21.l(view, windowInsets);
                }
                Callback callbackM = Impl21.m(view);
                if (callbackM != null && Objects.equals(callbackM.mDispachedInsets, windowInsets)) {
                    return Impl21.l(view, windowInsets);
                }
                final int iE = Impl21.e(windowInsetsCompatZ, this.mLastInsets);
                if (iE == 0) {
                    return Impl21.l(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat = this.mLastInsets;
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(iE, new DecelerateInterpolator(), 160L);
                windowInsetsAnimationCompat.e(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.a());
                final BoundsCompat boundsCompatF = Impl21.f(windowInsetsCompatZ, windowInsetsCompat, iE);
                Impl21.i(view, windowInsetsAnimationCompat, windowInsets, false);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        windowInsetsAnimationCompat.e(valueAnimator.getAnimatedFraction());
                        Impl21.j(view, Impl21.n(windowInsetsCompatZ, windowInsetsCompat, windowInsetsAnimationCompat.b(), iE), Collections.singletonList(windowInsetsAnimationCompat));
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        windowInsetsAnimationCompat.e(1.0f);
                        Impl21.h(view, windowInsetsAnimationCompat);
                    }
                });
                OneShotPreDrawListener.a(view, new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Impl21.k(view, windowInsetsAnimationCompat, boundsCompatF);
                        duration.start();
                    }
                });
                this.mLastInsets = windowInsetsCompatZ;
                return Impl21.l(view, windowInsets);
            }

            Impl21OnApplyWindowInsetsListener(@NonNull View view, @NonNull Callback callback) {
                WindowInsetsCompat windowInsetsCompatA;
                this.mCallback = callback;
                WindowInsetsCompat windowInsetsCompatK = ViewCompat.K(view);
                if (windowInsetsCompatK != null) {
                    windowInsetsCompatA = new WindowInsetsCompat.Builder(windowInsetsCompatK).a();
                } else {
                    windowInsetsCompatA = null;
                }
                this.mLastInsets = windowInsetsCompatA;
            }
        }

        @NonNull
        private static View.OnApplyWindowInsetsListener g(@NonNull View view, @NonNull Callback callback) {
            return new Impl21OnApplyWindowInsetsListener(view, callback);
        }

        @NonNull
        static WindowInsets l(@NonNull View view, @NonNull WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        @Nullable
        static Callback m(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).mCallback;
            }
            return null;
        }

        @SuppressLint({"WrongConstant"})
        static WindowInsetsCompat n(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f, int i10) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) == 0) {
                    builder.b(i11, windowInsetsCompat.f(i11));
                } else {
                    Insets insetsF = windowInsetsCompat.f(i11);
                    Insets insetsF2 = windowInsetsCompat2.f(i11);
                    float f6 = 1.0f - f;
                    builder.b(i11, WindowInsetsCompat.p(insetsF, (int) (((double) ((insetsF.left - insetsF2.left) * f6)) + 0.5d), (int) (((double) ((insetsF.top - insetsF2.top) * f6)) + 0.5d), (int) (((double) ((insetsF.right - insetsF2.right) * f6)) + 0.5d), (int) (((double) ((insetsF.bottom - insetsF2.bottom) * f6)) + 0.5d)));
                }
            }
            return builder.a();
        }

        static void o(@NonNull View view, @Nullable Callback callback) {
            Object tag = view.getTag(R.id.tag_on_apply_window_listener);
            if (callback == null) {
                view.setTag(R.id.tag_window_insets_animation_callback, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListenerG = g(view, callback);
            view.setTag(R.id.tag_window_insets_animation_callback, onApplyWindowInsetsListenerG);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListenerG);
            }
        }

        Impl21(int i10, @Nullable Interpolator interpolator, long j6) {
            super(i10, interpolator, j6);
        }

        @NonNull
        static BoundsCompat f(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2, int i10) {
            Insets insetsF = windowInsetsCompat.f(i10);
            Insets insetsF2 = windowInsetsCompat2.f(i10);
            return new BoundsCompat(Insets.b(Math.min(insetsF.left, insetsF2.left), Math.min(insetsF.top, insetsF2.top), Math.min(insetsF.right, insetsF2.right), Math.min(insetsF.bottom, insetsF2.bottom)), Insets.b(Math.max(insetsF.left, insetsF2.left), Math.max(insetsF.top, insetsF2.top), Math.max(insetsF.right, insetsF2.right), Math.max(insetsF.bottom, insetsF2.bottom)));
        }

        static void h(@NonNull View view, @NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackM = m(view);
            if (callbackM != null) {
                callbackM.c(windowInsetsAnimationCompat);
                if (callbackM.b() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    h(viewGroup.getChildAt(i10), windowInsetsAnimationCompat);
                }
            }
        }

        static void i(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z6) {
            Callback callbackM = m(view);
            if (callbackM != null) {
                callbackM.mDispachedInsets = windowInsets;
                if (!z6) {
                    callbackM.d(windowInsetsAnimationCompat);
                    if (callbackM.b() == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    i(viewGroup.getChildAt(i10), windowInsetsAnimationCompat, windowInsets, z6);
                }
            }
        }

        static void j(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
            Callback callbackM = m(view);
            if (callbackM != null) {
                windowInsetsCompat = callbackM.e(windowInsetsCompat, list);
                if (callbackM.b() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    j(viewGroup.getChildAt(i10), windowInsetsCompat, list);
                }
            }
        }

        static void k(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackM = m(view);
            if (callbackM != null) {
                callbackM.f(windowInsetsAnimationCompat, boundsCompat);
                if (callbackM.b() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    k(viewGroup.getChildAt(i10), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }
    }

    @RequiresApi
    private static class Impl30 extends Impl {

        @NonNull
        private final WindowInsetsAnimation mWrapped;

        @RequiresApi
        private static class ProxyCallback extends WindowInsetsAnimation$Callback {
            private final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> mAnimations;
            private final Callback mCompat;
            private List<WindowInsetsAnimationCompat> mRORunningAnimations;
            private ArrayList<WindowInsetsAnimationCompat> mTmpRunningAnimations;

            @NonNull
            private WindowInsetsAnimationCompat a(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.mAnimations.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompatF = WindowInsetsAnimationCompat.f(windowInsetsAnimation);
                this.mAnimations.put(windowInsetsAnimation, windowInsetsAnimationCompatF);
                return windowInsetsAnimationCompatF;
            }

            public void onEnd(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.c(a(windowInsetsAnimation));
                this.mAnimations.remove(windowInsetsAnimation);
            }

            public void onPrepare(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.d(a(windowInsetsAnimation));
            }

            @NonNull
            public WindowInsets onProgress(@NonNull WindowInsets windowInsets, @NonNull List<WindowInsetsAnimation> list) {
                ArrayList<WindowInsetsAnimationCompat> arrayList = this.mTmpRunningAnimations;
                if (arrayList == null) {
                    ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
                    this.mTmpRunningAnimations = arrayList2;
                    this.mRORunningAnimations = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimationA = h0.a(list.get(size));
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimationA);
                    windowInsetsAnimationCompatA.e(windowInsetsAnimationA.getFraction());
                    this.mTmpRunningAnimations.add(windowInsetsAnimationCompatA);
                }
                return this.mCompat.e(WindowInsetsCompat.y(windowInsets), this.mRORunningAnimations).x();
            }

            @NonNull
            public WindowInsetsAnimation.Bounds onStart(@NonNull WindowInsetsAnimation windowInsetsAnimation, @NonNull WindowInsetsAnimation.Bounds bounds) {
                return this.mCompat.f(a(windowInsetsAnimation), BoundsCompat.d(bounds)).c();
            }

            ProxyCallback(@NonNull Callback callback) {
                super(callback.b());
                this.mAnimations = new HashMap<>();
                this.mCompat = callback;
            }
        }

        Impl30(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.mWrapped = windowInsetsAnimation;
        }

        Impl30(int i10, Interpolator interpolator, long j6) {
            this(e0.a(i10, interpolator, j6));
        }

        public static void h(@NonNull View view, @Nullable Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new ProxyCallback(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public long a() {
            return this.mWrapped.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public float b() {
            return this.mWrapped.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public int c() {
            return this.mWrapped.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public void d(float f) {
            this.mWrapped.setFraction(f);
        }

        @NonNull
        public static WindowInsetsAnimation.Bounds e(@NonNull BoundsCompat boundsCompat) {
            g0.a();
            return f0.a(boundsCompat.a().e(), boundsCompat.b().e());
        }

        @NonNull
        public static Insets f(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.d(bounds.getUpperBound());
        }

        @NonNull
        public static Insets g(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.d(bounds.getLowerBound());
        }
    }

    public WindowInsetsAnimationCompat(int i10, @Nullable Interpolator interpolator, long j6) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(i10, interpolator, j6);
        } else {
            this.mImpl = new Impl21(i10, interpolator, j6);
        }
    }

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsets mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        public @interface DispatchMode {
        }

        public final int b() {
            return this.mDispatchMode;
        }

        public void c(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void d(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        @NonNull
        public abstract WindowInsetsCompat e(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list);

        @NonNull
        public BoundsCompat f(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull BoundsCompat boundsCompat) {
            return boundsCompat;
        }

        public Callback(int i10) {
            this.mDispatchMode = i10;
        }
    }

    static void d(@NonNull View view, @Nullable Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            Impl30.h(view, callback);
        } else {
            Impl21.o(view, callback);
        }
    }

    @RequiresApi
    static WindowInsetsAnimationCompat f(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    public long a() {
        return this.mImpl.a();
    }

    public float b() {
        return this.mImpl.b();
    }

    public int c() {
        return this.mImpl.c();
    }

    public void e(@FloatRange float f) {
        this.mImpl.d(f);
    }

    @RequiresApi
    private WindowInsetsAnimationCompat(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(windowInsetsAnimation);
        }
    }
}
