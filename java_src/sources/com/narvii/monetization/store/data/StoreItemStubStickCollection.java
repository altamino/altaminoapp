package com.narvii.monetization.store.data;

import android.content.Context;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes9.dex */
public class StoreItemStubStickCollection extends StoreItemStub {
    private MoodStickerCollection ref;

    @Override // com.narvii.monetization.store.data.StoreItem
    public NVObject getRefObject() {
        return this.ref;
    }

    public StoreItemStubStickCollection(Context context) {
        this.refObjectType = 114;
        MoodStickerCollection moodStickerCollection = new MoodStickerCollection(context);
        this.ref = moodStickerCollection;
        this.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(moodStickerCollection);
        StoreItem.ItemBasicInfo itemBasicInfo = new StoreItem.ItemBasicInfo();
        this.itemBasicInfo = itemBasicInfo;
        MoodStickerCollection moodStickerCollection2 = this.ref;
        itemBasicInfo.icon = moodStickerCollection2.icon;
        itemBasicInfo.name = moodStickerCollection2.name;
        RestrictionInfo restrictionInfo = new RestrictionInfo();
        this.itemRestrictionInfo = restrictionInfo;
        restrictionInfo.restrictType = 3;
    }
}
