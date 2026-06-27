package com.narvii.monetization.avatarframe;

import android.content.res.Resources;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.avatarframe.AvatarFrameHelper;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class AvatarFrameOwnStatusController extends StoreItemOwnStatusController implements AvatarFrameHelper.OnAvatarFrameChangedListener {
    private AccountService accountService;
    private AvatarFrameHelper avatarFrameHelper;
    private final NVContext nvContext;

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean canUseInGlobal() {
        return true;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected ApiRequest createActivateRequest() {
        return null;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected int getActivatedStrId(boolean z) {
        return R.string.use_it;
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected boolean hasProgressBar() {
        return false;
    }

    public AvatarFrameOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        this(nVContext, storeItemStatusView, true);
    }

    public AvatarFrameOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z) {
        super(nVContext, storeItemStatusView, z);
        this.nvContext = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        this.avatarFrameHelper = new AvatarFrameHelper(nVContext);
        AvatarFrameHelper avatarFrameHelper = this.avatarFrameHelper;
        avatarFrameHelper.source = "Store Product Detail Page";
        avatarFrameHelper.setAvatarFrameListener(this);
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
        if (iStoreItem == null || (iStoreItem instanceof DefaultAvatarFrame) || (iStoreItem instanceof StubCurrentAvatarFrame)) {
            this.storeItemStatusView.setVisibility(8);
        } else {
            this.storeItemStatusView.setVisibility(0);
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

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    public void onActivated(boolean z) throws Resources.NotFoundException {
        super.onActivated(z);
        Object obj = this.iStoreItem;
        if (obj instanceof AvatarFrame) {
            ((NotificationCenter) this.nvContext.getService("notification")).sendNotification(new Notification("update", (NVObject) obj));
        }
    }

    @Override // com.narvii.monetization.StoreItemOwnStatusController
    protected void useItem() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem instanceof AvatarFrame) {
            this.avatarFrameHelper.showAvatarSetDialog((AvatarFrame) iStoreItem, this.isGlobalSpace);
        }
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameHelper.OnAvatarFrameChangedListener
    public void onAvatarFrameChanged() {
        StoreItemStatusView storeItemStatusView = this.storeItemStatusView;
        if (storeItemStatusView != null) {
            storeItemStatusView.updateStatus(6);
        }
    }
}
