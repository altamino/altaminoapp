package com.narvii.monetization.store;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.ChatBubble;
import com.narvii.model.Community;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.Coupon;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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

    public void sendPurchaseRequest() {
        sendPurchaseRequest(null);
    }

    public void setPurchaseEventListener(PurchaseConfirmFragmentEventListener purchaseConfirmFragmentEventListener) {
        this.eventListener = purchaseConfirmFragmentEventListener;
    }

    public void setStoreItem(IStoreItem iStoreItem) {
        this.iStoreItem = iStoreItem;
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
        if (restrictionInfo == null || !restrictionInfo.hasAvailableDuration()) {
            objectNodeCreateObjectNode.put("isAutoRenew", false);
        } else {
            objectNodeCreateObjectNode.put("isAutoRenew", true);
        }
        builder.param("paymentContext", objectNodeCreateObjectNode);
        apiService.exec(builder.build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.store.StoreItemPurchaseHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                Community community;
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if (i10 == 4101) {
                    if (StoreItemPurchaseHelper.this.membershipService.hasMemberShipExpired()) {
                        StoreItemPurchaseHelper.this.showExpireDialog();
                    } else {
                        StoreItemPurchaseHelper.this.showMembershipDialog();
                    }
                } else if (i10 == 4102) {
                    JsonNode jsonNodeNodePath = JacksonUtils.nodePath(errorJson(), "availableCommunity");
                    if (jsonNodeNodePath != null) {
                        try {
                            community = (Community) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Community.class);
                        } catch (JsonProcessingException e) {
                            e.printStackTrace();
                            community = null;
                        }
                    } else {
                        community = null;
                    }
                    if (community != null) {
                        StoreItemPurchaseHelper.this.showJoinCommunityDialog(str, community.id);
                    } else {
                        NVToast.makeText(StoreItemPurchaseHelper.this.nvContext.getContext(), str, 1).show();
                    }
                } else if (i10 == 4300) {
                    PurchaseCoinFragment.show(StoreItemPurchaseHelper.this.nvContext, true);
                } else {
                    NVToast.makeText(StoreItemPurchaseHelper.this.nvContext.getContext(), str, 0).show();
                }
                if (StoreItemPurchaseHelper.this.f != null && !StoreItemPurchaseHelper.this.f.isDestoryed()) {
                    StoreItemPurchaseHelper.this.f.resetPurchaseView();
                }
                StoreItemPurchaseHelper.this.membershipService.refresh(true);
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseFailed();
                }
            }

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
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExpireDialog() {
        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this.nvContext);
        membershipExpireDialog.source = this.source;
        membershipExpireDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog(String str, final int i10) {
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
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(StoreItemPurchaseHelper.this.nvContext.getContext(), intent);
                if (StoreItemPurchaseHelper.this.eventListener != null) {
                    StoreItemPurchaseHelper.this.eventListener.onPurchaseCanceled();
                }
            }
        }, -16745729);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMembershipDialog() {
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this.nvContext);
        membershipHintDialog.source = this.source;
        membershipHintDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void statistics(IStoreItem iStoreItem) {
        String str;
        StatisticsService statisticsService = (StatisticsService) this.nvContext.getService("statistics");
        if (iStoreItem instanceof StickerCollection) {
            str = "Activates Sticker Set";
        } else if (iStoreItem instanceof ChatBubble) {
            str = "Activates Chat Bubble";
        } else {
            str = iStoreItem instanceof AvatarFrame ? "Activates Profile Frame" : null;
        }
        if (str != null) {
            statisticsService.event(str).param(EventConstants.CommentPost.TYPE, iStoreItem.getRestrictionInfo().restrictType == 4 ? "Paid with Coins" : "Free with Amino+").source(this.source).userPropInc(str + " Total");
        }
    }

    public void openPurchaseDialog() {
        FragmentActivity activity;
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            activity = ((NVFragment) obj).getActivity();
        } else {
            activity = obj instanceof FragmentActivity ? (FragmentActivity) obj : null;
        }
        FragmentTransaction fragmentTransactionQ = activity != null ? activity.getSupportFragmentManager().q() : null;
        if (fragmentTransactionQ == null) {
            return;
        }
        PurchaseConfirmFragmentEventListener purchaseConfirmFragmentEventListener = this.eventListener;
        if (purchaseConfirmFragmentEventListener != null) {
            purchaseConfirmFragmentEventListener.onShowPurchaseDialog();
        }
        fragmentTransactionQ.y(R.anim.fade_in, R.anim.fade_out_fast);
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment = this.f;
        if (storeItemPurchaseConfirmFragment == null || storeItemPurchaseConfirmFragment.isDestoryed()) {
            StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment2 = new StoreItemPurchaseConfirmFragment();
            this.f = storeItemPurchaseConfirmFragment2;
            storeItemPurchaseConfirmFragment2.setStoreItem(this.iStoreItem);
            this.f.setConfirmPurchaseListener(this.confirmPurchaseListener);
        }
        if (this.f.isAdded()) {
            return;
        }
        int i10 = R.id.layout_above_post_entry;
        if (activity.findViewById(R.id.layout_above_post_entry) == null) {
            i10 = android.R.id.content;
        }
        fragmentTransactionQ.c(i10, this.f, StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
        fragmentTransactionQ.h(StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
        fragmentTransactionQ.j();
    }

    public void tryResumePurchaseConfirmFragment() {
        FragmentActivity activity;
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment = this.f;
        if (storeItemPurchaseConfirmFragment == null || storeItemPurchaseConfirmFragment.isDestoryed()) {
            Object obj = this.nvContext;
            if (obj instanceof NVFragment) {
                activity = ((NVFragment) obj).getActivity();
            } else {
                activity = obj instanceof FragmentActivity ? (FragmentActivity) obj : null;
            }
            if (activity != null) {
                this.f = (StoreItemPurchaseConfirmFragment) activity.getSupportFragmentManager().m0(StoreItemPurchaseConfirmFragment.FRAGMENT_TAG);
            }
        }
        StoreItemPurchaseConfirmFragment storeItemPurchaseConfirmFragment2 = this.f;
        if (storeItemPurchaseConfirmFragment2 == null || storeItemPurchaseConfirmFragment2.isDestoryed()) {
            return;
        }
        this.f.setConfirmPurchaseListener(this.confirmPurchaseListener);
    }

    public StoreItemPurchaseHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
        this.membershipService = (MembershipService) nVContext.getService("membership");
    }

    public void openPurchaseDialogWithCheck() {
        openPurchaseDialog();
    }
}
