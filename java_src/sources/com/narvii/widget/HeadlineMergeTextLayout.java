package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes8.dex */
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

    public HeadlineMergeTextLayout(Context context, @Nullable AttributeSet attributeSet) {
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

    private int getRequiredLineCount(TextView textView, int i10) {
        return new StaticLayout(textView.getText(), textView.getPaint(), i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
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
    protected void onMeasure(int i10, int i11) {
        TextView textView;
        int size = View.MeasureSpec.getSize(i10);
        if (this.totalMaxLine != -1 && (textView = this.tvMain) != null && this.tvSub != null && this.mainMaxline != -1 && this.subMaxLine != -1) {
            int requiredLineCount = getRequiredLineCount(textView, size);
            getRequiredLineCount(this.tvSub, size);
            int iMin = Math.min(requiredLineCount, this.mainMaxline);
            int i12 = this.mergeMode;
            int i13 = 2;
            if (i12 == 0) {
                this.tvMain.setMaxLines(iMin);
                TextView textView2 = this.tvSub;
                if (iMin < 2) {
                    i13 = this.subMaxLine;
                }
                textView2.setMaxLines(i13);
            } else {
                int i14 = 0;
                if (i12 == 1) {
                    this.tvMain.setMaxLines(iMin);
                    TextView textView3 = this.tvSub;
                    int i15 = this.totalMaxLine;
                    if (i15 - iMin >= 0) {
                        i14 = i15 - iMin;
                    }
                    textView3.setMaxLines(i14);
                } else if (i12 == 2) {
                    this.tvMain.setMaxLines(iMin);
                    TextView textView4 = this.tvSub;
                    if (iMin < 2) {
                        i13 = this.subMaxLine;
                    }
                    textView4.setMaxLines(i13);
                } else if (i12 == 3) {
                    this.tvMain.setMaxLines(iMin);
                    TextView textView5 = this.tvSub;
                    int i16 = this.totalMaxLine;
                    if (i16 - iMin >= 0) {
                        i14 = i16 - iMin;
                    }
                    textView5.setMaxLines(i14);
                }
            }
        }
        super.onMeasure(i10, i11);
    }
}
