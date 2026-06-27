package com.narvii.monetization.sticker.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.model.Sticker;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StickerImageView extends NVImageView {
    StickerCacheService stickerCacheService;

    public StickerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(getContext()).getService("stickerCache");
        setShowPressedMask(false);
    }

    public void setSticker(Sticker sticker) {
        if (sticker == null) {
            setImageUrl(null);
        } else {
            setStickerImageUrl(sticker.stickerCollectionId, sticker.icon);
        }
    }

    public void setStickerImageUrl(String str, String str2) {
        if (str2 == null) {
            setImageUrl(null);
            return;
        }
        if (str2.startsWith("file://") || str2.startsWith("assets://") || str2.startsWith("res://")) {
            setImageUrl(str2);
            return;
        }
        String localUri = this.stickerCacheService.getLocalUri(str, str2);
        if (localUri == null) {
            setImageUrl(str2);
        } else {
            setImageUrl(localUri);
        }
    }
}
