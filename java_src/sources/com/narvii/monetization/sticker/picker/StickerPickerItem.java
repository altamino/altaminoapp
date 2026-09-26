package com.narvii.monetization.sticker.picker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;
import com.narvii.sticker.StickerCacheService;
import com.narvii.sticker.StickerStatusChangeListener;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public class StickerPickerItem extends FrameLayout implements StickerStatusChangeListener {
    Sticker currentSticker;
    View disabled;
    View error;
    boolean selected;
    View selectedView;
    StickerCacheService stickerCacheService;
    NVImageView thumbnail;

    public void setSticker(Sticker sticker, boolean z6, boolean z10) {
        this.currentSticker = sticker;
        this.selected = z6;
        ViewUtils.show(this.selectedView, z6);
        ViewUtils.show(this.disabled, sticker.isDisabled());
        if (z10) {
            this.stickerCacheService.observeStickerStatusChange(sticker, this);
            return;
        }
        String thumbnailUri = this.stickerCacheService.getThumbnailUri(sticker);
        if (thumbnailUri == null) {
            thumbnailUri = sticker.thumbnail;
        }
        this.thumbnail.setImageUrl(thumbnailUri);
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

    public StickerPickerItem(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(context).getService("stickerCache");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z6) {
        super.dispatchSetPressed(z6);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        NVImageView nVImageView = (NVImageView) findViewById(R.id.thumbnail);
        this.thumbnail = nVImageView;
        nVImageView.setShowPressedMask(false);
        this.selectedView = findViewById(R.id.selected);
        this.error = findViewById(R.id.error);
        this.disabled = findViewById(R.id.disabled);
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
    }

    public void setSticker(Sticker sticker, boolean z6) {
        setSticker(sticker, z6, true);
    }
}
