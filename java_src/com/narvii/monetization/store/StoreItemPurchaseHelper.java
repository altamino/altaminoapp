package com.narvii.monetization.store;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.store.StoreItemPurchaseConfirmFragment;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.Coupon;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;

/* loaded from: classes3.dex */
public class StoreItemPurchaseHelper {
    public static final int ERR_PURCHASE_COMMUNITY_NOT_SATISFIED = 4102;
    public static final int ERR_PURCHASE_MEMBERSHIP_NOT_SATISFIED = 4101;
    public static final int ERR_PURCHASE_NOT_ENOUGH_COINS = 4300;
    private StoreItemPurchaseConfirmFragment.ConfirmPurchaseListener confirmPurchaseListener = new StoreItemPurchaseConfirmFragment.ConfirmPurchaseListener() { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.1
        @Override // com.narvii.monetization.store.StoreItemPurchaseConfirmFragment.ConfirmPurchaseListener
        public void doPurchase(Coupon coupon) {
            StoreItemPurchaseHelper.this.sendPurchaseRequest(coupon);
            StoreItemPurchaseHelper storeItemPurchaseHelper = StoreItemPurchaseHelper.this;
            storeItemPurchaseHelper.statistics(storeItemPurchaseHelper.iStoreItem);
        }
    };
    private final Context context;
    private PurchaseConfirmFragmentEventListener eventListener;
    private StoreItemPurchaseConfirmFragment f;
    private IStoreItem iStoreItem;
    private MembershipService membershipService;
    private final NVContext nvContext;
    public String source;

    public interface PurchaseConfirmFragmentEventListener {
        void onPurchaseCanceled();

        void onPurchaseFailed();

        void onPurchaseStart();

        void onPurchaseSuccessful(NVObject nVObject);

        void onShowPurchaseDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void statistics(IStoreItem iStoreItem) {
    }

    public StoreItemPurchaseHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
        this.membershipService = (MembershipService) nVContext.getService("membership");
    }

    public void setPurchaseEventListener(PurchaseConfirmFragmentEventListener purchaseConfirmFragmentEventListener) {
        this.eventListener = purchaseConfirmFragmentEventListener;
    }

    public void setStoreItem(IStoreItem iStoreItem) {
        this.iStoreItem = iStoreItem;
    }

    public void openPurchaseDialogWithCheck() {
        openPurchaseDialog();
    }

