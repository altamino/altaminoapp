package com.narvii.list.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVActivity;

/* loaded from: classes3.dex */
public class OverlayListPlaceholder extends FrameLayout {
    private int actionBarHeight;
    private int statusBarHeight;

    public OverlayListPlaceholder(Context context) {
        this(context, null);
    }

    public OverlayListPlaceholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        for (int i = 0; i < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) context;
            this.statusBarHeight = nVActivity.getStatusBarOverlaySize();
            this.actionBarHeight = nVActivity.getActionBarOverlaySize();
        }
        setPadding(getPaddingLeft(), getPaddingTop() + this.statusBarHeight, getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.actionBarHeight != 0 && View.MeasureSpec.getMode(i2) != 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.statusBarHeight + this.actionBarHeight, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    public void adjustHeight(int i, int i2) {
        this.statusBarHeight = i;
        this.actionBarHeight = i2;
        requestLayout();
    }
}
