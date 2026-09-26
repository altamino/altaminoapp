package com.narvii.webview;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.core.view.NestedScrollingChild;
import com.narvii.widget.headercollapse.NVNestedScrollingChildHelper;

/* JADX INFO: loaded from: classes7.dex */
public class NVWebView extends WebView implements NestedScrollingChild {
    private NVNestedScrollingChildHelper mChildHelper;

    public NVWebView(Context context) {
        super(context);
        init();
    }

    private void init() {
        this.mChildHelper = new NVNestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.mChildHelper.dispatchNestedFling(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.mChildHelper.dispatchNestedPreFling(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mChildHelper.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.mChildHelper.setNestedScrollingEnabled(z6);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.mChildHelper.startNestedScroll(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    public NVWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public NVWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init();
    }

    @TargetApi(21)
    public NVWebView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
