package com.narvii.monetization.store.data;

import android.content.Context;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class StoreItemStubStickCollection extends StoreItemStub {
    private MoodStickerCollection ref;

    public StoreItemStubStickCollection(Context context) {
        this.refObjectType = 114;
        this.ref = new MoodStickerCollection(context);
        this.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(this.ref);
        this.itemBasicInfo = new StoreItem.ItemBasicInfo();
        StoreItem.ItemBasicInfo itemBasicInfo = this.itemBasicInfo;
        MoodStickerCollection moodStickerCollection = this.ref;
        itemBasicInfo.icon = moodStickerCollection.icon;
        itemBasicInfo.name = moodStickerCollection.name;
        this.itemRestrictionInfo = new RestrictionInfo();
        this.itemRestrictionInfo.restrictType = 3;
    }

    @Override // com.narvii.monetization.store.data.StoreItem
    public NVObject getRefObject() {
        return this.ref;
    }
}
