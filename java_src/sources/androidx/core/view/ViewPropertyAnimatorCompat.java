package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ViewPropertyAnimatorCompat {
    static final int LISTENER_TAG_ID = 2113929216;
    private final WeakReference<View> mView;
    Runnable mStartAction = null;
    Runnable mEndAction = null;
    int mOldLayerType = -1;

    static class ViewPropertyAnimatorListenerApi14 implements ViewPropertyAnimatorListener {
        boolean mAnimEndCalled;
        ViewPropertyAnimatorCompat mVpa;

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void c(@NonNull View view) {
            this.mAnimEndCalled = false;
            if (this.mVpa.mOldLayerType > -1) {
                view.setLayerType(2, null);
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mVpa;
            Runnable runnable = viewPropertyAnimatorCompat.mStartAction;
            if (runnable != null) {
                viewPropertyAnimatorCompat.mStartAction = null;
                runnable.run();
            }
            Object tag = view.getTag(ViewPropertyAnimatorCompat.LISTENER_TAG_ID);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.c(view);
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void a(@NonNull View view) {
            Object tag = view.getTag(ViewPropertyAnimatorCompat.LISTENER_TAG_ID);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.a(view);
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        @SuppressLint({"WrongConstant"})
        public void b(@NonNull View view) {
            int i10 = this.mVpa.mOldLayerType;
            if (i10 > -1) {
                view.setLayerType(i10, null);
                this.mVpa.mOldLayerType = -1;
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mVpa;
            Runnable runnable = viewPropertyAnimatorCompat.mEndAction;
            if (runnable != null) {
                viewPropertyAnimatorCompat.mEndAction = null;
                runnable.run();
            }
            Object tag = view.getTag(ViewPropertyAnimatorCompat.LISTENER_TAG_ID);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.b(view);
            }
            this.mAnimEndCalled = true;
        }
    }

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, Runnable runnable) {
            return viewPropertyAnimator.withEndAction(runnable);
        }

        @DoNotInline
        static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator) {
            return viewPropertyAnimator.withLayer();
        }

        @DoNotInline
        static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, Runnable runnable) {
            return viewPropertyAnimator.withStartAction(runnable);
        }
    }

    @RequiresApi
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static Interpolator a(ViewPropertyAnimator viewPropertyAnimator) {
            return (Interpolator) viewPropertyAnimator.getInterpolator();
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
            return viewPropertyAnimator.setUpdateListener(animatorUpdateListener);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.translationZ(f);
        }

        @DoNotInline
        static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.translationZBy(f);
        }

        @DoNotInline
        static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.z(f);
        }

        @DoNotInline
        static ViewPropertyAnimator d(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.zBy(f);
        }
    }

    private void i(final View view, final ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.ViewPropertyAnimatorCompat.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    viewPropertyAnimatorListener.a(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorListener.b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    viewPropertyAnimatorListener.c(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    @NonNull
    public ViewPropertyAnimatorCompat b(float f) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public void c() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long d() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    @NonNull
    public ViewPropertyAnimatorCompat f(long j6) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setDuration(j6);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat g(@Nullable Interpolator interpolator) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat h(@Nullable ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.mView.get();
        if (view != null) {
            i(view, viewPropertyAnimatorListener);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat j(long j6) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setStartDelay(j6);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat k(@Nullable final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = this.mView.get();
        if (view != null) {
            Api19Impl.a(view.animate(), viewPropertyAnimatorUpdateListener != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.w
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    viewPropertyAnimatorUpdateListener.a(view);
                }
            } : null);
        }
        return this;
    }

    public void l() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().start();
        }
    }

    @NonNull
    public ViewPropertyAnimatorCompat m(float f) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    ViewPropertyAnimatorCompat(View view) {
        this.mView = new WeakReference<>(view);
    }
}
