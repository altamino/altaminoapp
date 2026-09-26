package com.narvii.monetization.sticker.model;

import android.content.Context;
import com.narvii.amino.master.R;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;

/* JADX INFO: loaded from: classes11.dex */
public class MoodStickerCollection extends StickerCollection {
    public static final String MOOD_COLLECTION_ID = "mood";

    public MoodStickerCollection() {
        this.collectionId = MOOD_COLLECTION_ID;
        this.icon = "res://icon_mood_sticker_collection";
        this.smallIcon = "res://icon_small_mood_sticker_collection";
        this.bannerUrl = "res://mood_sticker_collection_banner";
        this.isActivated = true;
        OwnershipInfo ownershipInfo = new OwnershipInfo();
        this.ownershipInfo = ownershipInfo;
        ownershipInfo.ownershipStatus = 1;
        RestrictionInfo restrictionInfo = new RestrictionInfo();
        this.restrictionInfo = restrictionInfo;
        restrictionInfo.restrictType = 3;
    }

    @Override // com.narvii.monetization.sticker.model.StickerCollection
    public String getBannerUrl() {
        return super.getBannerUrl();
    }

    public MoodStickerCollection(Context context) {
        this();
        this.name = context.getString(R.string.mood_sticker_collection_name);
        this.description = context.getString(R.string.mood_sticker_collection_desc);
    }
}
