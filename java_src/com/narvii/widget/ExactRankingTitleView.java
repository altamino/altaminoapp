package com.narvii.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class ExactRankingTitleView extends RankingTitleView {
    View progressLayout;

    @Override // com.narvii.widget.RankingTitleView
    protected int layoutId() {
        return R.layout.view_ranking_title_exact;
    }

    public ExactRankingTitleView(Context context) {
        this(context, null);
    }

    public ExactRankingTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExactRankingTitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.progressLayout = findViewById(R.id.progress);
        if (this.showBadge) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.progressLayout.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(0);
        }
        this.progressLayout.setLayoutParams(layoutParams);
    }
}
