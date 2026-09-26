package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
class TranslationAnimationCreator {

    private static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
        private final View mMovingView;
        private float mPausedX;
        private float mPausedY;
        private final int mStartX;
        private final int mStartY;
        private final float mTerminalX;
        private final float mTerminalY;
        private int[] mTransitionPosition;
        private final View mViewInHierarchy;

        @Override // androidx.transition.Transition.TransitionListener
        public void a(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void b(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void c(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void e(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void d(@NonNull Transition transition) {
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
            transition.T(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.mTransitionPosition == null) {
                this.mTransitionPosition = new int[2];
            }
            this.mTransitionPosition[0] = Math.round(this.mStartX + this.mMovingView.getTranslationX());
            this.mTransitionPosition[1] = Math.round(this.mStartY + this.mMovingView.getTranslationY());
            this.mViewInHierarchy.setTag(R.id.transition_position, this.mTransitionPosition);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.mPausedX = this.mMovingView.getTranslationX();
            this.mPausedY = this.mMovingView.getTranslationY();
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.mMovingView.setTranslationX(this.mPausedX);
            this.mMovingView.setTranslationY(this.mPausedY);
        }

        TransitionPositionListener(View view, View view2, int i10, int i11, float f, float f6) {
            this.mMovingView = view;
            this.mViewInHierarchy = view2;
            this.mStartX = i10 - Math.round(view.getTranslationX());
            this.mStartY = i11 - Math.round(view.getTranslationY());
            this.mTerminalX = f;
            this.mTerminalY = f6;
            int i12 = R.id.transition_position;
            int[] iArr = (int[]) view2.getTag(i12);
            this.mTransitionPosition = iArr;
            if (iArr != null) {
                view2.setTag(i12, null);
            }
        }
    }

    @Nullable
    static Animator a(@NonNull View view, @NonNull TransitionValues transitionValues, int i10, int i11, float f, float f6, float f7, float f10, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float f11;
        float f12;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            f11 = (iArr[0] - i10) + translationX;
            f12 = (iArr[1] - i11) + translationY;
        } else {
            f11 = f;
            f12 = f6;
        }
        int iRound = i10 + Math.round(f11 - translationX);
        int iRound2 = i11 + Math.round(f12 - translationY);
        view.setTranslationX(f11);
        view.setTranslationY(f12);
        if (f11 == f7 && f12 == f10) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f11, f7), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f12, f10));
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        transition.b(transitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.addListener(transitionPositionListener);
        AnimatorUtils.a(objectAnimatorOfPropertyValuesHolder, transitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    private TranslationAnimationCreator() {
    }
}
