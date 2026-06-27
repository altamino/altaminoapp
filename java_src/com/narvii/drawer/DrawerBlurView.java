package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.app.DrawerActivity;
import com.narvii.widget.ProxyViewHost;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class DrawerBlurView extends RealtimeBlurView {
    WeakReference<DrawerActivity> drawer;
    ProxyViewHost host;

    public DrawerBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setDrawerHost(ProxyViewHost proxyViewHost) {
        this.host = proxyViewHost;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView
    protected View getActivityDecorView() {
        if (this.host.getAttachView() != null && (this.host.getAttachView().getContext() instanceof DrawerActivity)) {
            DrawerActivity drawerActivity = (DrawerActivity) this.host.getAttachView().getContext();
            this.drawer = new WeakReference<>(drawerActivity);
            return drawerActivity.getWindow().getDecorView();
        }
        this.drawer = null;
        return null;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.drawer = null;
    }

    @Override // android.view.View
    public void getLocationInWindow(int[] iArr) {
        if (this.host.getAttachView() != null) {
            this.host.getAttachView().getLocationInWindow(iArr);
            iArr[1] = iArr[1] + (this.host.getAttachView().getHeight() - getHeight());
        } else {
            super.getLocationInWindow(iArr);
        }
    }

    @Override // android.view.View
    public boolean isShown() {
        DrawerActivity drawerActivity = this.drawer.get();
        if (drawerActivity != null) {
            return drawerActivity.isLeftDrawerVisible();
        }
        return false;
    }
}
