package com.narvii.drawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.RoundedRealtimeBlurView;

/* loaded from: classes2.dex */
public class DrawerRealtimeBlurView extends RoundedRealtimeBlurView {
    public static int DRAWER_RENDERING_COUNT;
    private boolean attached;
    private View decorView;
    private View proxyView;

    @Override // android.view.View
    public boolean isShown() {
        return true;
    }

    public DrawerRealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public View getRootView() {
        return this.decorView;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView
    protected View getActivityDecorView() {
        return this.decorView;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView
    protected void render(Canvas canvas, View view) {
        DRAWER_RENDERING_COUNT++;
        try {
            super.render(canvas, view);
        } finally {
            DRAWER_RENDERING_COUNT--;
        }
    }

    @Override // android.view.View
    public void getLocationOnScreen(int[] iArr) {
        getLocalLocation(iArr);
        View view = this.proxyView;
        if (view != null) {
            int i = iArr[0];
            int i2 = iArr[1];
            view.getLocationOnScreen(iArr);
            iArr[0] = iArr[0] + i;
            iArr[1] = iArr[1] + i2;
        }
    }

    protected void getLocalLocation(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        for (View view = this; view != null && !(view instanceof ProxyViewHost); view = (View) view.getParent()) {
            iArr[0] = iArr[0] + view.getLeft();
            iArr[1] = iArr[1] + view.getTop();
        }
    }

    public void setProxyView(View view) {
        this.proxyView = view;
        View rootView = view == null ? null : view.getRootView();
        View view2 = this.decorView;
        if (view2 == rootView) {
            invalidate();
            return;
        }
        if (view2 != null && this.attached) {
            super.onDetachedFromWindow();
        }
        this.decorView = rootView;
        if (!this.attached || rootView == null) {
            return;
        }
        super.onAttachedToWindow();
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView, android.view.View
    protected void onAttachedToWindow() {
        if (this.decorView != null) {
            super.onAttachedToWindow();
        }
        this.attached = true;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.decorView != null) {
            super.onDetachedFromWindow();
        }
        this.attached = false;
    }
}
