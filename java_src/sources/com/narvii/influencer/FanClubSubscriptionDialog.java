package com.narvii.influencer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PurchaseConfirmButton;
import com.safedk.android.utils.Logger;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
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

    private void setIsRenew(boolean z6) {
        this.isRenewAction = z6;
    }

    private void setNdcId(int i10) {
        this.ndcId = i10;
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, String str2) {
        showSubscriptionDialog(nVContext, str, ((ConfigService) nVContext.getService("config")).getCommunityId(), str2);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "fan_club_subscription";
    }

    private void sendSubscribeRequest(final boolean z6) {
        if (this.transactionId == null) {
            this.transactionId = UUID.randomUUID().toString();
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("transactionId", this.transactionId);
        objectNodeCreateObjectNode.put("isAutoRenew", z6);
        this.apiService.exec(ApiRequest.builder().post().communityId(this.ndcId).path("influencer/" + this.influencerUid + "/subscribe").param("paymentContext", objectNodeCreateObjectNode).build(), new ApiResponseListener<FanClubListResponse>(FanClubListResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FanClubListResponse fanClubListResponse) throws Exception {
                FanClub next;
                super.onFinish(apiRequest, fanClubListResponse);
                AccountService accountService = (AccountService) FanClubSubscriptionDialog.this.nvContext.getService("account");
                FanClub fanClub = accountService.getFanClub(FanClubSubscriptionDialog.this.ndcId, FanClubSubscriptionDialog.this.influencerUid);
                boolean z10 = fanClub != null && fanClub.isActive();
                accountService.updateFanClubList(FanClubSubscriptionDialog.this.ndcId, fanClubListResponse.fanClubList);
                List<FanClub> list = fanClubListResponse.fanClubList;
                if (list != null) {
                    Iterator<FanClub> it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Utils.isEqualsNotNull(next.targetUid, FanClubSubscriptionDialog.this.influencerUid));
                    if (next != null) {
                        FanClubSubscriptionDialog.this.sendNotification(next, z10);
                    }
                }
                FanClubSubscriptionDialog.this.transactionId = null;
                LogEvent.clickBuilder(FanClubSubscriptionDialog.this, ActSemantic.purchaseSuccess).area("PurchaseButton").send();
                FanClubSubscriptionDialog.this.sendFellowRequest();
                ((StatisticsService) FanClubSubscriptionDialog.this.nvContext.getService("statistics")).event("Purchase Fan Club").source(FanClubSubscriptionDialog.this.source).param("Result", true).param("Auto Renew", z6).param("Follow", true).userPropInc("Purchase Fan Club Total");
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if (i10 == 4300) {
                    FanClubSubscriptionDialog.this.showPurchaseCoinDialog(true);
                    return;
                }
                NVToast.makeText(FanClubSubscriptionDialog.this.getContext(), str, 0).show();
                FanClubSubscriptionDialog.this.confirmButton.updateSendingStatus(false);
                ((StatisticsService) FanClubSubscriptionDialog.this.nvContext.getService("statistics")).event("Purchase Fan Club").source(FanClubSubscriptionDialog.this.source).param("Result", false).userPropInc("Purchase Fan Club Total");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPurchaseCoinDialog(boolean z6) {
        PurchaseCoinFragment.show(this.nvContext, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSuccessToast() {
        if (this.nvContext.getContext() instanceof NVActivity) {
            ((NVActivity) this.nvContext.getContext()).toastImageWithText(ContextCompat.getDrawable(this.nvContext.getContext(), R.drawable.check), this.nvContext.getContext().getString(R.string.success), R.anim.toast_scale_in, 600L);
        } else {
            NVToast.makeText(this.nvContext.getContext(), R.string.success, 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWallet() {
        String string = this.membershipService.walletBalance() != 1 ? getContext().getString(R.string.store_current_wallet, TextUtils.numberFormat.format(this.membershipService.walletBalance())) : getContext().getString(R.string.store_current_wallet_1);
        String string2 = getContext().getString(R.string.tipping_dialog_get_coins);
        NVText nVText = new NVText(string + " " + string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.6
            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText2, int i10, String str) {
                LogEvent.clickBuilder(FanClubSubscriptionDialog.this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                PurchaseCoinFragment.show(FanClubSubscriptionDialog.this.nvContext, false);
            }
        });
        this.earnFreeCoins.setClickable(true);
        this.earnFreeCoins.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.earnFreeCoins.setText(nVText, TextView.BufferType.SPANNABLE);
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

    protected void finalize() throws Throwable {
        this.lbm.f(this.receiver);
        super.finalize();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.click_remove_mask) {
            dismiss();
        }
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
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText2, int i10, String str2) {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, new Intent("android.intent.action.VIEW", Uri.parse("ndc://tos")));
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
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText3, int i10, String str2) {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, new Intent("android.intent.action.VIEW", Uri.parse("ndc://help-center")));
            }
        });
        TextView textView = (TextView) findViewById(R.id.subscription_auto_renew_hint_info);
        this.subscriptionAutoRenewHint = textView;
        textView.setClickable(true);
        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView.setText(nVText2);
        PurchaseConfirmButton purchaseConfirmButton = (PurchaseConfirmButton) findViewById(R.id.confirm_button);
        this.confirmButton = purchaseConfirmButton;
        purchaseConfirmButton.setSubmitListener(this);
        this.earnFreeCoins = (TextView) findViewById(R.id.earn_coins_text);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    private void loadUserInfo(String str, final Callback<User> callback) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().communityId(this.ndcId).path("/user-profile/" + str).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                User user;
                super.onFinish(apiRequest, userResponse);
                if (userResponse == null || (user = userResponse.user) == null) {
                    return;
                }
                callback.call(user);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                NVToast.makeText(FanClubSubscriptionDialog.this.getContext(), str2, 0).show();
                callback.call(null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFellowRequest() {
        this.apiService.exec(ApiRequest.builder().post().path("/user-profile/" + this.user.id() + "/member").build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.influencer.FanClubSubscriptionDialog.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                FanClubSubscriptionDialog.this.dismiss();
            }

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
                Bundle bundle = new Bundle();
                notification2.bundle = bundle;
                bundle.putBoolean("keepInfluencerInfo", true);
                FanClubSubscriptionDialog.this.notificationCenter.sendNotification(notification2);
                User userProfile2 = accountService.getUserProfile();
                userProfile2.joinedCount++;
                accountService.updateProfile(userProfile2, apiResponse.timestamp, true);
                FanClubSubscriptionDialog.this.showSuccessToast();
                FanClubSubscriptionDialog.this.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNotification(FanClub fanClub, boolean z6) {
        String str;
        NotificationCenter notificationCenter;
        FanClub fanClub2 = (FanClub) fanClub.m1622clone();
        fanClub2.ndcId = this.ndcId;
        Notification notification = new Notification();
        if (this.isRenewAction) {
            str = "update";
        } else {
            str = "new";
        }
        notification.action = str;
        notification.obj = fanClub2;
        Bundle bundle = new Bundle();
        notification.bundle = bundle;
        bundle.putBoolean("subscriptionStatusChanged", !z6);
        this.notificationCenter.sendNotification(notification);
        if (this.ndcId != 0 && (notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification")) != null) {
            notificationCenter.sendNotification(notification.m1627clone());
        }
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, int i10, String str2) {
        if (nVContext == null) {
            Log.e("FanClubSubscriptionDialog", "nvContext is null");
        } else {
            if (Utils.shouldShowLoginPage(nVContext)) {
                return;
            }
            FanClub fanClub = ((AccountService) nVContext.getService("account")).getFanClub(i10, str);
            showSubscriptionDialog(nVContext, str, i10, fanClub != null && fanClub.hasSubscriptionBefore(), str2);
        }
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

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        updateViews();
        this.membershipService.refreshWallet(true);
        super.show();
        findViewById(R.id.fans_subscription_content).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
        ((StatisticsService) this.nvContext.getService("statistics")).event("Join Fan Club Page Opened").source(this.source).userPropInc("Join Fan Club Page Opened Total");
    }

    public static void showSubscriptionDialog(NVContext nVContext, String str, int i10, boolean z6, String str2) {
        if (nVContext == null) {
            Log.e("FanClubSubscriptionDialog", "nvContext is null");
            return;
        }
        if (Utils.shouldShowLoginPage(nVContext)) {
            return;
        }
        if (i10 <= 0 && (i10 = ((ConfigService) nVContext.getService("config")).getCommunityId()) <= 0) {
            Log.e("FanClubSubscriptionDialog", "ndcId is 0");
            return;
        }
        final FanClubSubscriptionDialog fanClubSubscriptionDialog = new FanClubSubscriptionDialog(nVContext, str);
        fanClubSubscriptionDialog.source = str2;
        fanClubSubscriptionDialog.setNdcId(i10);
        fanClubSubscriptionDialog.setIsRenew(z6);
        final ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext());
        progressDialog.show();
        fanClubSubscriptionDialog.loadUserInfo(str, new Callback<User>() { // from class: com.narvii.influencer.FanClubSubscriptionDialog.4
            @Override // com.narvii.util.Callback
            public void call(User user) {
                progressDialog.dismiss();
                if (user != null) {
                    fanClubSubscriptionDialog.user = user;
                    fanClubSubscriptionDialog.show();
                }
            }
        });
    }
}