    public void openPurchaseDialog() {
        FragmentActivity activity;
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            activity = ((NVFragment) obj).getActivity();
        } else {
            activity = obj instanceof FragmentActivity ? (FragmentActivity) obj : null;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = activity != null ? activity.getSupportFragmentManager().beginTransaction() : null;
        if (fragmentTransactionBeginTransaction == null) {
            return;
        }
        PurchaseConfirmFragmentEventListener purchaseConfirmFragmentEventListener = this.eventListener;
        if (purchaseConfirmFragmentEventListener != null) {
            purchaseConfirmFragmentEventListener.onShowPurchaseDialog();
        }
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fade_in, R.anim.fade_out_fast);
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment = this.f;
        if (storeItemPurchaseConfirmFragment == null || storeItemPurchaseConfirmFragment.isDestoryed()) {
            this.f = new StoreItemPurchaseConfirmFragment();
            this.f.setStoreItem(this.iStoreItem);
            this.f.setConfirmPurchaseListener(this.confirmPurchaseListener);
        }
        if (this.f.isAdded()) {
            return;
        }
        int i = R.id.layout_above_post_entry;
        if (activity.findViewById(R.id.layout_above_post_entry) == null) {
            i = android.R.id.content;
        }
        fragmentTransactionBeginTransaction.add(i, this.f, StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
        fragmentTransactionBeginTransaction.addToBackStack(StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
        fragmentTransactionBeginTransaction.commit();
    }

    public void tryResumePurchaseConfirmFragment() {
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment = this.f;
        if (storeItemPurchaseConfirmFragment == null || storeItemPurchaseConfirmFragment.isDestoryed()) {
            FragmentActivity activity = null;
            Object obj = this.nvContext;
            if (obj instanceof NVFragment) {
                activity = ((NVFragment) obj).getActivity();
            } else if (obj instanceof FragmentActivity) {
                activity = (FragmentActivity) obj;
            }
            if (activity != null) {
                this.f = (StoreItemPurchaseConfirmFragment) activity.getSupportFragmentManager().findFragmentByTag(StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
            }
        }
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment2 = this.f;
        if (storeItemPurchaseConfirmFragment2 == null || storeItemPurchaseConfirmFragment2.isDestoryed()) {
            return;
        }
        this.f.setConfirmPurchaseListener(this.confirmPurchaseListener);
    }

    public void sendPurchaseRequest() {
        sendPurchaseRequest(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPurchaseRequest(Coupon coupon) {
        if (this.iStoreItem == null) {
            return;
        }
        PurchaseConfirmFragmentEventListener purchaseConfirmFragmentEventListener = this.eventListener;
        if (purchaseConfirmFragmentEventListener != null) {
            purchaseConfirmFragmentEventListener.onPurchaseStart();
        }
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post().path("store/purchase");
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, this.iStoreItem.id());
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.iStoreItem.objectType()));
        builder.param("v", 1);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (coupon != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            arrayNodeCreateArrayNode.add(coupon.couponMappingId);
            objectNodeCreateObjectNode.put("couponMappingIdList", arrayNodeCreateArrayNode);
        }
        RestrictionInfo restrictionInfo = this.iStoreItem.getRestrictionInfo();
        if (restrictionInfo != null && restrictionInfo.discountStatus == 1 && this.membershipService.isMembership()) {
            objectNodeCreateObjectNode.put("discountStatus", 1);
            objectNodeCreateObjectNode.put("discountValue", restrictionInfo.discountValue);
        } else {
            objectNodeCreateObjectNode.put("discountStatus", 0);
        }
        if (restrictionInfo != null && restrictionInfo.hasAvailableDuration()) {
            objectNodeCreateObjectNode.put("isAutoRenew", true);
        } else {
            objectNodeCreateObjectNode.put("isAutoRenew", false);
        }
        builder.param("paymentContext", objectNodeCreateObjectNode);
        apiService.exec(builder.build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                NVObject refObject = StoreItem.parseRefObject(StoreItemPurchaseHelper.this.iStoreItem.objectType(), JacksonUtils.nodePath(json(), "refObject"));
                if (refObject instanceof IStoreItem) {
                    IStoreItem iStoreItem = (IStoreItem) refObject;
                    StoreItemPurchaseHelper.this.iStoreItem.setOwnershipInfo(iStoreItem.getOwnershipInfo());
                    StoreItemPurchaseHelper.this.iStoreItem.setActivated(iStoreItem.isActivated());
                }
                if (StoreItemPurchaseHelper.this.f != null && !StoreItemPurchaseHelper.this.f.isDestoryed()) {
                    LogEvent.clickBuilder(StoreItemPurchaseHelper.this.f, ActSemantic.purchaseSuccess).area("PurchaseButton").send();
                    StoreItemPurchaseHelper.this.f.close();
                }
                StoreItemPurchaseHelper.this.membershipService.refreshWallet(true);
                if (StoreItemPurchaseHelper.this.iStoreItem != null && StoreItemPurchaseHelper.this.iStoreItem.getAdditionalBenefits() != null && StoreItemPurchaseHelper.this.iStoreItem.getAdditionalBenefits().firstMonthFreeAminoPlusMembership && !StoreItemPurchaseHelper.this.membershipService.isMembership()) {
                    StoreItemPurchaseHelper.this.membershipService.refreshMembership(true);
                }
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseSuccessful(refObject);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
            @Override // com.narvii.util.http.ApiResponseListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onFail(com.narvii.util.http.ApiRequest r1, int r2, java.util.List<com.narvii.util.http.NameValuePair> r3, java.lang.String r4, com.narvii.model.api.ApiResponse r5, java.lang.Throwable r6) {
                /*
                    r0 = this;
                    super.onFail(r1, r2, r3, r4, r5, r6)
                    r1 = 1
                    r3 = 4101(0x1005, float:5.747E-42)
                    if (r2 != r3) goto L20
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.wallet.MembershipService r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$400(r2)
                    boolean r2 = r2.hasMemberShipExpired()
                    if (r2 == 0) goto L1a
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseHelper.access$600(r2)
                    goto L81
                L1a:
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseHelper.access$700(r2)
                    goto L81
                L20:
                    r3 = 4102(0x1006, float:5.748E-42)
                    r5 = 0
                    if (r2 != r3) goto L62
                    com.fasterxml.jackson.databind.JsonNode r2 = r0.errorJson()
                    java.lang.String[] r3 = new java.lang.String[r1]
                    java.lang.String r6 = "availableCommunity"
                    r3[r5] = r6
                    com.fasterxml.jackson.databind.JsonNode r2 = com.narvii.util.JacksonUtils.nodePath(r2, r3)
                    r3 = 0
                    if (r2 == 0) goto L45
                    com.fasterxml.jackson.databind.ObjectMapper r5 = com.narvii.util.JacksonUtils.DEFAULT_MAPPER     // Catch: com.fasterxml.jackson.core.JsonProcessingException -> L41
                    java.lang.Class<com.narvii.model.Community> r6 = com.narvii.model.Community.class
                    java.lang.Object r2 = r5.treeToValue(r2, r6)     // Catch: com.fasterxml.jackson.core.JsonProcessingException -> L41
                    com.narvii.model.Community r2 = (com.narvii.model.Community) r2     // Catch: com.fasterxml.jackson.core.JsonProcessingException -> L41
                    goto L46
                L41:
                    r2 = move-exception
                    r2.printStackTrace()
                L45:
                    r2 = r3
                L46:
                    if (r2 == 0) goto L50
                    com.narvii.monetization.store.StoreItemPurchaseHelper r3 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    int r2 = r2.id
                    com.narvii.monetization.store.StoreItemPurchaseHelper.access$800(r3, r4, r2)
                    goto L81
                L50:
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.app.NVContext r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$900(r2)
                    android.content.Context r2 = r2.getContext()
                    com.narvii.util.NVToast r2 = com.narvii.util.NVToast.makeText(r2, r4, r1)
                    r2.show()
                    goto L81
                L62:
                    r3 = 4300(0x10cc, float:6.026E-42)
                    if (r2 != r3) goto L70
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.app.NVContext r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$900(r2)
                    com.narvii.wallet.PurchaseCoinFragment.show(r2, r1)
                    goto L81
                L70:
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.app.NVContext r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$900(r2)
                    android.content.Context r2 = r2.getContext()
                    com.narvii.util.NVToast r2 = com.narvii.util.NVToast.makeText(r2, r4, r5)
                    r2.show()
                L81:
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseConfirmFragment r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$300(r2)
                    if (r2 == 0) goto L9e
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseConfirmFragment r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$300(r2)
                    boolean r2 = r2.isDestoryed()
                    if (r2 != 0) goto L9e
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseConfirmFragment r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$300(r2)
                    r2.resetPurchaseView()
                L9e:
                    com.narvii.monetization.store.StoreItemPurchaseHelper r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.wallet.MembershipService r2 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$400(r2)
                    r2.refresh(r1)
                    com.narvii.monetization.store.StoreItemPurchaseHelper r1 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener r1 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$500(r1)
                    if (r1 == 0) goto Lb8
                    com.narvii.monetization.store.StoreItemPurchaseHelper r1 = com.narvii.monetization.store.StoreItemPurchaseHelper.this
                    com.narvii.monetization.store.StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener r1 = com.narvii.monetization.store.StoreItemPurchaseHelper.access$500(r1)
                    r1.onPurchaseFailed()
                Lb8:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.store.StoreItemPurchaseHelper.AnonymousClass2.onFail(com.narvii.util.http.ApiRequest, int, java.util.List, java.lang.String, com.narvii.model.api.ApiResponse, java.lang.Throwable):void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExpireDialog() {
        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this.nvContext);
        membershipExpireDialog.source = this.source;
        membershipExpireDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMembershipDialog() {
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this.nvContext);
        membershipHintDialog.source = this.source;
        membershipHintDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog(String str, final int i) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseCanceled();
                }
            }
        });
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseCanceled();
                }
            }
        }, -4473925);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i);
                StoreItemPurchaseHelper.this.nvContext.getContext().startActivity(intent);
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseCanceled();
                }
            }
        }, -16745729);
        aCMAlertDialog.show();
    }
}
