package com.narvii.monetization.store;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
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

    public void setImageSizeRange(int i10, int i11) {
        this.imageMaxSize = i10;
        this.imageMinSize = i11;
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.imageMaxSize = Integer.MAX_VALUE;
        this.imageMinSize = Integer.MAX_VALUE;
        this.statusBarHeight = Utils.getStatusBarHeight(getContext());
        this.actionBarHeight = Utils.getActionBarHeight(getContext());
    }

    private float calcAlpha(View view, int i10, int i11) {
        int top = view.getTop();
        if (top <= i10) {
            return 0.0f;
        }
        if (top >= i11) {
            return 1.0f;
        }
        return 1.0f - (((i11 - top) * 1.0f) / (i11 - i10));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = findViewById(R.id.store_section_icon);
        this.titleWrapper = findViewById(R.id.store_section_title_wrapper);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int width = getWidth();
        int height = getHeight();
        int i14 = this.actionBarHeight;
        int i15 = this.imageMinSize;
        int i16 = (i14 - i15) / 2;
        int iMin = Math.min(i14 - i16, i15);
        int i17 = this.statusBarHeight + i16;
        int i18 = height - i17;
        if (i18 > this.imageMaxSize + this.titleWrapper.getMeasuredHeight()) {
            int measuredHeight = this.imageMaxSize + this.titleWrapper.getMeasuredHeight();
            int i19 = this.imageMaxSize;
            int i20 = (width - i19) / 2;
            int i21 = ((i18 - measuredHeight) / 2) + i17;
            this.icon.layout(i20, i21, i20 + i19, i19 + i21);
            this.titleWrapper.setAlpha(1.0f);
            View view = this.titleWrapper;
            int i22 = this.imageMaxSize;
            view.layout(0, i21 + i22, width, i21 + i22 + view.getMeasuredHeight());
            return;
        }
        if (i18 > this.titleWrapper.getMeasuredHeight() + iMin) {
            int measuredHeight2 = i18 - this.titleWrapper.getMeasuredHeight();
            int i23 = (width - measuredHeight2) / 2;
            int i24 = i23 + measuredHeight2;
            int i25 = measuredHeight2 + i17;
            this.icon.layout(i23, i17, i24, i25);
            this.titleWrapper.setAlpha(1.0f);
            View view2 = this.titleWrapper;
            view2.layout(0, i25, width, view2.getMeasuredHeight() + i25);
            return;
        }
        int i26 = (width - iMin) / 2;
        int i27 = i26 + iMin;
        int i28 = iMin + i17;
        this.icon.layout(i26, i17, i27, i28);
        View view3 = this.titleWrapper;
        view3.setAlpha(calcAlpha(view3, i28 - view3.getPaddingTop(), i28));
    }
}
