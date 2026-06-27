package com.narvii.webview;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.view.NestedScrollingChild;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.narvii.widget.headercollapse.NVNestedScrollingChildHelper;

/* loaded from: classes3.dex */
public class NVWebView extends WebView implements NestedScrollingChild {
    private NVNestedScrollingChildHelper mChildHelper;

    public NVWebView(Context context) {
        super(context);
        init();
    }

    public NVWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public NVWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public NVWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void init() {
        this.mChildHelper = new NVNestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mChildHelper.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }
}
