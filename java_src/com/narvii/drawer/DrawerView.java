package com.narvii.drawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.narvii.app.DrawerActivity;
import com.narvii.widget.ProxyView;

/* loaded from: classes2.dex */
public class DrawerView extends ProxyView {
    public DrawerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.ProxyView
    public boolean onEvent(int i, Object obj) {
        if (getContext() instanceof DrawerActivity) {
            return ((DrawerActivity) getContext()).onDrawerEvent(i, obj);
        }
        return super.onEvent(i, obj);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (DrawerRealtimeBlurView.DRAWER_RENDERING_COUNT == 0) {
            super.draw(canvas);
        }
    }
}
