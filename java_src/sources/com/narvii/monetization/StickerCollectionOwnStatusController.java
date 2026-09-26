package com.narvii.monetization;

import android.content.Context;
import android.content.Intent;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.monetization.bubble.PickChatThreadListFragment;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.cache.StickerCollectionDownloader;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class StickerCollectionOwnStatusController extends StoreItemOwnStatusController {
    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        super(nVContext, storeItemStatusView);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean canUseInGlobal() {
        return true;
    }

    protected boolean disableRefreshMyCollectionList() {
        return false;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedStrId(boolean z6) {
        return z6 ? R.string.send_stickers : R.string.send;
    }

    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z6) {
        super(nVContext, storeItemStatusView, z6);
    }

    private boolean isUserCreatedStickerCollection() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof StickerCollection) {
            return ((StickerCollection) iStoreItem).isUserCreated();
        }
        return false;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean anyOneCanGet() {
        IStoreItem iStoreItem = this.iStoreItem;
        return iStoreItem instanceof StickerCollection ? ((StickerCollection) iStoreItem).isUserCreated() : super.anyOneCanGet();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected ApiRequest createActivateRequest() {
        return new ApiRequest.Builder().path("sticker-collection/" + this.iStoreItem.id() + "/activate").post().build();
    }

    public StickerCollectionOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z6, boolean z10) {
        super(nVContext, storeItemStatusView, z6, z10);
    }

    private void refreshMyCollectionList() {
        if (disableRefreshMyCollectionList()) {
            return;
        }
        ((StickerService) this.nvContext.getService("sticker")).refreshStickerCollectionInfo(true);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivateDrawableId() {
        if (isUserCreatedStickerCollection()) {
            return R.drawable.selector_actvite_green_round_ugc_sticker;
        }
        return super.getActivateDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivateStrId(boolean z6) {
        if (isUserCreatedStickerCollection()) {
            if (z6) {
                return R.string.add_to_keyboard;
            }
            return R.string.add;
        }
        return super.getActivateStrId(z6);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedDrawableId() {
        if (isUserCreatedStickerCollection()) {
            return R.drawable.selector_actvite_green_stroke;
        }
        return super.getActivatedDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedTextColorId() {
        if (isUserCreatedStickerCollection()) {
            return R.color.selector_store_item_text_green;
        }
        return super.getActivatedTextColorId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedToastTextId() {
        if (isUserCreatedStickerCollection()) {
            return R.string.added;
        }
        return super.getActivatedToastTextId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getDownloadProgressDrawableId() {
        if (isUserCreatedStickerCollection()) {
            return R.drawable.store_item_downloading_progress_green;
        }
        return super.getDownloadProgressDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getGetDrawableId() {
        if (isUserCreatedStickerCollection()) {
            return R.drawable.selector_actvite_green_round_ugc_sticker;
        }
        return super.getGetDrawableId();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getGetStrId(boolean z6) {
        if (isUserCreatedStickerCollection()) {
            if (z6) {
                return R.string.add_to_keyboard;
            }
            return R.string.add;
        }
        return super.getGetStrId(z6);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onActivated(boolean z6) {
        super.onActivated(z6);
        if (!z6) {
            refreshMyCollectionList();
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void onPurchaseSuccess(NVObject nVObject) {
        refreshMyCollectionList();
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof StickerCollection) {
            StickerCollection stickerCollection = (StickerCollection) iStoreItem;
            if (stickerCollection.stickerList != null) {
                new StickerCollectionDownloader(this.nvContext).downloadStickerCollection(stickerCollection, new StickerCollectionDownloader.StickerCollectionDownloadListener() { // from class: com.narvii.monetization.StickerCollectionOwnStatusController.1
                    @Override // com.narvii.monetization.sticker.cache.StickerCollectionDownloader.StickerCollectionDownloadListener
                    public void onFinished() {
                        StickerCollectionOwnStatusController.this.onActivated();
                    }

                    @Override // com.narvii.monetization.sticker.cache.StickerCollectionDownloader.StickerCollectionDownloadListener
                    public void onProgressUpdate(float f) {
                        StickerCollectionOwnStatusController.this.updateDownloadingProgress((int) (f * 100.0f));
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
    protected void useItem() {
        super.useItem();
        Intent intent = FragmentWrapperActivity.intent(PickChatThreadListFragment.class);
        intent.putExtra("stickerCollectionId", this.iStoreItem.id());
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.nvContext.getContext(), intent);
    }
}
