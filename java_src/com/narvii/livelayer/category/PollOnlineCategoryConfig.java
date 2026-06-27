package com.narvii.livelayer.category;

import com.narvii.amino.mastes.R;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailPollFragment;

/* loaded from: classes3.dex */
public class PollOnlineCategoryConfig implements OnlineCategoryConfig {
    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int color() {
        return -11890462;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int iconId() {
        return R.drawable.online_category_poll;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String listApiName() {
        return "polls";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleBackgroundColor() {
        return -16724355;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleId() {
        return R.string.live_layer_pollmember_list_title_hint;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int titleId() {
        return R.string.online_poll;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String topicName() {
        return "users-polling-polls";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public Class<? extends LiveLayerDetailBaseFragment> targetFragment() {
        return LiveLayerDetailPollFragment.class;
    }
}
