package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes3.dex */
public class ProxyView extends View {
    int height;
    private ProxyViewHost host;
    int measureH;
    int measureW;
    int width;

    public boolean onEvent(int i, Object obj) {
        return false;
    }

    public ProxyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setHost(ProxyViewHost proxyViewHost) {
        this.host = proxyViewHost;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.measureW = i;
        this.measureH = i2;
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.setMeasure(i, i2);
            setMeasuredDimension(this.host.getMeasuredWidth(), this.host.getMeasuredHeight());
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.width = i3 - i;
        this.height = i4 - i2;
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.setSize(this.width, this.height);
        }
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
    protected void dispatchDraw(Canvas canvas) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            proxyViewHost.draw(canvas);
        } else {
            super.dispatchDraw(canvas);
        }
    }

    public boolean sendEvent(int i, Object obj) {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null) {
            return proxyViewHost.onEvent(i, obj);
        }
        return false;
    }
}
