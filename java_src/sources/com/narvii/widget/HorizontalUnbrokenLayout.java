package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.list.NVArrayAdapter;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
public class HorizontalUnbrokenLayout extends LinearLayout {
    public static final int COUNT_MAX = 5;
    private NVArrayAdapter adapter;
    private boolean isRtl;
    private int memberCount;

    public HorizontalUnbrokenLayout(Context context) {
        this(context, null);
    }

    public HorizontalUnbrokenLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setAdapter(NVArrayAdapter nVArrayAdapter, int i10) {
        this.adapter = nVArrayAdapter;
        this.memberCount = i10;
        updateChildViews();
    }

    public void updateChildViews() {
        if (this.adapter == null) {
            return;
        }
        removeAllViews();
        int i10 = 0;
        while (i10 < this.adapter.getCount()) {
            View childAt = getChildCount() > i10 ? getChildAt(i10) : null;
            if (childAt != null) {
                removeView(childAt);
            }
            addView(this.adapter.getView(i10, childAt, this), i10);
            i10++;
        }
        addView(LayoutInflater.from(getContext()).inflate(R.layout.item_all_member_more_cell, (ViewGroup) this, false));
    }

    public HorizontalUnbrokenLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init();
    }

    private void init() {
        this.isRtl = Utils.isRtl();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        boolean z10;
        int paddingLeft;
        float measuredWidth;
        int width = getWidth();
        int childCount = getChildCount() - 1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            int measuredWidth2 = childAt.getMeasuredWidth();
            if (childCount == getChildCount() - 1) {
                measuredWidth = childAt.getMeasuredWidth();
            } else {
                measuredWidth = (childAt.getMeasuredWidth() * 3) / 4.0f;
            }
            float f = i15 + measuredWidth;
            if (f >= width) {
                i17 = measuredWidth2;
                break;
            }
            i15 = (int) f;
            i16++;
            childCount--;
            i17 = measuredWidth2;
        }
        if (i16 <= 5 && i15 + ((i17 * 3) / 4.0f) < width) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.isRtl) {
            paddingLeft = getPaddingLeft() + i15;
        } else {
            paddingLeft = (getPaddingLeft() + width) - i15;
        }
        if (z10) {
            paddingLeft = (int) (paddingLeft + ((i17 * 3) / 4.0f));
        }
        int paddingTop = getPaddingTop();
        for (int i18 = 0; i18 < i16 - 1; i18++) {
            if (i16 > getChildCount()) {
                return;
            }
            View childAt2 = getChildAt(i18);
            if (this.isRtl) {
                childAt2.layout(paddingLeft - childAt2.getMeasuredWidth(), paddingTop, paddingLeft, childAt2.getMeasuredHeight() + paddingTop);
            } else {
                childAt2.layout(paddingLeft, paddingTop, childAt2.getMeasuredWidth() + paddingLeft, childAt2.getMeasuredHeight() + paddingTop);
            }
            int measuredWidth3 = (int) ((childAt2.getMeasuredWidth() * 3) / 4.0f);
            if (this.isRtl) {
                paddingLeft -= measuredWidth3;
            } else {
                paddingLeft += measuredWidth3;
            }
        }
        View childAt3 = getChildAt(getChildCount() - 1);
        if (childAt3 != null) {
            if (z10) {
                i14 = 8;
            }
            childAt3.setVisibility(i14);
            if (this.isRtl) {
                childAt3.layout(paddingLeft - childAt3.getMeasuredWidth(), paddingTop, paddingLeft, childAt3.getMeasuredHeight() + paddingTop);
            } else {
                childAt3.layout(paddingLeft, paddingTop, childAt3.getMeasuredWidth() + paddingLeft, childAt3.getMeasuredHeight() + paddingTop);
            }
        }
    }
}
