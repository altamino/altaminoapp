package com.narvii.widget;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class ProxyViewHost extends FrameLayout {
    static Field fAttachInfo;
    static Method mDispatchAttached;
    static Method mDispatchDetached;
    ProxyView attach;
    Object attachInfo;
    int height;
    final Runnable layout;
    int measureH;
    int measureW;
    int width;

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

    public ProxyView getAttachView() {
        return this.attach;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        return getChildVisibleRect(view, rect, point, false);
    }

    protected void onAttach(ProxyView proxyView) {
    }

    protected void onDetach(ProxyView proxyView) {
    }

    public boolean onEvent(int i10, Object obj) {
        return false;
    }

    static {
        Field declaredField;
        Method declaredMethod;
        Method declaredMethod2 = null;
        try {
            declaredField = View.class.getDeclaredField("mAttachInfo");
            try {
                declaredField.setAccessible(true);
            } catch (Exception e) {
                e = e;
                Log.e("ProxyViewHost.fAttachInfo", e);
            }
        } catch (Exception e2) {
            e = e2;
            declaredField = null;
        }
        fAttachInfo = declaredField;
        try {
            declaredMethod = View.class.getDeclaredMethod("dispatchAttachedToWindow", View.class.getClassLoader().loadClass("android.view.View$AttachInfo"), Integer.TYPE);
            try {
                declaredMethod.setAccessible(true);
            } catch (Exception e6) {
                e = e6;
                Log.e("ProxyViewHost.mDispatchAttached", e);
            }
        } catch (Exception e7) {
            e = e7;
            declaredMethod = null;
        }
        mDispatchAttached = declaredMethod;
        try {
            declaredMethod2 = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
            declaredMethod2.setAccessible(true);
        } catch (Exception e10) {
            Log.e("ProxyViewHost.mDispatchDetached", e10);
        }
        mDispatchDetached = declaredMethod2;
    }

    static void dispatchAttachedToWindow(View view, Object obj) {
        try {
            mDispatchAttached.invoke(view, obj, 0);
        } catch (Exception unused) {
        }
    }

    static void dispatchDetachedFromWindow(View view) {
        try {
            mDispatchDetached.invoke(view, new Object[0]);
        } catch (Exception unused) {
        }
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

    public boolean getChildVisibleRect(View view, Rect rect, Point point, boolean z6) {
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

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if (this.attach == null) {
            return super.invalidateChildInParent(iArr, rect);
        }
        rect.offset(iArr[0], iArr[1]);
        this.attach.invalidate(rect);
        return null;
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

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        ProxyView proxyView = this.attach;
        if (proxyView == null || proxyView.getParent() == null) {
            super.requestDisallowInterceptTouchEvent(z6);
        } else {
            this.attach.getParent().requestDisallowInterceptTouchEvent(z6);
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

    public boolean sendEvent(int i10, Object obj) {
        ProxyView proxyView = this.attach;
        if (proxyView != null) {
            return proxyView.onEvent(i10, obj);
        }
        return false;
    }

    void setMeasure(int i10, int i11) {
        this.measureW = i10;
        this.measureH = i11;
        measure(i10, i11);
    }

    void setSize(int i10, int i11) {
        this.width = i10;
        this.height = i11;
        layout(0, 0, i10, i11);
    }

    void updateAttach(ProxyView proxyView) {
        int i10;
        int i11;
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
                int i12 = proxyView.measureW;
                if (i12 != 0 && (i11 = proxyView.measureH) != 0) {
                    setMeasure(i12, i11);
                }
                int i13 = proxyView.width;
                if (i13 > 0 && (i10 = proxyView.height) > 0) {
                    setSize(i13, i10);
                }
                proxyView.invalidate();
                proxyView.requestLayout();
            }
        }
    }

    public ProxyViewHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layout = new Runnable() { // from class: com.narvii.widget.ProxyViewHost.1
            @Override // java.lang.Runnable
            public void run() {
                int i10;
                int i11;
                ProxyViewHost proxyViewHost = ProxyViewHost.this;
                int i12 = proxyViewHost.measureW;
                if (i12 != 0 && (i11 = proxyViewHost.measureH) != 0) {
                    proxyViewHost.measure(i12, i11);
                }
                ProxyViewHost proxyViewHost2 = ProxyViewHost.this;
                int i13 = proxyViewHost2.width;
                if (i13 <= 0 || (i10 = proxyViewHost2.height) <= 0) {
                    return;
                }
                proxyViewHost2.layout(0, 0, i13, i10);
            }
        };
        if (Utils.isRtl()) {
            setLayoutDirection(1);
        }
    }

    private void invalidListView(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof ListView) {
                childAt.requestLayout();
            } else if (childAt instanceof ViewGroup) {
                invalidListView((ViewGroup) childAt);
            }
        }
    }
}
