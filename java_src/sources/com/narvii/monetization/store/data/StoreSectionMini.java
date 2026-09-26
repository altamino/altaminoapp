package com.narvii.monetization.store.data;

import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public class StoreSectionMini {
    public String name;
    public String sectionGroupId;
    public String storeSectionId;

    public int icon() {
        String str = this.sectionGroupId;
        str.hashCode();
        switch (str) {
            case "avatar-frame":
                return R.drawable.ic_monetization_store_avatar_frame;
            case "sticker":
                return R.drawable.ic_monetization_store_sticker;
            case "prop":
                return R.drawable.ic_monetization_store_prop;
            case "chat-bubble":
                return R.drawable.ic_monetization_store_chat_bubble;
            default:
                return 0;
        }
    }
}
