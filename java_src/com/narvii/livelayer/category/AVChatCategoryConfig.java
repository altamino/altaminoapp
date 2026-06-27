package com.narvii.livelayer.category;

import com.narvii.amino.mastes.R;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailVvChattingFragment;

/* loaded from: classes3.dex */
public class AVChatCategoryConfig implements OnlineCategoryConfig {
    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int color() {
        return -14103485;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int iconId() {
        return R.drawable.online_category_avchat;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String listApiName() {
        return "public-vv-chats";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleBackgroundColor() {
        return -16724355;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int membersTitleId() {
        return R.string.live_layer_chattingmember_list_title_hint;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int titleId() {
        return R.string.voice_or_video_chatting;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String topicName() {
        return "users-vv-chatting";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public Class<? extends LiveLayerDetailBaseFragment> targetFragment() {
        return LiveLayerDetailVvChattingFragment.class;
    }
}
