package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public class ExactRankingTitleView extends RankingTitleView {
    View progressLayout;

    public ExactRankingTitleView(Context context) {
        this(context, null);
    }

    @Override // com.narvii.widget.RankingTitleView
    protected int layoutId() {
        return R.layout.view_ranking_title_exact;
    }

    public ExactRankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExactRankingTitleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        View viewFindViewById = findViewById(R.id.progress);
        this.progressLayout = viewFindViewById;
        if (this.showBadge) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.setMarginStart(0);
        this.progressLayout.setLayoutParams(layoutParams);
    }
}
