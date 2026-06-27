package com.narvii.story.widgets;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.story.widgets.GuideViewHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StoryGuideViewDoubleTap extends GuideViewHelper.BaseGuideView {
    public static final String KEY_HAS_GUIDE_SHOWN = "has_story_double_tap_guide_shown";

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected int getLayoutId() {
        return R.layout.story_guide_double_tap_view_layout;
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected String getPrefKey() {
        return KEY_HAS_GUIDE_SHOWN;
    }

    public StoryGuideViewDoubleTap(Context context) {
        super(context);
    }

    @Override // com.narvii.story.widgets.GuideViewHelper.BaseGuideView
    protected void init() {
        super.init();
        ((NVImageView) findViewById(R.id.story_guide_double_tap_icon)).setImageUrl("assets://story_guide_double_tap.webp");
        Utils.postDelayed(new Runnable() { // from class: com.narvii.story.widgets.StoryGuideViewDoubleTap.1
            @Override // java.lang.Runnable
            public void run() {
                StoryGuideViewDoubleTap.this.hideGuide();
            }
        }, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
    }
}
