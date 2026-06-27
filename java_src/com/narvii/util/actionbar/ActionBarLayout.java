package com.narvii.util.actionbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ActionBarLayout extends RelativeLayout {
    GestureDetector gestureDetector;
    int[] loc;

    public ActionBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loc = new int[2];
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View viewFindViewById = findViewById(R.id.actionbar_left);
        int right = viewFindViewById == null ? 0 : viewFindViewById.getRight() - viewFindViewById.getLeft();
        View viewFindViewById2 = findViewById(R.id.actionbar_title);
        if (viewFindViewById2 != null) {
            int screenWidth = getScreenWidth();
            int width = getWidth();
            View childAt = getChildAt(2);
            if (childAt != null && childAt != viewFindViewById && childAt != viewFindViewById2) {
                width -= childAt.getWidth();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    width -= marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                }
            }
            int width2 = viewFindViewById2.getWidth();
            int i5 = (screenWidth - width2) / 2;
            int i6 = width2 + i5;
            if (i6 > width) {
                i5 -= i6 - width;
                i6 = width;
            }
            if (i5 < right) {
                i6 = width;
            } else {
                right = i5;
            }
            if (right == viewFindViewById2.getLeft() && i6 == viewFindViewById2.getRight()) {
                return;
            }
            viewFindViewById2.measure(View.MeasureSpec.makeMeasureSpec(i6 - right, 1073741824), View.MeasureSpec.makeMeasureSpec(viewFindViewById2.getHeight(), 1073741824));
            if (Utils.isRtl()) {
                viewFindViewById2.layout(getWidth() - i6, viewFindViewById2.getTop(), getWidth() - right, viewFindViewById2.getBottom());
            } else {
                viewFindViewById2.layout(right, viewFindViewById2.getTop(), i6, viewFindViewById2.getBottom());
            }
        }
    }

    private int getScreenWidth() {
        return ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getWidth();
    }

    public void setOnGestureListener(GestureDetector.OnGestureListener onGestureListener) {
        this.gestureDetector = new GestureDetector(getContext(), onGestureListener);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
