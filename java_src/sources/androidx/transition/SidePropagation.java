package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes10.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    public void j(int i10) {
        this.mSide = i10;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    private int h(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = this.mSide;
        if (i18 == 8388611) {
            if (ViewCompat.D(view) == 1) {
                i18 = 5;
            } else {
                i18 = 3;
            }
        } else if (i18 == 8388613) {
            if (ViewCompat.D(view) == 1) {
                i18 = 3;
            } else {
                i18 = 5;
            }
        }
        if (i18 == 3) {
            return Math.abs(i13 - i11) + (i16 - i10);
        }
        if (i18 == 5) {
            return Math.abs(i13 - i11) + (i10 - i14);
        }
        if (i18 == 48) {
            return Math.abs(i12 - i10) + (i17 - i11);
        }
        if (i18 != 80) {
            return 0;
        }
        return Math.abs(i12 - i10) + (i11 - i15);
    }

    private int i(ViewGroup viewGroup) {
        int i10 = this.mSide;
        return (i10 == 3 || i10 == 5 || i10 == 8388611 || i10 == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    @Override // androidx.transition.TransitionPropagation
    public long c(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i10;
        int iCenterX;
        int iCenterY;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect rectS = transition.s();
        if (transitionValues2 == null || e(transitionValues3) == 0) {
            i10 = -1;
        } else {
            transitionValues3 = transitionValues2;
            i10 = 1;
        }
        int iF = f(transitionValues3);
        int iG = g(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int iRound = iArr[0] + Math.round(viewGroup.getTranslationX());
        int iRound2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = iRound + viewGroup.getWidth();
        int height = iRound2 + viewGroup.getHeight();
        if (rectS != null) {
            iCenterX = rectS.centerX();
            iCenterY = rectS.centerY();
        } else {
            iCenterX = (iRound + width) / 2;
            iCenterY = (iRound2 + height) / 2;
        }
        float fH = h(viewGroup, iF, iG, iCenterX, iCenterY, iRound, iRound2, width, height) / i(viewGroup);
        long jR = transition.r();
        if (jR < 0) {
            jR = 300;
        }
        return Math.round(((jR * ((long) i10)) / this.mPropagationSpeed) * fH);
    }
}
