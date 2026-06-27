package com.narvii.widget;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ProxyViewHost extends FrameLayout {
    static final Field fAttachInfo;
    static final Method mDispatchAttached;
    static final Method mDispatchDetached;
    ProxyView attach;
    Object attachInfo;
    int height;
    final Runnable layout;
    int measureH;
    int measureW;
    int width;

    protected void onAttach(ProxyView proxyView) {
    }

    protected void onDetach(ProxyView proxyView) {
    }

    public boolean onEvent(int i, Object obj) {
        return false;
    }

    public ProxyViewHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layout = new Runnable() { // from class: com.narvii.widget.ProxyViewHost.1
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                ProxyViewHost proxyViewHost = ProxyViewHost.this;
                int i3 = proxyViewHost.measureW;
                if (i3 != 0 && (i2 = proxyViewHost.measureH) != 0) {
                    proxyViewHost.measure(i3, i2);
                }
                ProxyViewHost proxyViewHost2 = ProxyViewHost.this;
                int i4 = proxyViewHost2.width;
                if (i4 <= 0 || (i = proxyViewHost2.height) <= 0) {
                    return;
                }
                proxyViewHost2.layout(0, 0, i4, i);
            }
        };
        if (!Utils.isRtl() || Build.VERSION.SDK_INT < 17) {
            return;
        }
        setLayoutDirection(1);
    }

    void setSize(int i, int i2) {
        this.width = i;
        this.height = i2;
        layout(0, 0, i, i2);
    }

    void setMeasure(int i, int i2) {
        this.measureW = i;
        this.measureH = i2;
        measure(i, i2);
    }

    public ProxyView getAttachView() {
        return this.attach;
    }

    public void attachTo(ProxyView proxyView) {
        if (proxyView == null) {
            throw new IllegalArgumentException();
        }
        ProxyView proxyView2 = this.attach;
        if (proxyView2 == proxyView) {
            return;
        }
        if (proxyView2 != null) {
            onDetach(proxyView2);
        }
        this.attach = proxyView;
        updateAttach(proxyView);
        requestLayout();
        onAttach(proxyView);
    }

    public void detachFrom(ProxyView proxyView) {
        if (this.attach == proxyView) {
            this.attach = null;
            updateAttach(null);
            onDetach(proxyView);
        }
    }

    void updateAttach(ProxyView proxyView) {
        int i;
        int i2;
        if (this.attach == proxyView) {
            Object attachInfo = getAttachInfo(proxyView);
            Object obj = this.attachInfo;
            if (attachInfo != obj) {
                if (obj != null) {
                    dispatchDetachedFromWindow(this);
                } else if (attachInfo != null) {
                    invalidListView(this);
                }
                this.attachInfo = attachInfo;
                if (attachInfo != null) {
                    dispatchAttachedToWindow(this, attachInfo);
                }
            }
            if (proxyView != null) {
                int i3 = proxyView.measureW;
                if (i3 != 0 && (i2 = proxyView.measureH) != 0) {
                    setMeasure(i3, i2);
                }
                int i4 = proxyView.width;
                if (i4 > 0 && (i = proxyView.height) > 0) {
                    setSize(i4, i);
                }
                proxyView.invalidate();
                proxyView.requestLayout();
            }
        }
    }

    private void invalidListView(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ListView) {
                childAt.requestLayout();
            } else if (childAt instanceof ViewGroup) {
                invalidListView((ViewGroup) childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if (this.attach != null) {
            rect.offset(iArr[0], iArr[1]);
            this.attach.invalidate(rect);
            return null;
        }
        return super.invalidateChildInParent(iArr, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        ProxyView proxyView = this.attach;
        if (proxyView != null) {
            proxyView.invalidate();
        } else {
            super.onDescendantInvalidated(view, view2);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        Utils.handler.removeCallbacks(this.layout);
        super.requestLayout();
        if (this.attachInfo != null) {
            Utils.post(this.layout);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        ProxyView proxyView = this.attach;
        if (proxyView != null && proxyView.getParent() != null) {
            this.attach.getParent().requestDisallowInterceptTouchEvent(z);
        } else {
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        return getChildVisibleRect(view, rect, point, false);
    }

    public boolean getChildVisibleRect(View view, Rect rect, Point point, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        if (!rect.intersect(0, 0, getWidth(), getHeight())) {
            return false;
        }
        ProxyView proxyView = this.attach;
        if (proxyView == null || proxyView.getParent() == null) {
            return true;
        }
        return this.attach.getParent().getChildVisibleRect(this.attach, rect, point);
    }

    static {
        Field declaredField;
        Method declaredMethod;
        Method declaredMethod2 = null;
        try {
            declaredField = View.class.getDeclaredField("mAttachInfo");
        } catch (Exception e) {
            e = e;
            declaredField = null;
        }
        try {
            declaredField.setAccessible(true);
        } catch (Exception e2) {
            e = e2;
            Log.e("ProxyViewHost.fAttachInfo", e);
            fAttachInfo = declaredField;
            declaredMethod = View.class.getDeclaredMethod("dispatchAttachedToWindow", View.class.getClassLoader().loadClass("android.view.View$AttachInfo"), Integer.TYPE);
            declaredMethod.setAccessible(true);
            mDispatchAttached = declaredMethod;
            declaredMethod2 = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
            declaredMethod2.setAccessible(true);
            mDispatchDetached = declaredMethod2;
        }
        fAttachInfo = declaredField;
        try {
            declaredMethod = View.class.getDeclaredMethod("dispatchAttachedToWindow", View.class.getClassLoader().loadClass("android.view.View$AttachInfo"), Integer.TYPE);
        } catch (Exception e3) {
            e = e3;
            declaredMethod = null;
        }
        try {
            declaredMethod.setAccessible(true);
        } catch (Exception e4) {
            e = e4;
            Log.e("ProxyViewHost.mDispatchAttached", e);
            mDispatchAttached = declaredMethod;
            declaredMethod2 = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
            declaredMethod2.setAccessible(true);
            mDispatchDetached = declaredMethod2;
        }
        mDispatchAttached = declaredMethod;
        try {
            declaredMethod2 = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
            declaredMethod2.setAccessible(true);
        } catch (Exception e5) {
            Log.e("ProxyViewHost.mDispatchDetached", e5);
        }
        mDispatchDetached = declaredMethod2;
    }

    static Object getAttachInfo(View view) {
        if (view == null) {
            return null;
        }
        try {
            return fAttachInfo.get(view);
        } catch (Exception unused) {
            return null;
        }
    }

    static void dispatchAttachedToWindow(View view, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            mDispatchAttached.invoke(view, obj, 0);
        } catch (Exception unused) {
        }
    }

    static void dispatchDetachedFromWindow(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            mDispatchDetached.invoke(view, new Object[0]);
        } catch (Exception unused) {
        }
    }

    public boolean sendEvent(int i, Object obj) {
        ProxyView proxyView = this.attach;
        if (proxyView != null) {
            return proxyView.onEvent(i, obj);
        }
        return false;
    }
}
