package com.narvii.livelayer.category;

import com.narvii.amino.mastes.R;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailScreenRoomFragment;

/* loaded from: classes3.dex */
public class ScreenRoomCategoryConfig implements OnlineCategoryConfig {
    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int color() {
        return -13543989;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int iconId() {
        return R.drawable.online_category_screen_room;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String listApiName() {
        return "public-watching-videos";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleBackgroundColor() {
        return -16724355;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleId() {
        return R.string.live_layer_watching_video_title_hint;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int titleId() {
        return R.string.watching_videos;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String topicName() {
        return "users-watching-videos";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public Class<? extends LiveLayerDetailBaseFragment> targetFragment() {
        return LiveLayerDetailScreenRoomFragment.class;
    }
}
