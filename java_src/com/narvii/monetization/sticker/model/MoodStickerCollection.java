package com.narvii.monetization.sticker.model;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;

/* loaded from: classes3.dex */
public class MoodStickerCollection extends StickerCollection {
    public static final String MOOD_COLLECTION_ID = "mood";

    public MoodStickerCollection() {
        this.collectionId = MOOD_COLLECTION_ID;
        this.icon = "res://icon_mood_sticker_collection";
        this.smallIcon = "res://icon_small_mood_sticker_collection";
        this.bannerUrl = "res://mood_sticker_collection_banner";
        this.isActivated = true;
        this.ownershipInfo = new OwnershipInfo();
        this.ownershipInfo.ownershipStatus = 1;
        this.restrictionInfo = new RestrictionInfo();
        this.restrictionInfo.restrictType = 3;
    }

    public MoodStickerCollection(Context context) {
        this();
        this.name = context.getString(R.string.mood_sticker_collection_name);
        this.description = context.getString(R.string.mood_sticker_collection_desc);
    }

    @Override // com.narvii.monetization.sticker.model.StickerCollection
    public String getBannerUrl() {
        return super.getBannerUrl();
    }
}
