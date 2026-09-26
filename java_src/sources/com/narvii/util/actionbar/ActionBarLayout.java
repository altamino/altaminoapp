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

/* JADX INFO: loaded from: classes4.dex */
public class ActionBarLayout extends RelativeLayout {
    GestureDetector gestureDetector;
    int[] loc;

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            return super.onTouchEvent(motionEvent);
        }
        gestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    public void setOnGestureListener(GestureDetector.OnGestureListener onGestureListener) {
        this.gestureDetector = new GestureDetector(getContext(), onGestureListener);
    }

    public ActionBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loc = new int[2];
    }

    private int getScreenWidth() {
        return ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getWidth();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int right;
        super.onLayout(z6, i10, i11, i12, i13);
        View viewFindViewById = findViewById(R.id.actionbar_left);
        if (viewFindViewById == null) {
            right = 0;
        } else {
            right = viewFindViewById.getRight() - viewFindViewById.getLeft();
        }
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
            int i14 = (screenWidth - width2) / 2;
            int i15 = width2 + i14;
            if (i15 > width) {
                i14 -= i15 - width;
                i15 = width;
            }
            if (i14 >= right) {
                width = i15;
                right = i14;
            }
            if (right != viewFindViewById2.getLeft() || width != viewFindViewById2.getRight()) {
                viewFindViewById2.measure(View.MeasureSpec.makeMeasureSpec(width - right, 1073741824), View.MeasureSpec.makeMeasureSpec(viewFindViewById2.getHeight(), 1073741824));
                if (Utils.isRtl()) {
                    viewFindViewById2.layout(getWidth() - width, viewFindViewById2.getTop(), getWidth() - right, viewFindViewById2.getBottom());
                } else {
                    viewFindViewById2.layout(right, viewFindViewById2.getTop(), width, viewFindViewById2.getBottom());
                }
            }
        }
    }
}
