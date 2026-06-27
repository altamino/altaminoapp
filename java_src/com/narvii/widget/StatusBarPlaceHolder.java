package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;

/* loaded from: classes3.dex */
public class StatusBarPlaceHolder extends View {
    private int statusBarHeight;

    public StatusBarPlaceHolder(Context context) {
        this(context, null);
    }

    public StatusBarPlaceHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.statusBarHeight = StatusBarUtils.STATUS_BAR_ENABLE ? Utils.getStatusBarHeight(context) : 0;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.statusBarHeight, 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
