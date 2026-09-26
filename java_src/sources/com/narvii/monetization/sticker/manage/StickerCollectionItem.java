package com.narvii.monetization.sticker.manage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.monetization.sticker.widget.StickerCollectionSourceView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes11.dex */
public class StickerCollectionItem extends FrameLayout {
    View mainLayout;
    View notAvailableMark;
    StickerCollectionSourceView sourceView;
    StickerCacheImageView stickerCacheImageView;
    StickerHelper stickerHelper;
    StoreItemNameView storeItemNameView;
    View subtitle;

    public void setStickerCollection(StickerCollection stickerCollection) {
        this.stickerCacheImageView.setStickerImageUrl(stickerCollection.collectionId, stickerCollection.smallIcon);
        this.storeItemNameView.setStoreItem(stickerCollection);
        ViewUtils.show(this.subtitle, stickerCollection instanceof MoodStickerCollection);
        this.sourceView.setStickerCollection(stickerCollection);
        this.mainLayout.setAlpha(this.stickerHelper.greyStickerCollection(stickerCollection) ? 1.0f : 0.5f);
        ViewUtils.show(this.notAvailableMark, stickerCollection.notAvailable());
    }

    public StickerCollectionItem(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerHelper = new StickerHelper(Utils.getNVContext(getContext()));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.stickerCacheImageView = (StickerCacheImageView) findViewById(R.id.collection_icon);
        this.storeItemNameView = (StoreItemNameView) findViewById(R.id.sticker_collection_name);
        this.subtitle = findViewById(R.id.subtitle);
        this.mainLayout = findViewById(R.id.collection_layout_main);
        this.sourceView = (StickerCollectionSourceView) findViewById(R.id.source_view);
        this.notAvailableMark = findViewById(R.id.not_available_mark);
    }
}
