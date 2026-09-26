package com.narvii.wallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.Constants;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MembershipService {
    public static final String ACTION_ADS_VIDEO_STATS_CHANGED = "com.narvii.action.ADS_VIDEO_STATS_CHANGED";
    public static final String ACTION_COUPONS_CHANGED = "com.narvii.action.COUPONS_CHANGED";
    public static final String ACTION_MEMBERSHIP_CHANGED = "com.narvii.action.MEMBERSHIP_CHANGED";
    public static final String ACTION_WALLET_CHANGED = "com.narvii.action.WALLET_CHANGED";
    public static final long MEMBERSHIP_UPDATE_INTERVAL = 3600000;
    public static final long WALLET_UPDATE_INTERVAL = 300000;
    AccountService account;
    boolean amplitudeMembershipSets;
    boolean amplitudeWalletSets;
    NVContext context;
    LocalBroadcastManager lbm;
    ApiRequest membershipRequest;
    SharedPreferences prefs;
    ApiRequest walletRequest;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.MembershipService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ApiService.ACTION_ERROR_MEMBERSHIP_ISSUE.equals(intent.getAction())) {
                MembershipService.this.refresh(true);
            } else if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MembershipService.this.refresh(false);
                MembershipService membershipService = MembershipService.this;
                membershipService.amplitudeMembershipSets = false;
                membershipService.amplitudeWalletSets = false;
            }
        }
    };
    private final ApiResponseListener<MembershipResponse> membershipListener = new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipService.2
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.membershipRequest) {
                membershipService.membershipRequest = null;
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.membershipRequest) {
                membershipService.membershipRequest = null;
            }
            if (Utils.isEqualsNotNull(apiRequest.tag(), MembershipService.this.account.getUserId())) {
                MembershipService.this.update(membershipResponse);
            }
        }
    };
    private final ApiResponseListener<WalletResponse> walletListener = new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.MembershipService.3
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.walletRequest) {
                membershipService.walletRequest = null;
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.walletRequest) {
                membershipService.walletRequest = null;
            }
            if (Utils.isEqualsNotNull(apiRequest.tag(), MembershipService.this.account.getUserId())) {
                MembershipService.this.updateWalletBalance(walletResponse);
                MembershipService.this.updateAvailableCoupon(walletResponse.wallet.newUserCoupon);
                AdsVideoStats adsVideoStats = walletResponse.wallet.adsVideoStats;
                if (adsVideoStats != null) {
                    MembershipService.this.updateAdsVideoStats(adsVideoStats);
                }
            }
        }
    };

    public boolean canGetNewMemberRewards() {
        CouponDetail couponDetail = (CouponDetail) JacksonUtils.readAs(this.prefs.getString("availableNewMemberRewardCoupon", null), CouponDetail.class);
        return this.account.hasAccount() && couponDetail != null && couponDetail.getValue() > 0;
    }

    public int daysExpired() {
        long j6 = this.prefs.getLong("membershipExpiredTime", 0L);
        if (j6 == 0) {
            return -1;
        }
        long j10 = this.prefs.getLong("membershipTimestamp", 0L) - j6;
        if (j10 <= 0) {
            return -1;
        }
        return (int) (j10 / DateUtils.ONE_DAY);
    }

    public int expiringDays() {
        long j6 = this.prefs.getLong("membershipExpiredTime", 0L);
        if (j6 == 0) {
            return -1;
        }
        long j10 = j6 - this.prefs.getLong("membershipTimestamp", 0L);
        if (j10 <= 0) {
            return -1;
        }
        return (int) (j10 / DateUtils.ONE_DAY);
    }

    public CouponDetail getClaimCoupon() {
        return (CouponDetail) JacksonUtils.readAs(this.prefs.getString("availableNewMemberRewardCoupon", null), CouponDetail.class);
    }

    public Date getMembershipCreatedTime() {
        long j6 = this.prefs.getLong("membershipCreatedTime", 0L);
        return j6 > 0 ? new Date(j6) : new Date();
    }

    public Integer getMembershipStatus() {
        if (this.account.hasAccount() && isMembershipBefore()) {
            return Integer.valueOf(this.prefs.getInt("membershipStatus", 0));
        }
        return null;
    }

    public boolean hasMemberShipExpired() {
        return this.prefs.getInt("membershipStatus", 0) <= 0 && this.prefs.getLong("membershipExpiredTime", 0L) != 0;
    }

    public boolean isMembership() {
        return this.account.hasAccount() && this.prefs.getInt("membershipStatus", 0) > 0;
    }

    public boolean isMembershipBefore() {
        return this.prefs.getLong("membershipCreatedTime", 0L) > 0;
    }

    public boolean isPremiumFeatureEnabled() {
        return this.account.hasAccount();
    }

    public boolean isPremiumItemMembership() {
        return this.account.hasAccount() && this.prefs.getBoolean("isPremiumItemMembership", false);
    }

    public void refreshMembership(boolean z6) {
        if (this.account.hasAccount()) {
            if (!z6 && this.membershipRequest == null) {
                long j6 = this.prefs.getLong("membershipUpdateTime", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis >= j6 && jCurrentTimeMillis <= j6 + 3600000) {
                    return;
                }
            } else if (!z6) {
                return;
            }
            this.membershipRequest = ApiRequest.builder().path("/membership").tag(this.account.getUserId()).build();
            ((ApiService) this.context.getService("api")).exec(this.membershipRequest, this.membershipListener);
        }
    }

    public void refreshWallet(boolean z6) {
        if (this.account.hasAccount()) {
            if (!z6 && this.walletRequest == null) {
                long j6 = this.prefs.getLong("walletUpdateTime", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis >= j6 && jCurrentTimeMillis <= j6 + 300000) {
                    return;
                }
            } else if (!z6) {
                return;
            }
            this.walletRequest = ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(this.account.getUserId()).build();
            ((ApiService) this.context.getService("api")).exec(this.walletRequest, this.walletListener);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0012  */
    public void sendAminoPlusUserProperty(Integer num) {
        String str;
        if (num == null) {
            str = null;
        } else {
            int iIntValue = num.intValue();
            if (iIntValue == 0) {
                str = "disabled";
            } else if (iIntValue != 1) {
                str = null;
            } else {
                str = ConfigApiRequestHelper.ENABLED;
            }
        }
        FirebaseAnalytics.getInstance(this.context.getContext()).c("amino_plus", str);
    }

    public void start() {
        this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.lbm.c(this.receiver, new IntentFilter(ApiService.ACTION_ERROR_MEMBERSHIP_ISSUE));
    }

    public void stop() {
        this.lbm.f(this.receiver);
    }

    public void update(MembershipResponse membershipResponse) {
        long j6;
        long time;
        Date date;
        Date date2;
        int i10 = this.prefs.getInt("membershipStatus", 0);
        Boolean bool = Boolean.TRUE;
        boolean z6 = this.prefs.getBoolean("hasAnyAndroidSubscription", false);
        long j10 = this.prefs.getLong("membershipCreatedTime", 0L);
        long j11 = this.prefs.getLong("membershipExpiredTime", 0L);
        boolean z10 = this.prefs.getBoolean("membershipIsAutoRenew", false);
        MembershipStatus membershipStatus = membershipResponse.membership;
        int i11 = membershipStatus != null ? membershipStatus.membershipStatus : 0;
        boolean z11 = membershipStatus != null && membershipStatus.isPremiumItemMembership;
        Boolean bool2 = membershipResponse.premiumFeatureEnabled;
        boolean z12 = membershipResponse.hasAnyAndroidSubscription;
        if (membershipStatus == null || (date2 = membershipStatus.createdTime) == null) {
            j6 = j10;
            time = 0;
        } else {
            time = date2.getTime();
            j6 = j10;
        }
        MembershipStatus membershipStatus2 = membershipResponse.membership;
        long time2 = (membershipStatus2 == null || (date = membershipStatus2.expiredTime) == null) ? 0L : date.getTime();
        MembershipStatus membershipStatus3 = membershipResponse.membership;
        boolean z13 = membershipStatus3 != null && membershipStatus3.isAutoRenew;
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        SharedPreferences.Editor editorPutLong = editorEdit.putInt("membershipStatus", i11).putBoolean("hasAnyAndroidSubscription", membershipResponse.hasAnyAndroidSubscription).putBoolean("isPremiumItemMembership", z11).putLong("membershipCreatedTime", time);
        long j12 = time;
        long j13 = time2;
        editorPutLong.putLong("membershipExpiredTime", j13).putBoolean("membershipIsAutoRenew", z13).putLong("membershipTimestamp", DateTimeFormatter.parseISO8601(membershipResponse.timestamp).getTime()).putLong("membershipUpdateTime", System.currentTimeMillis());
        boolean z14 = (i10 == i11 && z6 == z12 && j6 == j12 && j11 == j13 && z10 == z13) ? false : true;
        if (bool2 != null && bool2 != bool) {
            editorEdit.putBoolean("premiumFeatureEnabled", bool2.booleanValue());
            z14 = true;
        }
        editorEdit.apply();
        if (z14) {
            this.lbm.d(new Intent(ACTION_MEMBERSHIP_CHANGED));
        }
        if (z14 || !this.amplitudeMembershipSets) {
            String str = null;
            StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) this.context.getService("statistics")).event(null);
            if (bool2 != null) {
                statisticsEventBuilderEvent.userProp("Premium Feature Enabled", bool2.booleanValue());
            } else if (bool != null) {
                statisticsEventBuilderEvent.userProp("Premium Feature Enabled", true);
            }
            MembershipStatus membershipStatus4 = membershipResponse.membership;
            String str2 = "";
            if (membershipStatus4 == null || membershipStatus4.membershipStatus <= 0) {
                boolean z15 = false;
                StatisticsEventBuilder statisticsEventBuilderUserProp = statisticsEventBuilderEvent.userProp("Amino Plus Membership", false).userProp("Membership Payment Type", (String) null).userProp("Auto Renew", false);
                MembershipStatus membershipStatus5 = membershipResponse.membership;
                if (membershipStatus5 != null && membershipStatus5.expiredTime != null) {
                    z15 = true;
                }
                StatisticsEventBuilder statisticsEventBuilderUserProp2 = statisticsEventBuilderUserProp.userProp("Amino Plus Membership Expired", z15);
                MembershipStatus membershipStatus6 = membershipResponse.membership;
                if (membershipStatus6 != null && membershipStatus6.expiredTime != null) {
                    str2 = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT).format(membershipResponse.membership.expiredTime);
                }
                statisticsEventBuilderUserProp2.userProp("Amino Plus Membership Expired Time", str2);
            } else {
                int i12 = membershipStatus4.paymentType;
                if (i12 == 1) {
                    str = "Coins";
                } else if (i12 == 5) {
                    str = "GooglePlay IAP";
                } else if (i12 == 3) {
                    str = "AppStore IAP";
                }
                statisticsEventBuilderEvent.userProp("Amino Plus Membership", true).userProp("Membership Payment Type", str).userProp("Auto Renew", membershipResponse.membership.isAutoRenew).userProp("Amino Plus Membership Expired", false).userProp("Amino Plus Membership Expired Time", "");
            }
            this.amplitudeMembershipSets = true;
        }
        sendAminoPlusUserProperty(Integer.valueOf(i11));
    }

    public void updateAdsVideoStats(AdsVideoStats adsVideoStats) {
        if (adsVideoStats.canWatchVideo) {
            if (this.prefs.getBoolean("adsCanWatchVideo", false)) {
                return;
            }
            this.prefs.edit().remove("adsNextWatchVideoTime").putBoolean("adsCanWatchVideo", true).apply();
            this.lbm.d(new Intent(ACTION_ADS_VIDEO_STATS_CHANGED));
            return;
        }
        if (adsVideoStats.nextWatchVideoInterval > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            this.prefs.edit().putBoolean("adsCanWatchVideo", false).putLong("adsNextWatchVideoTime", System.currentTimeMillis() + adsVideoStats.getNextWatchVideoInterval()).apply();
            this.lbm.d(new Intent(ACTION_ADS_VIDEO_STATS_CHANGED));
        }
    }

    public void updateAvailableCoupon(CouponDetail couponDetail) {
        String string = this.prefs.getString("availableNewMemberRewardCoupon", null);
        String strWriteAsString = JacksonUtils.writeAsString(couponDetail);
        if (TextUtils.equals(string, strWriteAsString)) {
            return;
        }
        if (strWriteAsString == null) {
            this.prefs.edit().remove("availableNewMemberRewardCoupon").apply();
        } else {
            this.prefs.edit().putString("availableNewMemberRewardCoupon", strWriteAsString).apply();
        }
        this.lbm.d(new Intent(ACTION_COUPONS_CHANGED));
    }

    public void updateWalletBalance(WalletResponse walletResponse) {
        if (walletResponse == null || walletResponse.wallet == null) {
            return;
        }
        int i10 = this.prefs.getInt("walletBalance", 0);
        long j6 = this.prefs.getLong("walletBalanceFloat", Double.doubleToLongBits(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE));
        Wallet wallet = walletResponse.wallet;
        int i11 = wallet.totalCoins;
        long jDoubleToLongBits = Double.doubleToLongBits(wallet.totalCoinsFloat);
        this.prefs.edit().putInt("walletBalance", i11).putLong("walletBalanceFloat", jDoubleToLongBits).putLong("walletUpdateTime", System.currentTimeMillis()).apply();
        if (i10 != i11 || j6 != jDoubleToLongBits) {
            this.lbm.d(new Intent(ACTION_WALLET_CHANGED));
        }
        if (i10 == i11 && this.amplitudeWalletSets) {
            return;
        }
        ((StatisticsService) this.context.getService("statistics")).event(null).userProp("Wallet Balance", i11);
        this.amplitudeWalletSets = true;
    }

    public int walletBalance() {
        if (this.account.hasAccount()) {
            return this.prefs.getInt("walletBalance", 0);
        }
        return 0;
    }

    public double walletBalanceFloat() {
        if (this.account.hasAccount()) {
            return !this.prefs.contains("walletBalanceFloat") ? walletBalance() : Double.longBitsToDouble(this.prefs.getLong("walletBalanceFloat", Double.doubleToLongBits(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE)));
        }
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public MembershipService(NVContext nVContext) {
        this.context = nVContext;
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.account = accountService;
        this.prefs = accountService.getPrefs();
    }

    public boolean freeTrial() {
        boolean z6;
        if (isMembership() && !isPremiumItemMembership()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (NVApplication.CLIENT_TYPE == 100 && this.account.hasAccount() && !z6 && !this.prefs.getBoolean("hasAnyAndroidSubscription", false)) {
            return true;
        }
        return false;
    }

    public boolean isAutoRenew() {
        if (!isMembership() || !this.prefs.getBoolean("membershipIsAutoRenew", false)) {
            return false;
        }
        return true;
    }

    public boolean isSubscribeMemberShip() {
        if (isMembership() && !isPremiumItemMembership()) {
            return true;
        }
        return false;
    }

    public void refresh(boolean z6) {
        refreshMembership(z6);
        refreshWallet(z6);
    }
}
