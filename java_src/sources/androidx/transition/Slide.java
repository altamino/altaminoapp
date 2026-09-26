package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes3.dex */
public class Slide extends Visibility {
    private static final String PROPNAME_SCREEN_POSITION = "android:slide:screenPosition";
    private CalculateSlide mSlideCalculator;
    private int mSlideEdge;
    private static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    private static final TimeInterpolator sAccelerate = new AccelerateInterpolator();
    private static final CalculateSlide sCalculateLeft = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.1
        @Override // androidx.transition.Slide.CalculateSlide
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    };
    private static final CalculateSlide sCalculateStart = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.2
        @Override // androidx.transition.Slide.CalculateSlide
        public float b(ViewGroup viewGroup, View view) {
            if (ViewCompat.D(viewGroup) == 1) {
                return view.getTranslationX() + viewGroup.getWidth();
            }
            return view.getTranslationX() - viewGroup.getWidth();
        }
    };
    private static final CalculateSlide sCalculateTop = new CalculateSlideVertical() { // from class: androidx.transition.Slide.3
        @Override // androidx.transition.Slide.CalculateSlide
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    };
    private static final CalculateSlide sCalculateRight = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.4
        @Override // androidx.transition.Slide.CalculateSlide
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    };
    private static final CalculateSlide sCalculateEnd = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.5
        @Override // androidx.transition.Slide.CalculateSlide
        public float b(ViewGroup viewGroup, View view) {
            if (ViewCompat.D(viewGroup) == 1) {
                return view.getTranslationX() - viewGroup.getWidth();
            }
            return view.getTranslationX() + viewGroup.getWidth();
        }
    };
    private static final CalculateSlide sCalculateBottom = new CalculateSlideVertical() { // from class: androidx.transition.Slide.6
        @Override // androidx.transition.Slide.CalculateSlide
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    };

    private interface CalculateSlide {
        float a(ViewGroup viewGroup, View view);

        float b(ViewGroup viewGroup, View view);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface GravityFlag {
    }

    public Slide() {
        this.mSlideCalculator = sCalculateBottom;
        this.mSlideEdge = 80;
        p0(80);
    }

    public void p0(int i10) {
        if (i10 == 3) {
            this.mSlideCalculator = sCalculateLeft;
        } else if (i10 == 5) {
            this.mSlideCalculator = sCalculateRight;
        } else if (i10 == 48) {
            this.mSlideCalculator = sCalculateTop;
        } else if (i10 == 80) {
            this.mSlideCalculator = sCalculateBottom;
        } else if (i10 == 8388611) {
            this.mSlideCalculator = sCalculateStart;
        } else {
            if (i10 != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.mSlideCalculator = sCalculateEnd;
        }
        this.mSlideEdge = i10;
        SidePropagation sidePropagation = new SidePropagation();
        sidePropagation.j(i10);
        d0(sidePropagation);
    }

    private static abstract class CalculateSlideHorizontal implements CalculateSlide {
        private CalculateSlideHorizontal() {
        }

        @Override // androidx.transition.Slide.CalculateSlide
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    private static abstract class CalculateSlideVertical implements CalculateSlide {
        private CalculateSlideVertical() {
        }

        @Override // androidx.transition.Slide.CalculateSlide
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    private void h0(TransitionValues transitionValues) {
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(PROPNAME_SCREEN_POSITION, iArr);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator k0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get(PROPNAME_SCREEN_POSITION);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return TranslationAnimationCreator.a(view, transitionValues2, iArr[0], iArr[1], this.mSlideCalculator.b(viewGroup, view), this.mSlideCalculator.a(viewGroup, view), translationX, translationY, sDecelerate, this);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator m0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get(PROPNAME_SCREEN_POSITION);
        return TranslationAnimationCreator.a(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.mSlideCalculator.b(viewGroup, view), this.mSlideCalculator.a(viewGroup, view), sAccelerate, this);
    }

    public Slide(int i10) {
        this.mSlideCalculator = sCalculateBottom;
        this.mSlideEdge = 80;
        p0(i10);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void h(@NonNull TransitionValues transitionValues) {
        super.h(transitionValues);
        h0(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void k(@NonNull TransitionValues transitionValues) {
        super.k(transitionValues);
        h0(transitionValues);
    }

    @SuppressLint({"RestrictedApi"})
    public Slide(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSlideCalculator = sCalculateBottom;
        this.mSlideEdge = 80;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.SLIDE);
        int iK = TypedArrayUtils.k(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        typedArrayObtainStyledAttributes.recycle();
        p0(iK);
    }
}
