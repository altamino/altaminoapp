package com.narvii.story.widgets;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.story.widgets.GuideViewHelper;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StoryGuideViewClick extends GuideViewHelper.BaseGuideView {
    public static final String KEY_HAS_GUIDE_SHOWN = "has_story_guide_click_shown";

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected int getLayoutId() {
        return R.layout.story_guide_click_view_layout;
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected String getPrefKey() {
        return KEY_HAS_GUIDE_SHOWN;
    }

    public StoryGuideViewClick(Context context) {
        super(context);
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected void init() {
        super.init();
        ((NVImageView) findViewById(R.id.story_guide_click_icon_1)).setImageUrl("assets://story_guide_click.webp");
        ((NVImageView) findViewById(R.id.story_guide_click_icon_2)).setImageUrl("assets://story_guide_click.webp");
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    public void showGuide() {
        setDashLineHeight();
        super.showGuide();
    }

    private void setDashLineHeight() {
        View viewFindViewById;
        if (this.info == null || (viewFindViewById = findViewById(R.id.story_guide_divider_line)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        int i = 0;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = this.info.getInt("top");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
        }
        if (layoutParams != null) {
            int i2 = this.info.getInt("height");
            layoutParams.height = i2 == 0 ? -1 : i2 - i;
        }
    }
}
