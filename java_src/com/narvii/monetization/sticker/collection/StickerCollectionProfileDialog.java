package com.narvii.monetization.sticker.collection;

import android.content.res.Resources;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.monetization.store.StoreItemGetterDialog;
import com.narvii.monetization.utils.StoreItemNameView;

/* loaded from: classes3.dex */
public class StickerCollectionProfileDialog extends StoreItemGetterDialog {
    @Override // com.narvii.monetization.store.StoreItemGetterDialog
    protected int getContentViewLayout() {
        return R.layout.dialog_sticker_collection_profile;
    }

    public StickerCollectionProfileDialog(NVContext nVContext, StickerCollection stickerCollection) {
        super(nVContext, stickerCollection);
        ((StickerCacheImageView) findViewById(R.id.collection_icon)).setStickerImageUrl(stickerCollection.id(), stickerCollection.icon);
        ((StoreItemNameView) findViewById(R.id.sticker_collection_name)).setStoreItem(stickerCollection);
        ((TextView) findViewById(R.id.collection_desc)).setText(stickerCollection.getDescription());
    }

    @Override // com.narvii.monetization.store.StoreItemGetterDialog
    protected StoreItemOwnStatusController getStoreItemOwnStatusController(StoreItemStatusView storeItemStatusView) {
        return new StickerCollectionOwnStatusController(this.context, storeItemStatusView) { // from class: com.narvii.monetization.sticker.collection.StickerCollectionProfileDialog.1
            @Override // com.narvii.monetization.StoreItemOwnStatusController
            protected boolean updateViewsWhenActivated() {
                return false;
            }

            @Override // com.narvii.monetization.StickerCollectionOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
            public void onActivated(boolean z) throws Resources.NotFoundException {
                super.onActivated(z);
                StickerCollectionProfileDialog.this.dismiss();
            }

            @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
            public void onShowPurchaseDialog() {
                super.onShowPurchaseDialog();
                StickerCollectionProfileDialog.this.dismiss();
            }
        };
    }
}
