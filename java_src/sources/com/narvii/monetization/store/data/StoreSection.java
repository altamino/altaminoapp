package com.narvii.monetization.store.data;

import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment;
import com.narvii.monetization.store.MonetizationStoreSectionDetailFragment;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class StoreSection extends StoreSectionMini {
    public static final String GROUP_TYPE_AVATAR_FRAME = "avatar-frame";
    public static final String GROUP_TYPE_CHAT_BUBBLE = "chat-bubble";
    public static final String GROUP_TYPE_PROP = "prop";
    public static final String GROUP_TYPE_STICKER = "sticker";
    public int allItemsCount;
    public List<StoreItem> previewStoreItemList;

    public static Class<? extends Fragment> getSectionFragment(String str) {
        return TextUtils.equals(str, GROUP_TYPE_AVATAR_FRAME) ? MonetizationStoreAvatarFrameFragment.class : MonetizationStoreSectionDetailFragment.class;
    }

    @Override // com.narvii.monetization.store.data.StoreSectionMini
    public int icon() {
        return super.icon();
    }
}
