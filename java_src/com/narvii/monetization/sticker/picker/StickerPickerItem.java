package com.narvii.monetization.sticker.picker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;
import com.narvii.sticker.StickerCacheService;
import com.narvii.sticker.StickerStatusChangeListener;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StickerPickerItem extends FrameLayout implements StickerStatusChangeListener {
    Sticker currentSticker;
    View disabled;
    View error;
    boolean selected;
    View selectedView;
    StickerCacheService stickerCacheService;
    NVImageView thumbnail;

    public StickerPickerItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(context).getService("stickerCache");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.thumbnail = (NVImageView) findViewById(R.id.thumbnail);
        this.thumbnail.setShowPressedMask(false);
        this.selectedView = findViewById(R.id.selected);
        this.error = findViewById(R.id.error);
        this.disabled = findViewById(R.id.disabled);
    }

    public void setSticker(Sticker sticker, boolean z, boolean z2) {
        this.currentSticker = sticker;
        this.selected = z;
        ViewUtils.show(this.selectedView, z);
        ViewUtils.show(this.disabled, sticker.isDisabled());
        if (z2) {
            this.stickerCacheService.observeStickerStatusChange(sticker, this);
            return;
        }
        String thumbnailUri = this.stickerCacheService.getThumbnailUri(sticker);
        if (thumbnailUri == null) {
            thumbnailUri = sticker.thumbnail;
        }
        this.thumbnail.setImageUrl(thumbnailUri);
    }

    public void setSticker(Sticker sticker, boolean z) {
        setSticker(sticker, z, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
        super.dispatchSetPressed(z);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
    }

    @Override // com.narvii.sticker.StickerStatusChangeListener
    public void onStatusChanged(Sticker sticker, DownloadStatusInfo downloadStatusInfo) {
        Sticker sticker2;
        if (sticker == null || (sticker2 = this.currentSticker) == null || !Utils.isEqualsNotNull(sticker2.id(), sticker.id())) {
            return;
        }
        this.thumbnail.setImageUrl(this.stickerCacheService.getThumbnailUri(sticker));
        ViewUtils.show(this.error, downloadStatusInfo.status == -1);
    }
}
