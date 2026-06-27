package com.narvii.wallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
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
                MembershipService.this.amplitudeMembershipSets = false;
            }
        }
    };
    private final ApiResponseListener<MembershipResponse> membershipListener = new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipService.2
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

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.membershipRequest) {
                membershipService.membershipRequest = null;
            }
        }
    };
    private final ApiResponseListener<WalletResponse> walletListener = new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.MembershipService.3
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

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            MembershipService membershipService = MembershipService.this;
            if (apiRequest == membershipService.walletRequest) {
                membershipService.walletRequest = null;
            }
        }
    };

    public MembershipService(NVContext nVContext) {
        this.context = nVContext;
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
        this.account = (AccountService) nVContext.getService("account");
        this.prefs = this.account.getPrefs();
    }

    public void start() {
        this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.lbm.registerReceiver(this.receiver, new IntentFilter(ApiService.ACTION_ERROR_MEMBERSHIP_ISSUE));
    }

    public void stop() {
        this.lbm.unregisterReceiver(this.receiver);
    }

    public boolean isMembership() {
        return this.account.hasAccount() && this.prefs.getInt("membershipStatus", 0) > 0;
    }

    public Integer getMembershipStatus() {
        if (this.account.hasAccount() && isMembershipBefore()) {
            return Integer.valueOf(this.prefs.getInt("membershipStatus", 0));
        }
        return null;
    }

    public boolean isSubscribeMemberShip() {
        return isMembership() && !isPremiumItemMembership();
    }

    public boolean isAutoRenew() {
        return isMembership() && this.prefs.getBoolean("membershipIsAutoRenew", false);
    }

    public boolean isPremiumFeatureEnabled() {
        return this.account.hasAccount();
    }

    public boolean hasMemberShipExpired() {
        return this.prefs.getInt("membershipStatus", 0) <= 0 && this.prefs.getLong("membershipExpiredTime", 0L) != 0;
    }

    public boolean isPremiumItemMembership() {
        return this.account.hasAccount() && this.prefs.getBoolean("isPremiumItemMembership", false);
    }

    public int expiringDays() {
        long j = this.prefs.getLong("membershipExpiredTime", 0L);
        if (j == 0) {
            return -1;
        }
        long j2 = j - this.prefs.getLong("membershipTimestamp", 0L);
        if (j2 <= 0) {
            return -1;
        }
        return (int) (j2 / DateUtils.ONE_DAY);
    }

    public int daysExpired() {
        long j = this.prefs.getLong("membershipExpiredTime", 0L);
        if (j == 0) {
            return -1;
        }
        long j2 = this.prefs.getLong("membershipTimestamp", 0L) - j;
        if (j2 <= 0) {
            return -1;
        }
        return (int) (j2 / DateUtils.ONE_DAY);
    }

    public boolean isMembershipBefore() {
        return this.prefs.getLong("membershipCreatedTime", 0L) > 0;
    }

    public Date getMembershipCreatedTime() {
        long j = this.prefs.getLong("membershipCreatedTime", 0L);
        return j > 0 ? new Date(j) : new Date();
    }

    public boolean freeTrial() {
        return NVApplication.CLIENT_TYPE == 100 && this.account.hasAccount() && !(isMembership() && !isPremiumItemMembership()) && !this.prefs.getBoolean("hasAnyAndroidSubscription", false);
    }

    public void refresh(boolean z) {
        refreshMembership(z);
        refreshWallet(z);
    }

    public void refreshMembership(boolean z) {
        if (this.account.hasAccount()) {
            if (!z && this.membershipRequest == null) {
                long j = this.prefs.getLong("membershipUpdateTime", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                z = jCurrentTimeMillis < j || jCurrentTimeMillis > j + 3600000;
            }
            if (z) {
                this.membershipRequest = ApiRequest.builder().path("/membership").tag(this.account.getUserId()).build();
                ((ApiService) this.context.getService("api")).exec(this.membershipRequest, this.membershipListener);
            }
        }
    }

    public void refreshWallet(boolean z) {
        if (this.account.hasAccount()) {
            if (!z && this.walletRequest == null) {
                long j = this.prefs.getLong("walletUpdateTime", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                z = jCurrentTimeMillis < j || jCurrentTimeMillis > j + 300000;
            }
            if (z) {
                this.walletRequest = ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(this.account.getUserId()).build();
                ((ApiService) this.context.getService("api")).exec(this.walletRequest, this.walletListener);
            }
        }
    }

    public void update(MembershipResponse membershipResponse) {
        long j;
        long time;
        boolean z;
        boolean z2;
        long time2;
        boolean z3;
        boolean z4;
        Date date;
        Date date2;
        int i = this.prefs.getInt("membershipStatus", 0);
        boolean z5 = this.prefs.getBoolean("hasAnyAndroidSubscription", false);
        long j2 = this.prefs.getLong("membershipCreatedTime", 0L);
        long j3 = this.prefs.getLong("membershipExpiredTime", 0L);
        boolean z6 = this.prefs.getBoolean("membershipIsAutoRenew", false);
        MembershipStatus membershipStatus = membershipResponse.membership;
        int i2 = membershipStatus == null ? 0 : membershipStatus.membershipStatus;
        MembershipStatus membershipStatus2 = membershipResponse.membership;
        boolean z7 = membershipStatus2 != null && membershipStatus2.isPremiumItemMembership;
        Boolean bool = membershipResponse.premiumFeatureEnabled;
        boolean z8 = membershipResponse.hasAnyAndroidSubscription;
        MembershipStatus membershipStatus3 = membershipResponse.membership;
        if (membershipStatus3 == null || (date2 = membershipStatus3.createdTime) == null) {
            j = j2;
            time = 0;
        } else {
            time = date2.getTime();
            j = j2;
        }
        MembershipStatus membershipStatus4 = membershipResponse.membership;
        if (membershipStatus4 == null || (date = membershipStatus4.expiredTime) == null) {
            z = z8;
            z2 = z6;
            time2 = 0;
        } else {
            z = z8;
            time2 = date.getTime();
            z2 = z6;
        }
        MembershipStatus membershipStatus5 = membershipResponse.membership;
        if (membershipStatus5 == null || !membershipStatus5.isAutoRenew) {
            z3 = z5;
            z4 = false;
        } else {
            z3 = z5;
            z4 = true;
        }
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putInt("membershipStatus", i2).putBoolean("hasAnyAndroidSubscription", membershipResponse.hasAnyAndroidSubscription).putBoolean("isPremiumItemMembership", z7).putLong("membershipCreatedTime", time).putLong("membershipExpiredTime", time2).putBoolean("membershipIsAutoRenew", z4).putLong("membershipTimestamp", DateTimeFormatter.parseISO8601(membershipResponse.timestamp).getTime()).putLong("membershipUpdateTime", System.currentTimeMillis());
        boolean z9 = (i == i2 && z3 == z && j == time && j3 == time2 && z2 == z4) ? false : true;
        if (bool != null && bool != true) {
            editorEdit.putBoolean("premiumFeatureEnabled", bool.booleanValue());
            z9 = true;
        }
        editorEdit.apply();
        if (z9) {
            this.lbm.sendBroadcast(new Intent(ACTION_MEMBERSHIP_CHANGED));
        }
    }

    public int walletBalance() {
        if (this.account.hasAccount()) {
            return this.prefs.getInt("walletBalance", 0);
        }
        return 0;
    }

    public double walletBalanceFloat() {
        if (!this.account.hasAccount()) {
            return 0.0d;
        }
        if (!this.prefs.contains("walletBalanceFloat")) {
            return walletBalance();
        }
        return Double.longBitsToDouble(this.prefs.getLong("walletBalanceFloat", Double.doubleToLongBits(0.0d)));
    }

    public boolean canGetNewMemberRewards() {
        CouponDetail couponDetail = (CouponDetail) JacksonUtils.readAs(this.prefs.getString("availableNewMemberRewardCoupon", null), CouponDetail.class);
        return this.account.hasAccount() && couponDetail != null && couponDetail.getValue() > 0;
    }

    public CouponDetail getClaimCoupon() {
        return (CouponDetail) JacksonUtils.readAs(this.prefs.getString("availableNewMemberRewardCoupon", null), CouponDetail.class);
    }

    public void updateWalletBalance(WalletResponse walletResponse) {
        if (walletResponse == null || walletResponse.wallet == null) {
            return;
        }
        int i = this.prefs.getInt("walletBalance", 0);
        long j = this.prefs.getLong("walletBalanceFloat", Double.doubleToLongBits(0.0d));
        Wallet wallet = walletResponse.wallet;
        int i2 = wallet.totalCoins;
        long jDoubleToLongBits = Double.doubleToLongBits(wallet.totalCoinsFloat);
        this.prefs.edit().putInt("walletBalance", i2).putLong("walletBalanceFloat", jDoubleToLongBits).putLong("walletUpdateTime", System.currentTimeMillis()).apply();
        if (i == i2 && j == jDoubleToLongBits) {
            return;
        }
        this.lbm.sendBroadcast(new Intent(ACTION_WALLET_CHANGED));
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
        this.lbm.sendBroadcast(new Intent(ACTION_COUPONS_CHANGED));
    }

    public void updateAdsVideoStats(AdsVideoStats adsVideoStats) {
        if (adsVideoStats.canWatchVideo) {
            if (this.prefs.getBoolean("adsCanWatchVideo", false)) {
                return;
            }
            this.prefs.edit().remove("adsNextWatchVideoTime").putBoolean("adsCanWatchVideo", true).apply();
            this.lbm.sendBroadcast(new Intent(ACTION_ADS_VIDEO_STATS_CHANGED));
            return;
        }
        if (adsVideoStats.nextWatchVideoInterval > 0.0d) {
            this.prefs.edit().putBoolean("adsCanWatchVideo", false).putLong("adsNextWatchVideoTime", System.currentTimeMillis() + adsVideoStats.getNextWatchVideoInterval()).apply();
            this.lbm.sendBroadcast(new Intent(ACTION_ADS_VIDEO_STATS_CHANGED));
        }
    }
}
