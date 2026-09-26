package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class Explode extends Visibility {
    private static final String PROPNAME_SCREEN_BOUNDS = "android:explode:screenBounds";
    private int[] mTempLoc;
    private static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    private static final TimeInterpolator sAccelerate = new AccelerateInterpolator();

    public Explode() {
        this.mTempLoc = new int[2];
        d0(new CircularPropagation());
    }

    private static float p0(float f, float f6) {
        return (float) Math.sqrt((f * f) + (f6 * f6));
    }

    private void r0(View view, Rect rect, int[] iArr) {
        int iCenterY;
        int width;
        view.getLocationOnScreen(this.mTempLoc);
        int[] iArr2 = this.mTempLoc;
        int i10 = iArr2[0];
        int i11 = iArr2[1];
        Rect rectS = s();
        if (rectS == null) {
            width = (view.getWidth() / 2) + i10 + Math.round(view.getTranslationX());
            iCenterY = (view.getHeight() / 2) + i11 + Math.round(view.getTranslationY());
        } else {
            int iCenterX = rectS.centerX();
            iCenterY = rectS.centerY();
            width = iCenterX;
        }
        float fCenterX = rect.centerX() - width;
        float fCenterY = rect.centerY() - iCenterY;
        if (fCenterX == 0.0f && fCenterY == 0.0f) {
            fCenterX = ((float) (Math.random() * 2.0d)) - 1.0f;
            fCenterY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float fP0 = p0(fCenterX, fCenterY);
        float fQ0 = q0(view, width - i10, iCenterY - i11);
        iArr[0] = Math.round((fCenterX / fP0) * fQ0);
        iArr[1] = Math.round(fQ0 * (fCenterY / fP0));
    }

    private void h0(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.mTempLoc);
        int[] iArr = this.mTempLoc;
        int i10 = iArr[0];
        int i11 = iArr[1];
        transitionValues.values.put(PROPNAME_SCREEN_BOUNDS, new Rect(i10, i11, view.getWidth() + i10, view.getHeight() + i11));
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator k0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(PROPNAME_SCREEN_BOUNDS);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        r0(viewGroup, rect, this.mTempLoc);
        int[] iArr = this.mTempLoc;
        return TranslationAnimationCreator.a(view, transitionValues2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, sDecelerate, this);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator m0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f6;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_SCREEN_BOUNDS);
        int i10 = rect.left;
        int i11 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            int i12 = iArr[0];
            f = (i12 - rect.left) + translationX;
            int i13 = iArr[1];
            f6 = (i13 - rect.top) + translationY;
            rect.offsetTo(i12, i13);
        } else {
            f = translationX;
            f6 = translationY;
        }
        r0(viewGroup, rect, this.mTempLoc);
        int[] iArr2 = this.mTempLoc;
        return TranslationAnimationCreator.a(view, transitionValues, i10, i11, translationX, translationY, f + iArr2[0], f6 + iArr2[1], sAccelerate, this);
    }

    public Explode(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLoc = new int[2];
        d0(new CircularPropagation());
    }

    private static float q0(View view, int i10, int i11) {
        return p0(Math.max(i10, view.getWidth() - i10), Math.max(i11, view.getHeight() - i11));
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
}
