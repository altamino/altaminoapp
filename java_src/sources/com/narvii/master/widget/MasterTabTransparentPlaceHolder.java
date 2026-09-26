package com.narvii.master.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;

/* JADX INFO: loaded from: classes9.dex */
public class MasterTabTransparentPlaceHolder extends FrameLayout {
    private int masterTabHeight;
    private int statusBarHeight;

    public MasterTabTransparentPlaceHolder(Context context) {
        this(context, null);
    }

    public MasterTabTransparentPlaceHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        for (int i10 = 0; i10 < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i10++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof NVActivity) {
            this.statusBarHeight = ((NVActivity) context).getStatusBarOverlaySize();
        }
        this.masterTabHeight = getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    public void adjustHeight(int i10, int i11) {
        this.statusBarHeight = i10;
        this.masterTabHeight = i11;
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.masterTabHeight != 0 && View.MeasureSpec.getMode(i11) != 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.statusBarHeight + this.masterTabHeight, 1073741824);
        }
        super.onMeasure(i10, i11);
    }
}
