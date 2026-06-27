package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class BoldBorderRankingTitleView extends ExactRankingTitleView {
    @Override // com.narvii.widget.RankingTitleView
    protected int getProgressDrawableId() {
        return R.drawable.rounded_progress_drawable;
    }

    public BoldBorderRankingTitleView(Context context) {
        this(context, null);
    }

    public BoldBorderRankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BoldBorderRankingTitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.narvii.widget.RankingTitleView
    protected int getProgressBarBorderSize() {
        return (int) Utils.dpToPx(getContext(), 2.0f);
    }
}
