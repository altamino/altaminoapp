package com.narvii.monetization.store.data;

import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment;
import com.narvii.monetization.store.MonetizationStoreSectionDetailFragment;
import java.util.List;

/* loaded from: classes3.dex */
public class StoreSection extends StoreSectionMini {
    public static final String GROUP_TYPE_AVATAR_FRAME = "avatar-frame";
    public static final String GROUP_TYPE_CHAT_BUBBLE = "chat-bubble";
    public static final String GROUP_TYPE_PROP = "prop";
    public static final String GROUP_TYPE_STICKER = "sticker";
    public int allItemsCount;
    public List<StoreItem> previewStoreItemList;

    @Override // com.narvii.monetization.store.data.StoreSectionMini
    public int icon() {
        return super.icon();
    }

    public static Class<? extends Fragment> getSectionFragment(String str) {
        if (TextUtils.equals(str, GROUP_TYPE_AVATAR_FRAME)) {
            return MonetizationStoreAvatarFrameFragment.class;
        }
        return MonetizationStoreSectionDetailFragment.class;
    }
}
