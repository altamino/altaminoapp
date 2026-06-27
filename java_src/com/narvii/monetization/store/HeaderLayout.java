package com.narvii.monetization.store;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class HeaderLayout extends RelativeLayout {
    private final int actionBarHeight;
    private View icon;
    private int imageMaxSize;
    private int imageMinSize;
    private final int statusBarHeight;
    private View titleWrapper;

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.imageMaxSize = Integer.MAX_VALUE;
        this.imageMinSize = Integer.MAX_VALUE;
        this.statusBarHeight = Utils.getStatusBarHeight(getContext());
        this.actionBarHeight = Utils.getActionBarHeight(getContext());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = findViewById(R.id.store_section_icon);
        this.titleWrapper = findViewById(R.id.store_section_title_wrapper);
    }

    public void setImageSizeRange(int i, int i2) {
        this.imageMaxSize = i;
        this.imageMinSize = i2;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int width = getWidth();
        int height = getHeight();
        int i5 = this.actionBarHeight;
        int i6 = this.imageMinSize;
        int i7 = (i5 - i6) / 2;
        int iMin = Math.min(i5 - i7, i6);
        int i8 = this.statusBarHeight + i7;
        int i9 = height - i8;
        if (i9 > this.imageMaxSize + this.titleWrapper.getMeasuredHeight()) {
            int measuredHeight = this.imageMaxSize + this.titleWrapper.getMeasuredHeight();
            int i10 = this.imageMaxSize;
            int i11 = (width - i10) / 2;
            int i12 = ((i9 - measuredHeight) / 2) + i8;
            this.icon.layout(i11, i12, i11 + i10, i10 + i12);
            this.titleWrapper.setAlpha(1.0f);
            View view = this.titleWrapper;
            int i13 = this.imageMaxSize;
            view.layout(0, i12 + i13, width, i12 + i13 + view.getMeasuredHeight());
            return;
        }
        if (i9 > this.titleWrapper.getMeasuredHeight() + iMin) {
            int measuredHeight2 = i9 - this.titleWrapper.getMeasuredHeight();
            int i14 = (width - measuredHeight2) / 2;
            int i15 = i14 + measuredHeight2;
            int i16 = measuredHeight2 + i8;
            this.icon.layout(i14, i8, i15, i16);
            this.titleWrapper.setAlpha(1.0f);
            View view2 = this.titleWrapper;
            view2.layout(0, i16, width, view2.getMeasuredHeight() + i16);
            return;
        }
        int i17 = (width - iMin) / 2;
        int i18 = i17 + iMin;
        int i19 = iMin + i8;
        this.icon.layout(i17, i8, i18, i19);
        View view3 = this.titleWrapper;
        view3.setAlpha(calcAlpha(view3, i19 - view3.getPaddingTop(), i19));
    }

    private float calcAlpha(View view, int i, int i2) {
        int top = view.getTop();
        if (top <= i) {
            return 0.0f;
        }
        if (top >= i2) {
            return 1.0f;
        }
        return 1.0f - (((i2 - top) * 1.0f) / (i2 - i));
    }
}
