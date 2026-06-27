package com.narvii.story.widgets;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.story.widgets.GuideViewHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StoryGuideViewSwipe extends GuideViewHelper.BaseGuideView {
    public static final String KEY_HAS_GUIDE_SHOWN = "has_story_guide_shown";

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected int getLayoutId() {
        return R.layout.story_guide_swipe_view_layout;
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected String getPrefKey() {
        return KEY_HAS_GUIDE_SHOWN;
    }

    public StoryGuideViewSwipe(Context context) {
        super(context);
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected void init() {
        super.init();
        ((NVImageView) findViewById(R.id.story_guide_swipe_icon)).makeWebpRtl(Utils.isRtl());
        ((NVImageView) findViewById(R.id.story_guide_swipe_icon)).setImageUrl("assets://story_guide_swipe.webp");
    }
}
