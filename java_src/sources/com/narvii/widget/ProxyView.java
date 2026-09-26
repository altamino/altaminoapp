package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class ProxyView extends View {
    int height;
    private ProxyViewHost host;
    int measureH;
    int measureW;
    int width;

    public boolean onEvent(int i10, Object obj) {
        return false;
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        this.width = i14;
        int i15 = i13 - i11;
        this.height = i15;
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.setSize(i14, i15);
        }
    }

    public void setHost(ProxyViewHost proxyViewHost) {
        this.host = proxyViewHost;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.draw(canvas);
        } else {
            super.dispatchDraw(canvas);
        }
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            return proxyViewHost.dispatchKeyEvent(keyEvent);
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            return proxyViewHost.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.measureW = i10;
        this.measureH = i11;
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost == null) {
            super.onMeasure(i10, i11);
        } else {
            proxyViewHost.setMeasure(i10, i11);
            setMeasuredDimension(this.host.getMeasuredWidth(), this.host.getMeasuredHeight());
        }
    }

    public boolean sendEvent(int i10, Object obj) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            return proxyViewHost.onEvent(i10, obj);
        }
        return false;
    }

    public ProxyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.updateAttach(this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.updateAttach(this);
        }
    }
}
