package com.narvii.livelayer.category;

import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailVoteFragment;

/* JADX INFO: loaded from: classes9.dex */
public class VoteOnlineCategoryConfig implements OnlineCategoryConfig {
    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int color() {
        return -501929;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int iconId() {
        return R.drawable.online_category_vote;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String listApiName() {
        return "voting-blogs";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleBackgroundColor() {
        return -16724355;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleId() {
        return R.string.live_layer_votemember_list_title_hint;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public Class<? extends LiveLayerDetailBaseFragment> targetFragment() {
        return LiveLayerDetailVoteFragment.class;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int titleId() {
        return R.string.online_category_vote;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String topicName() {
        return "users-voting-blogs";
    }
}
