.class public Lcom/narvii/wallet/MembershipService;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/wallet/MembershipService$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipService$1;-><init>(Lcom/narvii/wallet/MembershipService;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/wallet/MembershipService$2;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/wallet/MembershipResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lcom/narvii/wallet/MembershipService$2;-><init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/wallet/MembershipService$3;

    .line 22
    .line 23
    const-class v1, Lcom/narvii/wallet/WalletResponse;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lcom/narvii/wallet/MembershipService$3;-><init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 41
    .line 42
    const-string v0, "account"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method


# virtual methods
.method public canGetNewMemberRewards()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "availableNewMemberRewardCoupon"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/wallet/CouponDetail;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/wallet/CouponDetail;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public daysExpired()I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "membershipExpiredTime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    const/4 v5, -0x1

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    return v5

    .line 17
    .line 18
    :cond_0
    iget-object v4, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v6, "membershipTimestamp"

    .line 21
    .line 22
    .line 23
    invoke-interface {v4, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    move-result-wide v6

    .line 25
    sub-long/2addr v6, v0

    .line 26
    .line 27
    cmp-long v0, v6, v2

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    return v5

    .line 31
    .line 32
    .line 33
    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 34
    div-long/2addr v6, v0

    .line 35
    long-to-int v0, v6

    .line 36
    return v0
.end method

.method public expiringDays()I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "membershipExpiredTime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    const/4 v5, -0x1

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    return v5

    .line 17
    .line 18
    :cond_0
    iget-object v4, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v6, "membershipTimestamp"

    .line 21
    .line 22
    .line 23
    invoke-interface {v4, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    move-result-wide v6

    .line 25
    sub-long/2addr v0, v6

    .line 26
    .line 27
    cmp-long v2, v0, v2

    .line 28
    .line 29
    if-gtz v2, :cond_1

    .line 30
    return v5

    .line 31
    .line 32
    .line 33
    :cond_1
    const-wide/32 v2, 0x5265c00

    .line 34
    div-long/2addr v0, v2

    .line 35
    long-to-int v0, v0

    .line 36
    return v0
.end method

.method public freeTrial()Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    :goto_0
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 20
    .line 21
    const/16 v4, 0x64

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v3, "hasAnyAndroidSubscription"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v1, v2

    .line 46
    :goto_1
    return v1
.end method

.method public getClaimCoupon()Lcom/narvii/wallet/CouponDetail;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "availableNewMemberRewardCoupon"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/wallet/CouponDetail;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/wallet/CouponDetail;

    .line 18
    return-object v0
.end method

.method public getMembershipCreatedTime()Ljava/util/Date;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "membershipCreatedTime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 26
    :goto_0
    return-object v2
.end method

.method public getMembershipStatus()Ljava/lang/Integer;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v1, "membershipStatus"

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0
.end method

.method public hasMemberShipExpired()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "membershipStatus"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v1, "membershipExpiredTime"

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    cmp-long v0, v0, v3

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2
.end method

.method public isAutoRenew()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "membershipIsAutoRenew"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_0
    return v1
.end method

.method public isMembership()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v2, "membershipStatus"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method public isMembershipBefore()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "membershipCreatedTime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isPremiumFeatureEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPremiumItemMembership()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v2, "isPremiumItemMembership"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method public isSubscribeMemberShip()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public refresh(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipService;->refreshMembership(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 7
    return-void
.end method

.method public refreshMembership(Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v0, "membershipUpdateTime"

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    cmp-long p1, v2, v0

    .line 31
    .line 32
    if-ltz p1, :cond_1

    .line 33
    .line 34
    .line 35
    const-wide/32 v4, 0x36ee80

    .line 36
    add-long/2addr v0, v4

    .line 37
    .line 38
    cmp-long p1, v2, v0

    .line 39
    .line 40
    if-lez p1, :cond_2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v0, "/membership"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    const-string v0, "api"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->membershipListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    :cond_2
    return-void
.end method

.method public refreshWallet(Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "walletUpdateTime"

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    cmp-long p1, v2, v0

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    .line 36
    const-wide/32 v4, 0x493e0

    .line 37
    add-long/2addr v0, v4

    .line 38
    .line 39
    cmp-long p1, v2, v0

    .line 40
    .line 41
    if-lez p1, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string v0, "/wallet"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "timezone"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 88
    .line 89
    const-string v0, "api"

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->walletRequest:Lcom/narvii/util/http/ApiRequest;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->walletListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 103
    :cond_2
    return-void
.end method

.method public sendAminoPlusUserProperty(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string p1, "enabled"

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    const-string p1, "disabled"

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 20
    .line 21
    :goto_1
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "amino_plus"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    new-instance v2, Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v3, "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

.method public update(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v3, "membershipStatus"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v2

    .line 14
    .line 15
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v7, "hasAnyAndroidSubscription"

    .line 20
    .line 21
    .line 22
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result v6

    .line 24
    .line 25
    iget-object v8, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    const-string v9, "membershipCreatedTime"

    .line 28
    .line 29
    const-wide/16 v10, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 33
    move-result-wide v12

    .line 34
    .line 35
    iget-object v8, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v14, "membershipExpiredTime"

    .line 38
    .line 39
    .line 40
    invoke-interface {v8, v14, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 41
    move-result-wide v15

    .line 42
    .line 43
    iget-object v8, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    const-string v10, "membershipIsAutoRenew"

    .line 46
    .line 47
    .line 48
    invoke-interface {v8, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    move-result v8

    .line 50
    .line 51
    iget-object v11, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 52
    .line 53
    if-nez v11, :cond_0

    .line 54
    .line 55
    :goto_0
    move-object/from16 v19, v5

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    iget v4, v11, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :goto_1
    if-eqz v11, :cond_1

    .line 62
    .line 63
    iget-boolean v5, v11, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    move/from16 v20, v8

    .line 68
    const/4 v5, 0x1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_1
    move/from16 v20, v8

    .line 72
    const/4 v5, 0x0

    .line 73
    .line 74
    :goto_2
    iget-object v8, v1, Lcom/narvii/wallet/MembershipResponse;->premiumFeatureEnabled:Ljava/lang/Boolean;

    .line 75
    .line 76
    move-object/from16 v21, v8

    .line 77
    .line 78
    iget-boolean v8, v1, Lcom/narvii/wallet/MembershipResponse;->hasAnyAndroidSubscription:Z

    .line 79
    .line 80
    if-eqz v11, :cond_3

    .line 81
    .line 82
    iget-object v11, v11, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 83
    .line 84
    if-nez v11, :cond_2

    .line 85
    goto :goto_3

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 89
    move-result-wide v22

    .line 90
    .line 91
    move-wide/from16 v28, v12

    .line 92
    .line 93
    move-wide/from16 v11, v22

    .line 94
    .line 95
    move-wide/from16 v22, v28

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_3
    :goto_3
    move-wide/from16 v22, v12

    .line 99
    .line 100
    const-wide/16 v11, 0x0

    .line 101
    .line 102
    :goto_4
    iget-object v13, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 103
    .line 104
    if-eqz v13, :cond_5

    .line 105
    .line 106
    iget-object v13, v13, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 107
    .line 108
    if-nez v13, :cond_4

    .line 109
    goto :goto_5

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    .line 113
    move-result-wide v17

    .line 114
    .line 115
    move-wide/from16 v24, v17

    .line 116
    goto :goto_6

    .line 117
    .line 118
    :cond_5
    :goto_5
    const-wide/16 v24, 0x0

    .line 119
    .line 120
    :goto_6
    iget-object v13, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 121
    .line 122
    if-eqz v13, :cond_6

    .line 123
    .line 124
    iget-boolean v13, v13, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 125
    .line 126
    if-eqz v13, :cond_6

    .line 127
    .line 128
    move-wide/from16 v17, v15

    .line 129
    const/4 v13, 0x1

    .line 130
    goto :goto_7

    .line 131
    .line 132
    :cond_6
    move-wide/from16 v17, v15

    .line 133
    const/4 v13, 0x0

    .line 134
    .line 135
    :goto_7
    iget-object v15, v0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 136
    .line 137
    .line 138
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 139
    move-result-object v15

    .line 140
    .line 141
    .line 142
    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    iget-boolean v0, v1, Lcom/narvii/wallet/MembershipResponse;->hasAnyAndroidSubscription:Z

    .line 146
    .line 147
    .line 148
    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    const-string v3, "isPremiumItemMembership"

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v9, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    move-wide/from16 v26, v11

    .line 162
    .line 163
    move-wide/from16 v11, v24

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v14, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    iget-object v3, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 181
    move-result-wide v9

    .line 182
    .line 183
    const-string v3, "membershipTimestamp"

    .line 184
    .line 185
    .line 186
    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    const-string v3, "membershipUpdateTime"

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    move-result-wide v9

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    .line 198
    if-ne v2, v4, :cond_8

    .line 199
    .line 200
    if-ne v6, v8, :cond_8

    .line 201
    .line 202
    cmp-long v0, v22, v26

    .line 203
    .line 204
    if-nez v0, :cond_8

    .line 205
    .line 206
    cmp-long v0, v17, v11

    .line 207
    .line 208
    if-nez v0, :cond_8

    .line 209
    .line 210
    move/from16 v0, v20

    .line 211
    .line 212
    if-eq v0, v13, :cond_7

    .line 213
    goto :goto_8

    .line 214
    :cond_7
    const/4 v0, 0x0

    .line 215
    goto :goto_9

    .line 216
    :cond_8
    :goto_8
    const/4 v0, 0x1

    .line 217
    .line 218
    :goto_9
    move-object/from16 v2, v19

    .line 219
    .line 220
    move-object/from16 v3, v21

    .line 221
    .line 222
    if-eqz v21, :cond_9

    .line 223
    .line 224
    if-eq v3, v2, :cond_9

    .line 225
    .line 226
    const-string v0, "premiumFeatureEnabled"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    move-result v5

    .line 231
    .line 232
    .line 233
    invoke-interface {v15, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const/4 v0, 0x1

    .line 235
    .line 236
    .line 237
    :cond_9
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    .line 239
    move-object/from16 v5, p0

    .line 240
    .line 241
    if-eqz v0, :cond_a

    .line 242
    .line 243
    iget-object v6, v5, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 244
    .line 245
    new-instance v7, Landroid/content/Intent;

    .line 246
    .line 247
    const-string v8, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 248
    .line 249
    .line 250
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 254
    .line 255
    :cond_a
    if-nez v0, :cond_b

    .line 256
    .line 257
    iget-boolean v0, v5, Lcom/narvii/wallet/MembershipService;->amplitudeMembershipSets:Z

    .line 258
    .line 259
    if-nez v0, :cond_14

    .line 260
    .line 261
    :cond_b
    iget-object v0, v5, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 262
    .line 263
    const-string v6, "statistics"

    .line 264
    .line 265
    .line 266
    invoke-interface {v0, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    move-result-object v0

    .line 268
    .line 269
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 270
    const/4 v6, 0x0

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v6}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    const-string v7, "Premium Feature Enabled"

    .line 277
    .line 278
    if-eqz v3, :cond_c

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 282
    move-result v2

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v7, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 286
    goto :goto_a

    .line 287
    .line 288
    :cond_c
    if-eqz v2, :cond_d

    .line 289
    const/4 v2, 0x1

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v7, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 293
    .line 294
    :cond_d
    :goto_a
    iget-object v2, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 295
    .line 296
    const-string v3, ""

    .line 297
    .line 298
    const-string v7, "Amino Plus Membership Expired Time"

    .line 299
    .line 300
    const-string v8, "Amino Plus Membership Expired"

    .line 301
    .line 302
    const-string v9, "Auto Renew"

    .line 303
    .line 304
    const-string v10, "Membership Payment Type"

    .line 305
    .line 306
    const-string v11, "Amino Plus Membership"

    .line 307
    .line 308
    if-eqz v2, :cond_11

    .line 309
    .line 310
    iget v12, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 311
    .line 312
    if-lez v12, :cond_11

    .line 313
    .line 314
    iget v2, v2, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    .line 315
    const/4 v12, 0x1

    .line 316
    .line 317
    if-ne v2, v12, :cond_f

    .line 318
    .line 319
    const-string v6, "Coins"

    .line 320
    :cond_e
    :goto_b
    const/4 v2, 0x1

    .line 321
    goto :goto_c

    .line 322
    :cond_f
    const/4 v12, 0x5

    .line 323
    .line 324
    if-ne v2, v12, :cond_10

    .line 325
    .line 326
    const-string v6, "GooglePlay IAP"

    .line 327
    goto :goto_b

    .line 328
    :cond_10
    const/4 v12, 0x3

    .line 329
    .line 330
    if-ne v2, v12, :cond_e

    .line 331
    .line 332
    const-string v6, "AppStore IAP"

    .line 333
    goto :goto_b

    .line 334
    .line 335
    .line 336
    :goto_c
    invoke-virtual {v0, v11, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v10, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 341
    move-result-object v0

    .line 342
    .line 343
    iget-object v1, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 344
    .line 345
    iget-boolean v1, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v9, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 349
    move-result-object v0

    .line 350
    const/4 v2, 0x0

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v8, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v7, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 358
    :goto_d
    const/4 v0, 0x1

    .line 359
    goto :goto_e

    .line 360
    :cond_11
    const/4 v2, 0x0

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v11, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 364
    move-result-object v0

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v10, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v9, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 372
    move-result-object v0

    .line 373
    .line 374
    iget-object v6, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 375
    .line 376
    if-eqz v6, :cond_12

    .line 377
    .line 378
    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 379
    .line 380
    if-eqz v6, :cond_12

    .line 381
    const/4 v2, 0x1

    .line 382
    .line 383
    .line 384
    :cond_12
    invoke-virtual {v0, v8, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 385
    move-result-object v0

    .line 386
    .line 387
    iget-object v2, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 388
    .line 389
    if-eqz v2, :cond_13

    .line 390
    .line 391
    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 392
    .line 393
    if-eqz v2, :cond_13

    .line 394
    .line 395
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 396
    .line 397
    .line 398
    const-string/jumbo v3, "yyyy-MM-dd"

    .line 399
    .line 400
    .line 401
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    iget-object v1, v1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 404
    .line 405
    iget-object v1, v1, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 409
    move-result-object v3

    .line 410
    .line 411
    .line 412
    :cond_13
    invoke-virtual {v0, v7, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 413
    goto :goto_d

    .line 414
    .line 415
    :goto_e
    iput-boolean v0, v5, Lcom/narvii/wallet/MembershipService;->amplitudeMembershipSets:Z

    .line 416
    .line 417
    .line 418
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    move-result-object v0

    .line 420
    .line 421
    .line 422
    invoke-virtual {v5, v0}, Lcom/narvii/wallet/MembershipService;->sendAminoPlusUserProperty(Ljava/lang/Integer;)V

    .line 423
    return-void
.end method

.method public updateAdsVideoStats(Lcom/narvii/wallet/AdsVideoStats;)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    .line 3
    .line 4
    const-string v1, "com.narvii.action.ADS_VIDEO_STATS_CHANGED"

    .line 5
    .line 6
    const-string v2, "adsNextWatchVideoTime"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    const-string v4, "adsCanWatchVideo"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 40
    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-wide v5, p1, Lcom/narvii/wallet/AdsVideoStats;->nextWatchVideoInterval:D

    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    cmpl-double v0, v5, v7

    .line 55
    .line 56
    if-lez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/wallet/AdsVideoStats;->getNextWatchVideoInterval()J

    .line 74
    move-result-wide v5

    .line 75
    add-long/2addr v3, v5

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 85
    .line 86
    new-instance v0, Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "availableNewMemberRewardCoupon"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 51
    .line 52
    new-instance v0, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v1, "com.narvii.action.COUPONS_CHANGED"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 61
    :cond_1
    return-void
.end method

.method public updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V
    .locals 10

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "walletBalance"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    .line 28
    const-string/jumbo v5, "walletBalanceFloat"

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 32
    move-result-wide v3

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 35
    .line 36
    iget v1, p1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 37
    .line 38
    iget-wide v6, p1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 42
    move-result-wide v6

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    const-string/jumbo v2, "walletUpdateTime"

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    move-result-wide v8

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    if-ne v0, v1, :cond_1

    .line 73
    .line 74
    cmp-long p1, v3, v6

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 79
    .line 80
    new-instance v2, Landroid/content/Intent;

    .line 81
    .line 82
    const-string v3, "com.narvii.action.WALLET_CHANGED"

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 89
    .line 90
    :cond_2
    if-ne v0, v1, :cond_3

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/narvii/wallet/MembershipService;->amplitudeWalletSets:Z

    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/MembershipService;->context:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    const-string v0, "statistics"

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 105
    const/4 v0, 0x0

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string v0, "Wallet Balance"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 115
    const/4 p1, 0x1

    .line 116
    .line 117
    iput-boolean p1, p0, Lcom/narvii/wallet/MembershipService;->amplitudeWalletSets:Z

    .line 118
    :cond_4
    :goto_0
    return-void
.end method

.method public walletBalance()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "walletBalance"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 19
    :cond_0
    return v1
.end method

.method public walletBalanceFloat()D
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "walletBalanceFloat"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 25
    move-result v0

    .line 26
    int-to-double v0, v0

    .line 27
    return-wide v0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipService;->prefs:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 41
    move-result-wide v0

    .line 42
    return-wide v0

    .line 43
    :cond_1
    return-wide v1
.end method
