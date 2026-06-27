package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVArrayAdapter;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class HorizontalUnbrokenLayout extends LinearLayout {
    public static final int COUNT_MAX = 5;
    private NVArrayAdapter adapter;
    private boolean isRtl;
    private int memberCount;

    public HorizontalUnbrokenLayout(Context context) {
        this(context, null);
    }

    public HorizontalUnbrokenLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalUnbrokenLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.isRtl = Utils.isRtl();
    }

    public void setAdapter(NVArrayAdapter nVArrayAdapter, int i) {
        this.adapter = nVArrayAdapter;
        this.memberCount = i;
        updateChildViews();
    }

    public void updateChildViews() {
        if (this.adapter == null) {
            return;
        }
        removeAllViews();
        int i = 0;
        while (i < this.adapter.getCount()) {
            View childAt = getChildCount() > i ? getChildAt(i) : null;
            if (childAt != null) {
                removeView(childAt);
            }
            addView(this.adapter.getView(i, childAt, this), i);
            i++;
        }
        addView(LayoutInflater.from(getContext()).inflate(R.layout.item_all_member_more_cell, (ViewGroup) this, false));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width = getWidth();
        int childCount = getChildCount() - 1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (childCount < 0) {
                break;
            }
            int measuredWidth = getChildAt(childCount).getMeasuredWidth();
            float measuredWidth2 = i5 + (childCount == getChildCount() - 1 ? r1.getMeasuredWidth() : (r1.getMeasuredWidth() * 3) / 4.0f);
            if (measuredWidth2 >= width) {
                i7 = measuredWidth;
                break;
            }
            i5 = (int) measuredWidth2;
            i6++;
            childCount--;
            i7 = measuredWidth;
        }
        boolean z2 = i6 <= 5 && ((float) i5) + (((float) (i7 * 3)) / 4.0f) < ((float) width);
        int paddingLeft = this.isRtl ? getPaddingLeft() + i5 : (getPaddingLeft() + width) - i5;
        if (z2) {
            paddingLeft = (int) (paddingLeft + ((i7 * 3) / 4.0f));
        }
        int paddingTop = getPaddingTop();
        int i8 = paddingLeft;
        for (int i9 = 0; i9 < i6 - 1; i9++) {
            if (i6 > getChildCount()) {
                return;
            }
            View childAt = getChildAt(i9);
            if (this.isRtl) {
                childAt.layout(i8 - childAt.getMeasuredWidth(), paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
            } else {
                childAt.layout(i8, paddingTop, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + paddingTop);
            }
            int measuredWidth3 = (int) ((childAt.getMeasuredWidth() * 3) / 4.0f);
            i8 = this.isRtl ? i8 - measuredWidth3 : i8 + measuredWidth3;
        }
        View childAt2 = getChildAt(getChildCount() - 1);
        if (childAt2 != null) {
            childAt2.setVisibility(z2 ? 8 : 0);
            if (this.isRtl) {
                childAt2.layout(i8 - childAt2.getMeasuredWidth(), paddingTop, i8, childAt2.getMeasuredHeight() + paddingTop);
            } else {
                childAt2.layout(i8, paddingTop, childAt2.getMeasuredWidth() + i8, childAt2.getMeasuredHeight() + paddingTop);
            }
        }
    }
}
