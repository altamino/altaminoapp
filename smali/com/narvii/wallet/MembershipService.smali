.class public Lcom/narvii/wallet/MembershipService;
.super Ljava/lang/Object;
.source "MembershipService.java"


# static fields
.field public static final ACTION_ADS_VIDEO_STATS_CHANGED:Ljava/lang/String; = "com.narvii.action.ADS_VIDEO_STATS_CHANGED"

.field public static final ACTION_COUPONS_CHANGED:Ljava/lang/String; = "com.narvii.action.COUPONS_CHANGED"

.field public static final ACTION_MEMBERSHIP_CHANGED:Ljava/lang/String; = "com.narvii.action.MEMBERSHIP_CHANGED"

.field public static final ACTION_WALLET_CHANGED:Ljava/lang/String; = "com.narvii.action.WALLET_CHANGED"

.field public static final MEMBERSHIP_UPDATE_INTERVAL:J = 0x36ee80L

.field public static final WALLET_UPDATE_INTERVAL:J = 0x493e0L


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field amplitudeMembershipSets:Z

.field amplitudeWalletSets:Z

.field context:Lcom/narvii/app/NVContext;

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final membershipListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/MembershipResponse;",
            ">;"
        }
    .end annotation
.end field

.field membershipRequest:Lcom/narvii/util/http/ApiRequest;

.field prefs:Landroid/content/SharedPreferences;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final walletListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/WalletResponse;",
            ">;"
        }
    .end annotation
.end field

