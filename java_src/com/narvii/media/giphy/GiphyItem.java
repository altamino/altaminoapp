package com.narvii.media.giphy;

import com.narvii.media.IEditorSticker;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class GiphyItem extends NVObject implements IEditorSticker {
    public String id;
    public GiphyImages images;
    public String packId;
    public int stickerStatus = 0;
    public String type;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public String thumbUrl() {
        GiphyImages giphyImages = this.images;
        if (giphyImages == null) {
            return null;
        }
        GiphyImage[] giphyImageArr = {giphyImages.original, giphyImages.fixed_width, giphyImages.fixed_height, giphyImages.fixed_width_downsampled, giphyImages.fixed_height_downsampled};
        GiphyImage giphyImage = null;
        int i = 0;
        for (GiphyImage giphyImage2 : giphyImageArr) {
            if (giphyImage2 != null && (giphyImage == null || giphyImage2.size < i)) {
                i = giphyImage2.size;
                giphyImage = giphyImage2;
            }
        }
        if (giphyImage == null) {
            return null;
        }
        return giphyImage.url;
    }

    public GiphyImage fullsizeImage(int i) {
        int i2;
        GiphyImages giphyImages = this.images;
        GiphyImage giphyImage = null;
        if (giphyImages == null) {
            return null;
        }
        GiphyImage[] giphyImageArr = {giphyImages.original, giphyImages.fixed_width, giphyImages.fixed_height, giphyImages.fixed_width_downsampled, giphyImages.fixed_height_downsampled};
        int i3 = 0;
        for (GiphyImage giphyImage2 : giphyImageArr) {
            if (giphyImage2 != null && (i2 = giphyImage2.size) <= i && i2 > i3) {
                giphyImage = giphyImage2;
                i3 = i2;
            }
        }
        return giphyImage == null ? this.images.original : giphyImage;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.media.IEditorSticker
    public String collectionId() {
        return this.packId;
    }

    @Override // com.narvii.media.IEditorSticker
    public int stickerStatus() {
        return this.stickerStatus;
    }
}
