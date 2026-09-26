package com.narvii.list.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVActivity;

/* JADX INFO: loaded from: classes7.dex */
public class OverlayListPlaceholder extends FrameLayout {
    private int actionBarHeight;
    private int statusBarHeight;

    public OverlayListPlaceholder(Context context) {
        this(context, null);
    }

    public OverlayListPlaceholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        for (int i10 = 0; i10 < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i10++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) context;
            this.statusBarHeight = nVActivity.getStatusBarOverlaySize();
            this.actionBarHeight = nVActivity.getActionBarOverlaySize();
        }
        setPadding(getPaddingLeft(), getPaddingTop() + this.statusBarHeight, getPaddingRight(), getPaddingBottom());
    }

    public void adjustHeight(int i10, int i11) {
        this.statusBarHeight = i10;
        this.actionBarHeight = i11;
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.actionBarHeight != 0 && View.MeasureSpec.getMode(i11) != 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.statusBarHeight + this.actionBarHeight, 1073741824);
        }
        super.onMeasure(i10, i11);
    }
}
