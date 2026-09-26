package com.narvii.monetization.avatarframe;

import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes7.dex */
public class AvatarFrameOwnStatusController extends StoreItemOwnStatusController implements AvatarFrameHelper.OnAvatarFrameChangedListener {
    private AccountService accountService;
    private AvatarFrameHelper avatarFrameHelper;
    private final NVContext nvContext;

    public AvatarFrameOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        this(nVContext, storeItemStatusView, true);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean canUseInGlobal() {
        return true;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected ApiRequest createActivateRequest() {
        return null;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedStrId(boolean z6) {
        return R.string.use_it;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean hasProgressBar() {
        return false;
    }

    public AvatarFrameOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z6) {
        super(nVContext, storeItemStatusView, z6);
        this.nvContext = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        AvatarFrameHelper avatarFrameHelper = new AvatarFrameHelper(nVContext);
        this.avatarFrameHelper = avatarFrameHelper;
        avatarFrameHelper.source = "Store Product Detail Page";
        avatarFrameHelper.setAvatarFrameListener(this);
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getStoreItemStatus(IStoreItem iStoreItem) {
        if (iStoreItem instanceof AvatarFrame) {
            AvatarFrame avatarFrame = (AvatarFrame) iStoreItem;
            User userProfile = this.accountService.getUserProfile();
            if (userProfile != null && Utils.isIdEquals(avatarFrame, userProfile.avatarFrame)) {
                return 6;
            }
        }
        return super.getStoreItemStatus(iStoreItem);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameHelper.OnAvatarFrameChangedListener
    public void onAvatarFrameChanged() {
        StoreItemStatusView storeItemStatusView = this.storeItemStatusView;
        if (storeItemStatusView != null) {
            storeItemStatusView.updateStatus(6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void onPurchaseSuccess(NVObject nVObject) {
        if (nVObject instanceof IStoreItem) {
            setStoreItemInner((IStoreItem) nVObject);
        }
        if (this.iStoreItem instanceof AvatarFrame) {
            onActivated();
        } else {
            onActivated();
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void useItem() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof AvatarFrame) {
            this.avatarFrameHelper.showAvatarSetDialog((AvatarFrame) iStoreItem, this.isGlobalSpace);
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onActivated(boolean z6) {
        super.onActivated(z6);
        if (this.iStoreItem instanceof AvatarFrame) {
            ((NotificationCenter) this.nvContext.getService("notification")).sendNotification(new Notification("update", (NVObject) this.iStoreItem));
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onCreate() {
        super.onCreate();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void updateViewStatus() {
        super.updateViewStatus();
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem != null && !(iStoreItem instanceof DefaultAvatarFrame) && !(iStoreItem instanceof StubCurrentAvatarFrame)) {
            this.storeItemStatusView.setVisibility(0);
        } else {
            this.storeItemStatusView.setVisibility(8);
        }
    }
}