.field walletRequest:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/narvii/wallet/MembershipService$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipService$1;-><init>(Lcom/narvii/wallet/MembershipService;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/narvii/wallet/MembershipService$2;

    const-class v1, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/wallet/MembershipService$2;-><init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 289
    new-instance v0, Lcom/narvii/wallet/MembershipService$3;

    const-class v1, Lcom/narvii/wallet/WalletResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/wallet/MembershipService$3;-><init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 62
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 63
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v0, "account"

    .line 64
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 65
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public canGetNewMemberRewards()Z
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "availableNewMemberRewardCoupon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-class v1, Lcom/narvii/wallet/CouponDetail;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/CouponDetail;

    .line 331
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public daysExpired()I
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "membershipExpiredTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, -0x1

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    return v0

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "membershipTimestamp"

    invoke-interface {v5, v6, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gtz v3, :cond_1

    return v0

    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 143
    div-long/2addr v5, v0

    long-to-int v0, v5

    return v0
.end method

.method public expiringDays()I
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "membershipExpiredTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, -0x1

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    return v0

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "membershipTimestamp"

    invoke-interface {v5, v6, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    return v0

    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 130
    div-long/2addr v3, v0

    long-to-int v0, v3

    return v0
.end method

.method public freeTrial()Z
    .locals 5

    .line 156
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 158
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "hasAnyAndroidSubscription"

    .line 160
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getClaimCoupon()Lcom/narvii/wallet/CouponDetail;
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "availableNewMemberRewardCoupon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    const-class v1, Lcom/narvii/wallet/CouponDetail;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/CouponDetail;

    return-object v0
.end method

.method public getMembershipCreatedTime()Ljava/util/Date;
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "membershipCreatedTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getMembershipStatus()Ljava/lang/Integer;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "membershipStatus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasMemberShipExpired()Z
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "membershipStatus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "membershipExpiredTime"

    .line 113
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAutoRenew()Z
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "membershipIsAutoRenew"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMembership()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "membershipStatus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMembershipBefore()Z
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "membershipCreatedTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPremiumFeatureEnabled()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    return v0
.end method

.method public isPremiumItemMembership()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "isPremiumItemMembership"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSubscribeMemberShip()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh(Z)V
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipService;->refreshMembership(Z)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    return-void
.end method

.method public refreshMembership(Z)V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_2

    .line 172
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    const-string v2, "membershipUpdateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 177
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/membership"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 178
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 179
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->membershipListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    return-void
.end method

.method public refreshWallet(Z)V
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_2

    .line 188
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "walletUpdateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const-wide/32 v4, 0x493e0

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 193
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/wallet"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    .line 194
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 195
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->walletListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public update(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 201
    iget-object v2, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "membershipStatus"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    .line 202
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 203
    iget-object v7, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "hasAnyAndroidSubscription"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 204
    iget-object v9, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "membershipCreatedTime"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 205
    iget-object v9, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v15, "membershipExpiredTime"

    invoke-interface {v9, v15, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 206
    iget-object v9, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "membershipIsAutoRenew"

    invoke-interface {v9, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 208
    iget-object v12, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    iget v12, v12, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 209
    :goto_0
    iget-object v4, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 210
    :goto_1
    iget-object v5, v1, Lcom/narvii/wallet/MembershipResponse;->premiumFeatureEnabled:Ljava/lang/Boolean;

    move-object/from16 v20, v6

    .line 211
    iget-boolean v6, v1, Lcom/narvii/wallet/MembershipResponse;->hasAnyAndroidSubscription:Z

    move-object/from16 v21, v5

    .line 212
    iget-object v5, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v25, v13

    move-wide/from16 v13, v22

    move-wide/from16 v22, v25

    goto :goto_3

    :cond_3
    :goto_2
    move-wide/from16 v22, v13

    const-wide/16 v13, 0x0

    .line 213
    :goto_3
    iget-object v5, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move/from16 v24, v6

    move-wide/from16 v5, v18

    move/from16 v18, v9

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v24, v6

    move/from16 v18, v9

    const-wide/16 v5, 0x0

    .line 214
    :goto_5
    iget-object v9, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v9, :cond_6

    iget-boolean v9, v9, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v9, :cond_6

    move/from16 v19, v7

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    move/from16 v19, v7

    const/4 v9, 0x0

    .line 216
    :goto_6
    iget-object v7, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 217
    invoke-interface {v7, v3, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-boolean v0, v1, Lcom/narvii/wallet/MembershipResponse;->hasAnyAndroidSubscription:Z

    .line 218
    invoke-interface {v3, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isPremiumItemMembership"

    .line 219
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    invoke-interface {v0, v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    invoke-interface {v0, v15, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 223
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v8, "membershipTimestamp"

    invoke-interface {v0, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v8, "membershipUpdateTime"

    invoke-interface {v0, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-ne v2, v12, :cond_8

    move/from16 v0, v19

    move/from16 v2, v24

    if-ne v0, v2, :cond_8

    cmp-long v0, v22, v13

    if-nez v0, :cond_8

    cmp-long v0, v16, v5

    if-nez v0, :cond_8

    move/from16 v0, v18

    if-eq v0, v9, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v2, v21

    if-eqz v21, :cond_9

    if-eq v2, v0, :cond_9

    .line 229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string/jumbo v4, "premiumFeatureEnabled"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x1

    .line 231
    :cond_9
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v3, p0

    if-eqz v5, :cond_a

    .line 234
    iget-object v4, v3, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_a
    return-void
.end method

.method public updateAdsVideoStats(Lcom/narvii/wallet/AdsVideoStats;)V
    .locals 9

    .line 374
    iget-boolean v0, p1, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    const-string v1, "com.narvii.action.ADS_VIDEO_STATS_CHANGED"

    const-string v2, "adsNextWatchVideoTime"

    const/4 v3, 0x0

    const-string v4, "adsCanWatchVideo"

    if-eqz v0, :cond_0

    .line 375
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 379
    :cond_0
    iget-wide v5, p1, Lcom/narvii/wallet/AdsVideoStats;->nextWatchVideoInterval:D

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/narvii/wallet/AdsVideoStats;->getNextWatchVideoInterval()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 381
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "availableNewMemberRewardCoupon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.COUPONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 341
    iget-object v0, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string/jumbo v2, "walletBalance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-string/jumbo v5, "walletBalanceFloat"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 346
    iget-object p1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget v1, p1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 347
    iget-wide v6, p1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 348
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v2, "walletUpdateTime"

    invoke-interface {p1, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v0, v1, :cond_1

    cmp-long p1, v3, v6

    if-eqz p1, :cond_2

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public walletBalance()I
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "walletBalance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public walletBalanceFloat()D
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "walletBalanceFloat"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method
