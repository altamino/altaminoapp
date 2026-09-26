package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class BoldBorderRankingTitleView extends ExactRankingTitleView {
    public BoldBorderRankingTitleView(Context context) {
        this(context, null);
    }

    @Override // com.narvii.widget.RankingTitleView
    protected int getProgressDrawableId() {
        return R.drawable.rounded_progress_drawable;
    }

    public BoldBorderRankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BoldBorderRankingTitleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // com.narvii.widget.RankingTitleView
    protected int getProgressBarBorderSize() {
        return (int) Utils.dpToPx(getContext(), 2.0f);
    }
}
