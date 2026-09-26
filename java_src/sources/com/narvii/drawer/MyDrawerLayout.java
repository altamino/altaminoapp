package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.MotionEventCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
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
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (isDrawerView(childAt)) {
                DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.openState != 0 || layoutParams.onScreen != 0.0f) {
                    i10++;
                    layoutParams.onScreen = 0.0f;
                    layoutParams.openState = 0;
                }
            }
        }
        if (i10 > 0) {
            this.mLeftDragger.a();
            this.mRightDragger.a();
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1 && (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) != 0 && (isDrawerOpen(this.leftDrawer) || isDrawerOpen(this.rightDrawer))) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setScrimColor(1426063360);
        setDrawerShadow(R.drawable.drawer_left_shadow, GravityCompat.START);
        setDrawerShadow(R.drawable.drawer_right_shadow, GravityCompat.END);
        int statusBarHeight = Utils.getStatusBarHeight(getContext());
        View viewFindViewById = findViewById(R.id.drawer_left_view);
        this.leftDrawer = viewFindViewById;
        ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).topMargin = statusBarHeight;
        View viewFindViewById2 = findViewById(R.id.drawer_right_view);
        this.rightDrawer = viewFindViewById2;
        ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).topMargin = statusBarHeight;
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
    protected void onMeasure(int i10, int i11) {
        int childCount = getChildCount();
        DrawerLayout.LayoutParams layoutParams = null;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
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
        super.onMeasure(i10, i11);
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
}
