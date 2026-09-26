package com.narvii.media.giphy;

import com.narvii.media.IEditorSticker;
import com.narvii.model.NVObject;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class GiphyItem extends NVObject implements IEditorSticker {
    public String id;
    public GiphyImages images;
    public String packId;
    public int stickerStatus = 0;
    public String type;

    @Override // com.narvii.media.IEditorSticker
    @Nullable
    public String collectionId() {
        return this.packId;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

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

    @Override // com.narvii.media.IEditorSticker
    public int stickerStatus() {
        return this.stickerStatus;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public GiphyImage fullsizeImage(int i10) {
        int i11;
        GiphyImages giphyImages = this.images;
        GiphyImage giphyImage = null;
        if (giphyImages == null) {
            return null;
        }
        GiphyImage[] giphyImageArr = {giphyImages.original, giphyImages.fixed_width, giphyImages.fixed_height, giphyImages.fixed_width_downsampled, giphyImages.fixed_height_downsampled};
        int i12 = 0;
        for (int i13 = 0; i13 < 5; i13++) {
            GiphyImage giphyImage2 = giphyImageArr[i13];
            if (giphyImage2 != null && (i11 = giphyImage2.size) <= i10 && i11 > i12) {
                giphyImage = giphyImage2;
                i12 = i11;
            }
        }
        return giphyImage == null ? this.images.original : giphyImage;
    }

    public String thumbUrl() {
        GiphyImages giphyImages = this.images;
        if (giphyImages == null) {
            return null;
        }
        GiphyImage[] giphyImageArr = {giphyImages.original, giphyImages.fixed_width, giphyImages.fixed_height, giphyImages.fixed_width_downsampled, giphyImages.fixed_height_downsampled};
        GiphyImage giphyImage = null;
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            GiphyImage giphyImage2 = giphyImageArr[i11];
            if (giphyImage2 != null && (giphyImage == null || giphyImage2.size < i10)) {
                i10 = giphyImage2.size;
                giphyImage = giphyImage2;
            }
        }
        if (giphyImage == null) {
            return null;
        }
        return giphyImage.url;
    }
}
