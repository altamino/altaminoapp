package com.narvii.monetization.sticker.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.sticker.StickerCacheService;
import com.narvii.sticker.StickerFileDownloadListener;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StickerCacheImageView extends NVImageView implements StickerFileDownloadListener {
    String currentCollectionId;
    String currentImageUrl;
    StickerCacheService stickerCacheService;

    public StickerCacheImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(getContext()).getService("stickerCache");
        this.defaultDrawable = new ColorDrawable(ContextCompat.getColor(getContext(), R.color.sticker_placeholder));
        this.scalePlaceholder = true;
        setShowPressedMask(false);
    }

    public void setStickerImageUrl(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        if (str2.startsWith("file://") || str2.startsWith("assets://") || str2.startsWith("res://")) {
            setImageUrl(str2);
            return;
        }
        this.currentCollectionId = str;
        this.currentImageUrl = str2;
        this.stickerCacheService.observeFileStatusChange(str, str2, this);
    }

    @Override // com.narvii.sticker.StickerFileDownloadListener
    public void onStatusChanged(String str, String str2, DownloadStatusInfo downloadStatusInfo) {
        if (Utils.isEqualsNotNull(this.currentCollectionId, str) && Utils.isEqualsNotNull(str2, this.currentImageUrl)) {
            if (downloadStatusInfo.isReady()) {
                setImageUrl(this.stickerCacheService.getLocalUri(str, str2));
            } else {
                setImageDrawable(this.defaultDrawable);
            }
        }
    }
}
