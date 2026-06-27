package com.narvii.monetization;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.store.StoreItemPurchaseHelper;
import com.narvii.monetization.store.SuggestUpdateDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class StoreItemOwnStatusController implements StoreItemStatusView.ViewClickListener, StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener {
    boolean bigStyle;
    protected IStoreItem iStoreItem;
    boolean ignoreGlobalSope;
    protected final boolean isGlobalSpace;
    private LocalBroadcastManager localBroadcastManager;
    private MembershipService membershipService;
    NVContext nvContext;
    private BroadcastReceiver receiver;
    public String source;
    private StoreItemPurchaseHelper storeItemPurchaseHelper;
    protected StoreItemStatusView storeItemStatusView;

    private void statistics(IStoreItem iStoreItem) {
    }

    protected boolean anyOneCanGet() {
        return false;
    }

    protected boolean canUseInGlobal() {
        return false;
    }

    protected abstract ApiRequest createActivateRequest();

    protected int getActivateDrawableId() {
        return 0;
    }

    protected int getActivateStrId(boolean z) {
        return 0;
    }

    protected int getActivatedDrawableId() {
        return 0;
    }

    protected abstract int getActivatedStrId(boolean z);

    protected int getActivatedTextColorId() {
        return 0;
    }

    protected int getActivatedToastTextId() {
        return 0;
    }

    protected int getDownloadProgressDrawableId() {
        return 0;
    }

    protected int getGetDrawableId() {
        return 0;
    }

    protected int getGetStrId(boolean z) {
        return 0;
    }

    protected boolean hasProgressBar() {
        return true;
    }

    protected abstract void onPurchaseSuccess(NVObject nVObject);

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onShowPurchaseDialog() {
    }

    protected boolean sendNotificationAfterActivated() {
        return false;
    }

    protected boolean showToast() {
        return true;
    }

    protected boolean updateViewsWhenActivated() {
        return true;
    }

    protected void useItem() {
    }

    public StoreItemOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z) {
        this(nVContext, storeItemStatusView, z, false);
    }

    public StoreItemOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView, boolean z, boolean z2) {
        this.source = "Store Product Detail Page";
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.StoreItemOwnStatusController.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                    StoreItemOwnStatusController.this.updateViewStatus();
                }
            }
        };
        this.nvContext = nVContext;
        this.storeItemStatusView = storeItemStatusView;
        this.bigStyle = z;
        this.ignoreGlobalSope = z2;
        updateViewStyle();
        storeItemStatusView.setViewClickListener(this);
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.isGlobalSpace = ((ConfigService) nVContext.getService("config")).getCommunityId() == 0;
        this.localBroadcastManager = LocalBroadcastManager.getInstance(nVContext.getContext());
        storeItemStatusView.setController(this);
        this.storeItemPurchaseHelper = new StoreItemPurchaseHelper(nVContext);
        StoreItemPurchaseHelper storeItemPurchaseHelper = this.storeItemPurchaseHelper;
        storeItemPurchaseHelper.source = this.source;
        storeItemPurchaseHelper.setPurchaseEventListener(this);
    }

    private void updateViewStyle() {
        this.storeItemStatusView.setBigStyle(this.bigStyle);
        this.storeItemStatusView.setActivatedStrId(getActivatedStrId(this.bigStyle));
        this.storeItemStatusView.setGetStrId(getGetStrId(this.bigStyle));
        this.storeItemStatusView.setActivateStrId(getActivateStrId(this.bigStyle));
        this.storeItemStatusView.setActivatedDrawableId(getActivatedDrawableId());
        this.storeItemStatusView.setActivateDrawableId(getActivateDrawableId());
        this.storeItemStatusView.setGetDrawableId(getGetDrawableId());
        this.storeItemStatusView.setActivatedTextColorId(getActivatedTextColorId());
        this.storeItemStatusView.setDownloadProgressDrawableId(getDownloadProgressDrawableId());
    }

    public StoreItemOwnStatusController(NVContext nVContext, StoreItemStatusView storeItemStatusView) {
        this(nVContext, storeItemStatusView, true);
    }

    public void setStoreItem(IStoreItem iStoreItem) {
        if (iStoreItem == null || this.storeItemStatusView.isLoadingStatus() || this.storeItemStatusView.isDownloadingStatus()) {
            return;
        }
        setStoreItemInner(iStoreItem);
        updateViewStyle();
        updateViewStatus();
    }

    protected void setStoreItemInner(IStoreItem iStoreItem) {
        this.iStoreItem = iStoreItem;
        this.storeItemPurchaseHelper.setStoreItem(iStoreItem);
    }

    protected int getStoreItemStatus(IStoreItem iStoreItem) {
        if (!this.ignoreGlobalSope && this.isGlobalSpace && !canUseInGlobal() && iStoreItem.isTotalOwned()) {
            return 7;
        }
        if (iStoreItem.isActivated() && iStoreItem.isTotalOwned()) {
            return 5;
        }
        if (iStoreItem.isTotalOwned()) {
            return 4;
        }
        return iStoreItem.availableInAnyStore() ? 0 : 8;
    }

    protected void updateViewStatus() {
        IStoreItem iStoreItem = this.iStoreItem;
        if (iStoreItem == null) {
            return;
        }
        this.storeItemStatusView.updateStatus(getStoreItemStatus(iStoreItem));
    }

    private void showExpireDialog() {
        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this.nvContext);
        membershipExpireDialog.source = this.source;
        membershipExpireDialog.show();
    }

    private void showMembershipDialog() {
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this.nvContext);
        membershipHintDialog.source = this.source;
        membershipHintDialog.show();
    }

    private boolean needLogin() {
        if (((AccountService) this.nvContext.getService("account")).hasAccount()) {
            return false;
        }
        Intent intent = new Intent();
        try {
            if (this.nvContext instanceof NVFragment) {
                ((NVFragment) this.nvContext).ensureLogin(intent);
            } else if (this.nvContext instanceof NVActivity) {
                ((NVActivity) this.nvContext).ensureLogin(intent);
            } else {
                this.nvContext.startActivity(intent);
                NVToast.makeText(this.nvContext.getContext(), R.string.login_first, 0).show();
            }
            return true;
        } catch (Exception e) {
            Log.e("login", e);
            return true;
        }
    }

    @Override // com.narvii.monetization.StoreItemStatusView.ViewClickListener
    public void onClickMemberShip() {
        if (this.membershipService.isMembership()) {
            return;
        }
        if (this.membershipService.hasMemberShipExpired()) {
            showExpireDialog();
        } else {
            showMembershipDialog();
        }
    }

    @Override // com.narvii.monetization.StoreItemStatusView.ViewClickListener
    public void onClickGetItem() {
        if (this.iStoreItem == null || needLogin()) {
            return;
        }
        RestrictionInfo restrictionInfo = this.iStoreItem.getRestrictionInfo();
        if (anyOneCanGet()) {
            this.storeItemPurchaseHelper.sendPurchaseRequest();
            return;
        }
        if (restrictionInfo == null || !restrictionInfo.isSupported()) {
            new SuggestUpdateDialog(this.nvContext).show();
            return;
        }
        int i = restrictionInfo.restrictType;
        if (i != 2) {
            if (i == 1) {
                this.storeItemPurchaseHelper.sendPurchaseRequest();
                return;
            } else {
                if (i == 4) {
                    this.storeItemPurchaseHelper.openPurchaseDialogWithCheck();
                    return;
                }
                return;
            }
        }
        if (this.membershipService.isMembership()) {
            this.storeItemPurchaseHelper.sendPurchaseRequest();
        } else if (this.membershipService.hasMemberShipExpired()) {
            showExpireDialog();
        } else {
            showMembershipDialog();
        }
    }

    public void onActivated() throws Resources.NotFoundException {
        onActivated(true);
    }

    public void onActivated(boolean z) throws Resources.NotFoundException {
        if (showToast()) {
            showActivatedToast();
        }
        if (updateViewsWhenActivated()) {
            this.storeItemStatusView.updateStatus((this.ignoreGlobalSope || !this.isGlobalSpace || canUseInGlobal()) ? 5 : 7);
        }
        if (sendNotificationAfterActivated()) {
            Object obj = this.iStoreItem;
            if (obj instanceof NVObject) {
                ((NotificationCenter) this.nvContext.getService("notification")).sendNotification(new Notification("update", (NVObject) obj));
            }
        }
    }

    protected void showActivatedToast() throws Resources.NotFoundException {
        int activatedToastTextId = getActivatedToastTextId();
        if (this.nvContext.getContext() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) this.nvContext.getContext();
            Drawable drawable = ContextCompat.getDrawable(this.nvContext.getContext(), R.drawable.check);
            Context context = this.nvContext.getContext();
            if (activatedToastTextId == 0) {
                activatedToastTextId = R.string.activated;
            }
            nVActivity.toastImageWithText(drawable, context.getString(activatedToastTextId), R.anim.toast_scale_in, 500L);
            return;
        }
        Context context2 = this.nvContext.getContext();
        if (activatedToastTextId == 0) {
            activatedToastTextId = R.string.activated;
        }
        NVToast.makeText(context2, activatedToastTextId, 0).show();
    }

    @Override // com.narvii.monetization.StoreItemStatusView.ViewClickListener
    public void onClickActivateItem() {
        if (this.iStoreItem == null || needLogin()) {
            return;
        }
        ApiRequest apiRequestCreateActivateRequest = createActivateRequest();
        if (apiRequestCreateActivateRequest == null) {
            Log.e("store", "activate api request is null");
            return;
        }
        statistics(this.iStoreItem);
        this.storeItemStatusView.updateStatus(1);
        ((ApiService) this.nvContext.getService("api")).exec(apiRequestCreateActivateRequest, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.StoreItemOwnStatusController.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(StoreItemOwnStatusController.this.nvContext.getContext(), str, 0).show();
                StoreItemOwnStatusController.this.updateViewStatus();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                StoreItemOwnStatusController.this.iStoreItem.setActivated(true);
                StoreItemOwnStatusController.this.updateViewStatus();
                StoreItemOwnStatusController storeItemOwnStatusController = StoreItemOwnStatusController.this;
                if ((storeItemOwnStatusController.iStoreItem instanceof NVObject) && !storeItemOwnStatusController.sendNotificationAfterActivated()) {
                    ((NotificationCenter) StoreItemOwnStatusController.this.nvContext.getService("notification")).sendNotification(new Notification("update", (NVObject) StoreItemOwnStatusController.this.iStoreItem));
                }
                StoreItemOwnStatusController.this.onActivated(false);
            }
        });
    }

    protected void updateDownloadingProgress(int i) {
        this.storeItemStatusView.updateDownloadingProgress(i);
    }

    public void onCreate() {
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        this.storeItemPurchaseHelper.tryResumePurchaseConfirmFragment();
    }

    public void onDestroy() {
        this.localBroadcastManager.unregisterReceiver(this.receiver);
    }

    @Override // com.narvii.monetization.StoreItemStatusView.ViewClickListener
    public void onClickUseItem() {
        if (needLogin()) {
            return;
        }
        RestrictionInfo restrictionInfo = this.iStoreItem.getRestrictionInfo();
        if (restrictionInfo != null && restrictionInfo.restrictType == 2) {
            if (this.membershipService.isMembership()) {
                useItem();
                return;
            } else if (this.membershipService.hasMemberShipExpired()) {
                showExpireDialog();
                return;
            } else {
                showMembershipDialog();
                return;
            }
        }
        useItem();
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseStart() {
        this.storeItemStatusView.updateStatus(1);
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseCanceled() {
        this.storeItemStatusView.updateStatus(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseSuccessful(NVObject nVObject) {
        if (nVObject instanceof IStoreItem) {
            IStoreItem iStoreItem = (IStoreItem) nVObject;
            this.iStoreItem.setOwnershipInfo(iStoreItem.getOwnershipInfo());
            this.iStoreItem.setActivated(iStoreItem.isActivated());
            if (!hasProgressBar()) {
                updateViewStatus();
            }
        }
        if (nVObject != 0 && !sendNotificationAfterActivated()) {
            ((NotificationCenter) this.nvContext.getService("notification")).sendNotification(new Notification("update", nVObject));
        }
        onPurchaseSuccess(nVObject);
    }

    @Override // com.narvii.monetization.store.StoreItemPurchaseHelper.PurchaseConfirmFragmentEventListener
    public void onPurchaseFailed() {
        updateViewStatus();
    }

    public IStoreItem getStoreItem() {
        return this.iStoreItem;
    }
}
