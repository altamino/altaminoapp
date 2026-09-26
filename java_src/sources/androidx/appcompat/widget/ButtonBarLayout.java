package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class ButtonBarLayout extends LinearLayout {
    private static final int PEEK_BUTTON_DP = 16;
    private boolean mAllowStacking;
    private int mLastWidthSize;
    private boolean mStacked;

    private boolean b() {
        return this.mStacked;
    }

    private void setStacked(boolean z6) {
        if (this.mStacked != z6) {
            if (!z6 || this.mAllowStacking) {
                this.mStacked = z6;
                setOrientation(z6 ? 1 : 0);
                setGravity(z6 ? GravityCompat.END : 80);
                View viewFindViewById = findViewById(R.id.spacer);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(z6 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    public void setAllowStacking(boolean z6) {
        if (this.mAllowStacking != z6) {
            this.mAllowStacking = z6;
            if (!z6 && b()) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastWidthSize = -1;
        int[] iArr = R.styleable.ButtonBarLayout;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.s0(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.mAllowStacking = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ButtonBarLayout_allowStacking, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.mAllowStacking);
        }
    }

    private int a(int i10) {
        int childCount = getChildCount();
        while (i10 < childCount) {
            if (getChildAt(i10).getVisibility() == 0) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:29:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0098  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        boolean z6;
        int iA;
        int paddingTop;
        int iA2;
        int size = View.MeasureSpec.getSize(i10);
        int paddingBottom = 0;
        if (this.mAllowStacking) {
            if (size > this.mLastWidthSize && b()) {
                setStacked(false);
            }
            this.mLastWidthSize = size;
        }
        if (!b() && View.MeasureSpec.getMode(i10) == 1073741824) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z6 = true;
        } else {
            iMakeMeasureSpec = i10;
            z6 = false;
        }
        super.onMeasure(iMakeMeasureSpec, i11);
        if (this.mAllowStacking && !b() && (getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216) {
            setStacked(true);
        } else {
            if (z6) {
            }
            iA = a(0);
            if (iA >= 0) {
                View childAt = getChildAt(iA);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
                if (b()) {
                    iA2 = a(iA + 1);
                    if (iA2 >= 0) {
                        paddingTop += getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                    }
                    paddingBottom = paddingTop;
                } else {
                    paddingBottom = paddingTop + getPaddingBottom();
                }
            }
            if (ViewCompat.E(this) != paddingBottom) {
                setMinimumHeight(paddingBottom);
                if (i11 == 0) {
                    super.onMeasure(i10, i11);
                }
            }
        }
        super.onMeasure(i10, i11);
        iA = a(0);
        if (iA >= 0) {
            View childAt2 = getChildAt(iA);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) childAt2.getLayoutParams();
            paddingTop = getPaddingTop() + childAt2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
            if (b()) {
                iA2 = a(iA + 1);
                if (iA2 >= 0) {
                    paddingTop += getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                paddingBottom = paddingTop;
            } else {
                paddingBottom = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.E(this) != paddingBottom) {
            setMinimumHeight(paddingBottom);
            if (i11 == 0) {
                super.onMeasure(i10, i11);
            }
        }
    }
}
