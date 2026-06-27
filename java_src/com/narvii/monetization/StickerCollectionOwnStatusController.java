package com.narvii.monetization;

import android.content.Intent;
import android.content.res.Resources;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.monetization.bubble.PickChatThreadListFragment;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.cache.StickerCollectionDownloader;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class StickerCollectionOwnStatusController extends StoreItemOwnStatusController {
    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean canUseInGlobal() {
        return true;
    }

    protected boolean disableRefreshMyCollectionList() {
        return false;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedStrId(boolean z) {
        return z ? R.string.send_stickers : R.string.send;
    }

    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        super(nVContext, storeItemStatusView);
    }

    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z) {
        super(nVContext, storeItemStatusView, z);
    }

    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z, boolean z2) {
        super(nVContext, storeItemStatusView, z, z2);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivateStrId(boolean z) {
        if (isUserCreatedStickerCollection()) {
            return z ? R.string.add_to_keyboard : R.string.add;
        }
        return super.getActivateStrId(z);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getGetStrId(boolean z) {
        if (isUserCreatedStickerCollection()) {
            return z ? R.string.add_to_keyboard : R.string.add;
        }
        return super.getGetStrId(z);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean anyOneCanGet() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof StickerCollection) {
            return ((StickerCollection) iStoreItem).isUserCreated();
        }
        return super.anyOneCanGet();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getGetDrawableId() {
        return isUserCreatedStickerCollection() ? R.drawable.selector_actvite_green_round_ugc_sticker : super.getGetDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivateDrawableId() {
        return isUserCreatedStickerCollection() ? R.drawable.selector_actvite_green_round_ugc_sticker : super.getActivateDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedDrawableId() {
        return isUserCreatedStickerCollection() ? R.drawable.selector_actvite_green_stroke : super.getActivatedDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedTextColorId() {
        return isUserCreatedStickerCollection() ? R.color.selector_store_item_text_green : super.getActivatedTextColorId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getDownloadProgressDrawableId() {
        return isUserCreatedStickerCollection() ? R.drawable.store_item_downloading_progress_green : super.getDownloadProgressDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedToastTextId() {
        return isUserCreatedStickerCollection() ? R.string.added : super.getActivatedToastTextId();
    }

    private boolean isUserCreatedStickerCollection() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof StickerCollection) {
            return ((StickerCollection) iStoreItem).isUserCreated();
        }
        return false;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void onPurchaseSuccess(NVObject nVObject) throws Resources.NotFoundException {
        refreshMyCollectionList();
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof StickerCollection) {
            StickerCollection stickerCollection = (StickerCollection) iStoreItem;
            if (stickerCollection.stickerList != null) {
                new StickerCollectionDownloader(this.nvContext).downloadStickerCollection(stickerCollection, new StickerCollectionDownloader.StickerCollectionDownloadListener() { // from class: com.narvii.monetization.StickerCollectionOwnStatusController.1
                    @Override // com.narvii.monetization.sticker.cache.StickerCollectionDownloader.StickerCollectionDownloadListener
                    public void onProgressUpdate(float f) {
                        StickerCollectionOwnStatusController.this.updateDownloadingProgress((int) (f * 100.0f));
                    }

                    @Override // com.narvii.monetization.sticker.cache.StickerCollectionDownloader.StickerCollectionDownloadListener
                    public void onFinished() throws Resources.NotFoundException {
                        StickerCollectionOwnStatusController.this.onActivated();
                    }
                });
                return;
            } else {
                onActivated();
                return;
            }
        }
        onActivated();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onActivated(boolean z) throws Resources.NotFoundException {
        super.onActivated(z);
        if (z) {
            return;
        }
        refreshMyCollectionList();
    }

    private void refreshMyCollectionList() {
        if (disableRefreshMyCollectionList()) {
            return;
        }
        ((StickerService) this.nvContext.getService("sticker")).refreshStickerCollectionInfo(true);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected ApiRequest createActivateRequest() {
        return new ApiRequest.Builder().path("sticker-collection/" + this.iStoreItem.id() + "/activate").post().build();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void useItem() {
        super.useItem();
        Intent intent = FragmentWrapperActivity.intent(PickChatThreadListFragment.class);
        intent.putExtra("stickerCollectionId", this.iStoreItem.id());
        this.nvContext.getContext().startActivity(intent);
    }
}
