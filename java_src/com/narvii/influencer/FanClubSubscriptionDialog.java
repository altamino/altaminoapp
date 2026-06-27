package com.narvii.influencer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.InfluencerInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PurchaseConfirmButton;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes2.dex */
public class FanClubSubscriptionDialog extends NVDialog implements View.OnClickListener, PurchaseConfirmButton.SubmitConfirmListener {
    private final ApiService apiService;
    private final PurchaseConfirmButton confirmButton;
    private final DateFormat dateFormat;
    private final TextView earnFreeCoins;
    private String influencerUid;
    private boolean isRenewAction;
    private final LocalBroadcastManager lbm;
    private final MembershipService membershipService;
    private int ndcId;
    private final NotificationCenter notificationCenter;
    private NVContext nvContext;
    private BroadcastReceiver receiver;
    private String source;
    private final TextView subscriptionAutoRenewHint;
    private final TextView subscriptionStartTime;
    private final TextView totalCoinCount;
    private String transactionId;
    private User user;

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "FanClubSubscription";
    }

    private FanClubSubscriptionDialog(final NVContext nVContext, String str) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.dateFormat = DateFormat.getDateInstance(1, Locale.getDefault());
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                FanClubSubscriptionDialog.this.updateWallet();
            }
        };
        this.nvContext = nVContext;
        this.influencerUid = str;
        this.transactionId = null;
        setContentView(R.layout.dialog_fans_subscription);
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.apiService = (ApiService) nVContext.getService("api");
        this.notificationCenter = (NotificationCenter) nVContext.getService("notification");
        findViewById(R.id.click_remove_mask).setOnClickListener(this);
        String string = getContext().getString(R.string.fan_subscribe_hint);
        String string2 = getContext().getString(R.string.tos);
        NVText nVText = new NVText(string);
        nVText.format(string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.2
            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText2, int i, String str2) {
                nVContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://tos")));
            }
        });
        View viewFindViewById = findViewById(R.id.gradient_mask);
        int themeColor = ((ThemePackService) nVContext.getService("themePack")).getThemeColor(((ConfigService) nVContext.getService("config")).getCommunityId());
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1728053247 & themeColor, themeColor & (-855638017)});
        gradientDrawable.setGradientType(0);
        viewFindViewById.setBackgroundDrawable(gradientDrawable);
        this.totalCoinCount = (TextView) findViewById(R.id.total_coin_count);
        this.subscriptionStartTime = (TextView) findViewById(R.id.fan_subscription_start_time);
        String string3 = getContext().getString(R.string.click_here_no_capital);
        NVText nVText2 = new NVText(getContext().getString(R.string.auto_renew_hint_info_new, string3, getContext().getString(R.string.join_fan_club)));
        nVText2.markText(string3, new OnTagClickListener() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.3
            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText3, int i, String str2) {
                nVContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://help-center")));
            }
        });
        this.subscriptionAutoRenewHint = (TextView) findViewById(R.id.subscription_auto_renew_hint_info);
        this.subscriptionAutoRenewHint.setClickable(true);
        this.subscriptionAutoRenewHint.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.subscriptionAutoRenewHint.setText(nVText2);
        this.confirmButton = (PurchaseConfirmButton) findViewById(R.id.confirm_button);
        this.confirmButton.setSubmitListener(this);
        this.earnFreeCoins = (TextView) findViewById(R.id.earn_coins_text);
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    protected void finalize() throws Throwable {
        this.lbm.unregisterReceiver(this.receiver);
        super.finalize();
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, String str2) {
        showSubscriptionDialog(nVContext, str, ((ConfigService) nVContext.getService("config")).getCommunityId(), str2);
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, int i, String str2) {
        if (nVContext == null) {
            Log.e("FanClubSubscriptionDialog", "nvContext is null");
        } else {
            if (Utils.shouldShowLoginPage(nVContext)) {
                return;
            }
            FanClub fanClub = ((AccountService) nVContext.getService("account")).getFanClub(i, str);
            showSubscriptionDialog(nVContext, str, i, fanClub != null && fanClub.hasSubscriptionBefore(), str2);
        }
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, int i, boolean z, String str2) {
        if (nVContext == null) {
            Log.e("FanClubSubscriptionDialog", "nvContext is null");
            return;
        }
        if (Utils.shouldShowLoginPage(nVContext)) {
            return;
        }
        if (i <= 0 && (i = ((ConfigService) nVContext.getService("config")).getCommunityId()) <= 0) {
            Log.e("FanClubSubscriptionDialog", "ndcId is 0");
            return;
        }
        final FanClubSubscriptionDialog fanClubSubscriptionDialog = new FanClubSubscriptionDialog(nVContext, str);
        fanClubSubscriptionDialog.source = str2;
        fanClubSubscriptionDialog.setNdcId(i);
        fanClubSubscriptionDialog.setIsRenew(z);
        final ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext());
        progressDialog.show();
        fanClubSubscriptionDialog.loadUserInfo(str, new Callback<User>() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.4
            @Override // com.narvii.util.Callback
            public void call(User user) throws Resources.NotFoundException {
                progressDialog.dismiss();
                if (user != null) {
                    fanClubSubscriptionDialog.user = user;
                    fanClubSubscriptionDialog.show();
                }
            }
        });
    }

    private void loadUserInfo(String str, final Callback<User> callback) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().communityId(this.ndcId).path("/user-profile/" + str).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                User user;
                super.onFinish(apiRequest, (ApiRequest) userResponse);
                if (userResponse == null || (user = userResponse.user) == null) {
                    return;
                }
                callback.call(user);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                NVToast.makeText(FanClubSubscriptionDialog.this.getContext(), str2, 0).show();
                callback.call(null);
            }
        });
    }

    private void updateViews() {
        ((NVImageView) findViewById(R.id.fans_subscription_cover)).setImageUrl(this.user.icon());
        ((TextView) findViewById(R.id.fans_subscription_title)).setText(this.user.nickname());
        User user = this.user;
        if (user != null && user.influencerInfo != null) {
            this.confirmButton.setConfirmText(getContext().getString(R.string.join_fan_club));
            this.totalCoinCount.setText(this.nvContext.getContext().getString(R.string.price_with_expired_time_month, Integer.valueOf(this.user.influencerInfo.monthlyFee)));
            this.subscriptionStartTime.setText(getContext().getString(R.string.start_date, this.dateFormat.format(new Date())));
        }
        updateWallet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWallet() {
        String string;
        if (this.membershipService.walletBalance() != 1) {
            string = getContext().getString(R.string.store_current_wallet, TextUtils.numberFormat.format(this.membershipService.walletBalance()));
        } else {
            string = getContext().getString(R.string.store_current_wallet_1);
        }
        String string2 = getContext().getString(R.string.tipping_dialog_get_coins);
        NVText nVText = new NVText(string + " " + string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.6
            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText2, int i, String str) {
                LogEvent.clickBuilder(FanClubSubscriptionDialog.this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                PurchaseCoinFragment.show(FanClubSubscriptionDialog.this.nvContext, false);
            }
        });
        this.earnFreeCoins.setClickable(true);
        this.earnFreeCoins.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.earnFreeCoins.setText(nVText, TextView.BufferType.SPANNABLE);
    }

    private void setIsRenew(boolean z) {
        this.isRenewAction = z;
    }

    private void setNdcId(int i) {
        this.ndcId = i;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
        updateViews();
        this.membershipService.refreshWallet(true);
        super.show();
        findViewById(R.id.fans_subscription_content).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.click_remove_mask) {
            dismiss();
        }
    }

    @Override // com.narvii.widget.PurchaseConfirmButton.SubmitConfirmListener
    public void doSubmit() {
        InfluencerInfo influencerInfo;
        LogEvent.clickBuilder(this, ActSemantic.purchase).area("PurchaseButton").send();
        User user = this.user;
        if (user != null && (influencerInfo = user.influencerInfo) != null && influencerInfo.monthlyFee > this.membershipService.walletBalance()) {
            showPurchaseCoinDialog(true);
        } else {
            this.confirmButton.updateSendingStatus(true);
            sendSubscribeRequest(true);
        }
    }

    private void sendSubscribeRequest(final boolean z) {
        if (this.transactionId == null) {
            this.transactionId = UUID.randomUUID().toString();
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("transactionId", this.transactionId);
        objectNodeCreateObjectNode.put("isAutoRenew", z);
        this.apiService.exec(ApiRequest.builder().post().communityId(this.ndcId).path("influencer/" + this.influencerUid + "/subscribe").param("paymentContext", objectNodeCreateObjectNode).build(), new ApiResponseListener<FanClubListResponse>(FanClubListResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FanClubListResponse fanClubListResponse) throws Exception {
                FanClub next;
                super.onFinish(apiRequest, (ApiRequest) fanClubListResponse);
                AccountService accountService = (AccountService) FanClubSubscriptionDialog.this.nvContext.getService("account");
                FanClub fanClub = accountService.getFanClub(FanClubSubscriptionDialog.this.ndcId, FanClubSubscriptionDialog.this.influencerUid);
                boolean z2 = fanClub != null && fanClub.isActive();
                accountService.updateFanClubList(FanClubSubscriptionDialog.this.ndcId, fanClubListResponse.fanClubList);
                List<FanClub> list = fanClubListResponse.fanClubList;
                if (list != null) {
                    Iterator<FanClub> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        } else {
                            next = it.next();
                            if (Utils.isEqualsNotNull(next.targetUid, FanClubSubscriptionDialog.this.influencerUid)) {
                                break;
                            }
                        }
                    }
                    if (next != null) {
                        FanClubSubscriptionDialog.this.sendNotification(next, z2);
                    }
                }
                FanClubSubscriptionDialog.this.transactionId = null;
                LogEvent.clickBuilder(FanClubSubscriptionDialog.this, ActSemantic.purchaseSuccess).area("PurchaseButton").send();
                FanClubSubscriptionDialog.this.sendFellowRequest();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                if (i == 4300) {
                    FanClubSubscriptionDialog.this.showPurchaseCoinDialog(true);
                } else {
                    NVToast.makeText(FanClubSubscriptionDialog.this.getContext(), str, 0).show();
                    FanClubSubscriptionDialog.this.confirmButton.updateSendingStatus(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFellowRequest() {
        this.apiService.exec(ApiRequest.builder().post().path("/user-profile/" + this.user.id() + "/member").build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                AccountService accountService = (AccountService) FanClubSubscriptionDialog.this.nvContext.getService("account");
                User userProfile = accountService.getUserProfile();
                if (userProfile == null) {
                    return;
                }
                Notification notification = new Notification("new", userProfile);
                notification.parentId = FanClubSubscriptionDialog.this.user.id();
                FanClubSubscriptionDialog.this.notificationCenter.sendNotification(notification);
                FanClubSubscriptionDialog.this.user.addFollowingStatus(1);
                FanClubSubscriptionDialog.this.user.membersCount++;
                Notification notification2 = new Notification("update", FanClubSubscriptionDialog.this.user);
                notification2.bundle = new Bundle();
                notification2.bundle.putBoolean("keepInfluencerInfo", true);
                FanClubSubscriptionDialog.this.notificationCenter.sendNotification(notification2);
                User userProfile2 = accountService.getUserProfile();
                userProfile2.joinedCount++;
                accountService.updateProfile(userProfile2, apiResponse.timestamp, true);
                FanClubSubscriptionDialog.this.showSuccessToast();
                FanClubSubscriptionDialog.this.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                FanClubSubscriptionDialog.this.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNotification(FanClub fanClub, boolean z) {
        NotificationCenter notificationCenter;
        FanClub fanClub2 = (FanClub) fanClub.m46clone();
        fanClub2.ndcId = this.ndcId;
        Notification notification = new Notification();
        notification.action = this.isRenewAction ? "update" : "new";
        notification.obj = fanClub2;
        notification.bundle = new Bundle();
        notification.bundle.putBoolean("subscriptionStatusChanged", !z);
        this.notificationCenter.sendNotification(notification);
        if (this.ndcId == 0 || (notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification")) == null) {
            return;
        }
        notificationCenter.sendNotification(notification.m51clone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSuccessToast() throws Resources.NotFoundException {
        if (this.nvContext.getContext() instanceof NVActivity) {
            ((NVActivity) this.nvContext.getContext()).toastImageWithText(ContextCompat.getDrawable(this.nvContext.getContext(), R.drawable.check), this.nvContext.getContext().getString(R.string.success), R.anim.toast_scale_in, 600L);
        } else {
            NVToast.makeText(this.nvContext.getContext(), R.string.success, 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPurchaseCoinDialog(boolean z) {
        PurchaseCoinFragment.show(this.nvContext, z);
    }
}
