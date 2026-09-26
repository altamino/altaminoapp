package com.narvii.drawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.narvii.app.DrawerActivity;
import com.narvii.widget.ProxyView;

/* JADX INFO: loaded from: classes10.dex */
public class DrawerView extends ProxyView {
    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (DrawerRealtimeBlurView.DRAWER_RENDERING_COUNT == 0) {
            super.draw(canvas);
        }
    }

    public DrawerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.ProxyView
    public boolean onEvent(int i10, Object obj) {
        if (getContext() instanceof DrawerActivity) {
            return ((DrawerActivity) getContext()).onDrawerEvent(i10, obj);
        }
        return super.onEvent(i10, obj);
    }
}
