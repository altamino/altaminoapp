package com.narvii.drawer;

import android.content.Context;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.drawer.DrawerLayout;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class MyDrawerLayout extends DrawerLayout {
    private View leftDrawer;
    private View rightDrawer;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public MyDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void closeDrawersDirectly() {
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (isDrawerView(childAt)) {
                DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.openState != 0 || layoutParams.onScreen != 0.0f) {
                    i++;
                    layoutParams.onScreen = 0.0f;
                    layoutParams.openState = 0;
                }
            }
        }
        if (i > 0) {
            this.mLeftDragger.abort();
            this.mRightDragger.abort();
            requestLayout();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setScrimColor(1426063360);
        setDrawerShadow(R.drawable.drawer_left_shadow, GravityCompat.START);
        setDrawerShadow(R.drawable.drawer_right_shadow, GravityCompat.END);
        int statusBarHeight = Utils.getStatusBarHeight(getContext());
        this.leftDrawer = findViewById(R.id.drawer_left_view);
        ((ViewGroup.MarginLayoutParams) this.leftDrawer.getLayoutParams()).topMargin = statusBarHeight;
        this.rightDrawer = findViewById(R.id.drawer_right_view);
        ((ViewGroup.MarginLayoutParams) this.rightDrawer.getLayoutParams()).topMargin = statusBarHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() <= 1 || (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) == 0 || !(isDrawerOpen(this.leftDrawer) || isDrawerOpen(this.rightDrawer))) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.narvii.drawer.DrawerLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.w("drawer layout touch exception", e);
            return false;
        }
    }

    @Override // com.narvii.drawer.DrawerLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.w("drawer layout touch exception", e);
            return false;
        }
    }

    @Override // com.narvii.drawer.DrawerLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        DrawerLayout.LayoutParams layoutParams = null;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null) {
                if (layoutParams == null) {
                    if (childAt.findViewById(android.R.id.content) != null && (childAt.getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
                        layoutParams = (DrawerLayout.LayoutParams) childAt.getLayoutParams();
                    }
                } else if (childAt.getLayoutParams() instanceof DrawerLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) ((DrawerLayout.LayoutParams) childAt.getLayoutParams())).bottomMargin = ((FrameLayout.LayoutParams) layoutParams).bottomMargin;
                }
            }
        }
        super.onMeasure(i, i2);
    }
}
