package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes5.dex */
public class Fade extends Visibility {
    public static final int IN = 1;
    private static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    private static final String PROPNAME_TRANSITION_ALPHA = "android:fade:transitionAlpha";

    private static class FadeAnimatorListener extends AnimatorListenerAdapter {
        private boolean mLayerTypeChanged = false;
        private final View mView;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewUtils.h(this.mView, 1.0f);
            if (this.mLayerTypeChanged) {
                this.mView.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.T(this.mView) && this.mView.getLayerType() == 0) {
                this.mLayerTypeChanged = true;
                this.mView.setLayerType(2, null);
            }
        }

        FadeAnimatorListener(View view) {
            this.mView = view;
        }
    }

    public Fade(int i10) {
        o0(i10);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator k0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float fQ0 = q0(transitionValues, 0.0f);
        return p0(view, fQ0 != 1.0f ? fQ0 : 0.0f, 1.0f);
    }

    private Animator p0(final View view, float f, float f6) {
        if (f == f6) {
            return null;
        }
        ViewUtils.h(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, ViewUtils.TRANSITION_ALPHA, f6);
        objectAnimatorOfFloat.addListener(new FadeAnimatorListener(view));
        b(new TransitionListenerAdapter() { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void d(@NonNull Transition transition) {
                ViewUtils.h(view, 1.0f);
                ViewUtils.a(view);
                transition.T(this);
            }
        });
        return objectAnimatorOfFloat;
    }

    private static float q0(TransitionValues transitionValues, float f) {
        Float f6;
        return (transitionValues == null || (f6 = (Float) transitionValues.values.get(PROPNAME_TRANSITION_ALPHA)) == null) ? f : f6.floatValue();
    }

    public Fade() {
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void k(@NonNull TransitionValues transitionValues) {
        super.k(transitionValues);
        transitionValues.values.put(PROPNAME_TRANSITION_ALPHA, Float.valueOf(ViewUtils.c(transitionValues.view)));
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator m0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.e(view);
        return p0(view, q0(transitionValues, 1.0f), 0.0f);
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.FADE);
        o0(TypedArrayUtils.k(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, i0()));
        typedArrayObtainStyledAttributes.recycle();
    }
}
