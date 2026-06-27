package android.support.transition;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
class ViewUtilsApi14 implements ViewUtilsImpl {
    private float[] mMatrixValues;

    ViewUtilsApi14() {
    }

    @Override // android.support.transition.ViewUtilsImpl
    public ViewOverlayImpl getOverlay(View view) {
        return ViewOverlayApi14.createFrom(view);
    }

    @Override // android.support.transition.ViewUtilsImpl
    public WindowIdImpl getWindowId(View view) {
        return new WindowIdApi14(view.getWindowToken());
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void setTransitionAlpha(View view, float f) {
        Float f2 = (Float) view.getTag(R$id.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    @Override // android.support.transition.ViewUtilsImpl
    public float getTransitionAlpha(View view) {
        Float f = (Float) view.getTag(R$id.save_non_transition_alpha);
        if (f != null) {
            return view.getAlpha() / f.floatValue();
        }
        return view.getAlpha();
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void saveNonTransitionAlpha(View view) {
        if (view.getTag(R$id.save_non_transition_alpha) == null) {
            view.setTag(R$id.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void clearNonTransitionAlpha(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(R$id.save_non_transition_alpha, null);
        }
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void transformMatrixToGlobal(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            transformMatrixToGlobal((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void transformMatrixToLocal(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            transformMatrixToLocal((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }

    @Override // android.support.transition.ViewUtilsImpl
    public void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }
}
