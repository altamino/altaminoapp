package com.narvii.master.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;

/* loaded from: classes3.dex */
public class MasterTabTransparentPlaceHolder extends FrameLayout {
    private int masterTabHeight;
    private int statusBarHeight;

    public MasterTabTransparentPlaceHolder(Context context) {
        this(context, null);
    }

    public MasterTabTransparentPlaceHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        for (int i = 0; i < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof NVActivity) {
            this.statusBarHeight = ((NVActivity) context).getStatusBarOverlaySize();
        }
        this.masterTabHeight = getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.masterTabHeight != 0 && View.MeasureSpec.getMode(i2) != 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.statusBarHeight + this.masterTabHeight, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    public void adjustHeight(int i, int i2) {
        this.statusBarHeight = i;
        this.masterTabHeight = i2;
        requestLayout();
    }
}
