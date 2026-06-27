package com.narvii.monetization.sticker.post;

import com.narvii.model.Sticker;

/* loaded from: classes3.dex */
public class StickerPost {
    public String icon;
    public String name;
    public Sticker originalSticker;
    public Sticker sticker;

    public StickerPost() {
    }

    public StickerPost(Sticker sticker, String str) {
        this.sticker = sticker;
        this.name = str;
    }

    public String getIconPreviewUrl() {
        Sticker sticker = this.originalSticker;
        if (sticker != null) {
            return sticker.icon;
        }
        String str = this.icon;
        if (str != null) {
            return str;
        }
        Sticker sticker2 = this.sticker;
        if (sticker2 != null) {
            return sticker2.icon;
        }
        return null;
    }
}
