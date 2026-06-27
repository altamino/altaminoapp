package com.narvii.livelayer.category;

import com.narvii.amino.mastes.R;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment;

/* loaded from: classes3.dex */
public class ChatCategoryConfig implements OnlineCategoryConfig {
    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int color() {
        return -16731649;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public int iconId() {
        return R.drawable.online_category_chat;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String listApiName() {
        return "public-chats";
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
        return R.string.online_chatting;
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public String topicName() {
        return "users-chatting";
    }

    @Override // com.narvii.livelayer.category.OnlineCategoryConfig
    public Class<? extends LiveLayerDetailBaseFragment> targetFragment() {
        return LiveLayerDetailChattingFragment.class;
    }
}
