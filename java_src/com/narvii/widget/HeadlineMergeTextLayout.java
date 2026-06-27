package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class HeadlineMergeTextLayout extends LinearLayout {
    private static final int MODE_LARGE_IMAGE = 3;
    private static final int MODE_MULTI_IMAGE = 1;
    private static final int MODE_NO_IMAGE = 2;
    private static final int MODE_SMALL_IMAGE = 0;
    private int mainMaxline;
    private int mergeMode;
    private int subMaxLine;
    private int totalMaxLine;
    private TextView tvMain;
    private TextView tvSub;

    public HeadlineMergeTextLayout(Context context) {
        this(context, null);
    }

    public HeadlineMergeTextLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.totalMaxLine = -1;
        this.mainMaxline = -1;
        this.subMaxLine = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HeadlineMergeTextLayout);
        this.mergeMode = typedArrayObtainStyledAttributes.getInt(R.styleable.HeadlineMergeTextLayout_mergeMode, 0);
        this.totalMaxLine = typedArrayObtainStyledAttributes.getInt(R.styleable.HeadlineMergeTextLayout_mergeMaxLines, -1);
        this.mainMaxline = typedArrayObtainStyledAttributes.getInt(R.styleable.HeadlineMergeTextLayout_mainMaxLines, -1);
        this.subMaxLine = typedArrayObtainStyledAttributes.getInt(R.styleable.HeadlineMergeTextLayout_subMaxLines, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof TextView) {
                Object tag = childAt.getTag();
                if (Utils.isEquals("main", tag)) {
                    this.tvMain = (TextView) childAt;
                }
                if (Utils.isEquals("sub", tag)) {
                    this.tvSub = (TextView) childAt;
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        TextView textView;
        int size = View.MeasureSpec.getSize(i);
        if (this.totalMaxLine != -1 && (textView = this.tvMain) != null && this.tvSub != null && this.mainMaxline != -1 && this.subMaxLine != -1) {
            int requiredLineCount = getRequiredLineCount(textView, size);
            getRequiredLineCount(this.tvSub, size);
            int iMin = Math.min(requiredLineCount, this.mainMaxline);
            int i3 = this.mergeMode;
            if (i3 == 0) {
                this.tvMain.setMaxLines(iMin);
                this.tvSub.setMaxLines(iMin < 2 ? this.subMaxLine : 2);
            } else {
                if (i3 == 1) {
                    this.tvMain.setMaxLines(iMin);
                    TextView textView2 = this.tvSub;
                    int i4 = this.totalMaxLine;
                    textView2.setMaxLines(i4 - iMin >= 0 ? i4 - iMin : 0);
                } else if (i3 == 2) {
                    this.tvMain.setMaxLines(iMin);
                    this.tvSub.setMaxLines(iMin < 2 ? this.subMaxLine : 2);
                } else if (i3 == 3) {
                    this.tvMain.setMaxLines(iMin);
                    TextView textView3 = this.tvSub;
                    int i5 = this.totalMaxLine;
                    textView3.setMaxLines(i5 - iMin >= 0 ? i5 - iMin : 0);
                }
            }
        }
        super.onMeasure(i, i2);
    }

    private int getRequiredLineCount(TextView textView, int i) {
        return new StaticLayout(textView.getText(), textView.getPaint(), i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount();
    }
}
