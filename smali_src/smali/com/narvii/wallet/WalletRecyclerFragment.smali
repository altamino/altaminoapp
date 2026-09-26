.class public Lcom/narvii/wallet/WalletRecyclerFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/pushservice/PushService$PushListener;
.implements Lcom/google/android/material/appbar/AppBarLayout$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$TapdaqMediationAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$AdMobMediationAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$HeaderBuyAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$WalletStoreAdapter;
    }
.end annotation


# instance fields
.field private adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private final billingManager:Lcom/narvii/wallet/CoinBillingManager;

.field businessCoinsEnabled:Z

.field private canWatchVideo:Z

.field private claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

.field private countDownText:Landroid/widget/TextView;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field couponListResponse:Lcom/narvii/wallet/CouponListResponse;

.field private dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field dfmt:Ljava/text/DecimalFormat;

.field private header:Landroid/view/View;

.field private logged:Z

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

.field private noRefresh:Z

.field optinAdsResponse:Lcom/narvii/wallet/optinads/OptinAdsResponse;

.field private productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private remainingTime:J

.field private response:Lcom/narvii/wallet/WalletResponse;

.field private rewardVideoCell:Landroid/view/View;

.field rewardVideoCoin:I

.field private speedDialAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field totalBusinessCoins:I

.field totalBusinessCoinsFloat:D

.field private totalCoinsFloat:D

.field private updating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/wallet/CoinBillingManager;->getInstance()Lcom/narvii/wallet/CoinBillingManager;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$3;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$3;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    new-instance v0, Ljava/text/DecimalFormat;

    .line 19
    .line 20
    const-string v1, "0.00"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->canWatchVideo:Z

    .line 29
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/wallet/WalletRecyclerFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/wallet/WalletRecyclerFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->remainingTime:J

    return-wide v0
.end method

.method static bridge synthetic F(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->speedDialAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/AdsVideoStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->canWatchVideo:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/wallet/WalletRecyclerFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->remainingTime:J

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/wallet/WalletRecyclerFragment;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalCoinsFloat:D

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->updating:Z

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->hideRefreshLayout()V

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendWalletRequest()V

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/widget/NVDrawableAnimatedView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/wallet/WalletRecyclerFragment;->setupAnimatedIcon(Lcom/narvii/widget/NVDrawableAnimatedView;II)V

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/wallet/WalletRecyclerFragment;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateCountDownText(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->showBottomAdsViewIfOptinAds()V

    .line 4
    return-void
.end method

.method private hideRefreshLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyAdapter$4()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/narvii/wallet/WalletResponse;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V

    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$2()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "navigator"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 13
    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "https://support.altamino.top/hc/sections/360000385733-Amino-"

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-string v3, "android.intent.action.VIEW"

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    .line 8
    :cond_0
    return-void
.end method

.method private notifyAdapter()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/wallet/r0;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/wallet/r0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method private onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 8

    .line 1
    .line 2
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->logged:Z

    .line 8
    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    const-string p1, "membership"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->getMembershipStatus()Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "logging"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 30
    .line 31
    const-string v1, "balance"

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    .line 35
    const-string v4, "WalletViewEntered"

    .line 36
    const/4 v5, 0x1

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    new-array p1, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v1, p1, v2

    .line 43
    .line 44
    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 45
    .line 46
    iget v1, v1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    aput-object v1, p1, v5

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v4, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v6, 0x4

    .line 58
    .line 59
    new-array v6, v6, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v7, "membershipStatus"

    .line 62
    .line 63
    aput-object v7, v6, v2

    .line 64
    .line 65
    aput-object p1, v6, v5

    .line 66
    .line 67
    aput-object v1, v6, v3

    .line 68
    .line 69
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 70
    .line 71
    iget p1, p1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 76
    const/4 v1, 0x3

    .line 77
    .line 78
    aput-object p1, v6, v1

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v4, v6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    :goto_0
    iput-boolean v5, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->logged:Z

    .line 84
    .line 85
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown()Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    .line 111
    move-result p1

    .line 112
    .line 113
    if-lez p1, :cond_3

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 116
    .line 117
    iget-object v0, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;)V

    .line 123
    .line 124
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 125
    .line 126
    iget-object p2, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    iget-object p2, p2, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 p2, 0x0

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V

    .line 136
    return-void
.end method

.method public static synthetic s(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->lambda$notifyAdapter$4()V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendClaimRewardVideoLog(Z)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "ClaimRewardVideo"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "canWatchVideo"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 26
    return-void
.end method

.method private sendCouponListRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/coupon/new-user-coupon"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "api"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$4;

    .line 25
    .line 26
    const-class v3, Lcom/narvii/wallet/CouponListResponse;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$4;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 33
    return-void
.end method

.method private sendOptionAdsRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/wallet/setting/ads"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "timezone"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "api"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$5;

    .line 44
    .line 45
    const-class v3, Lcom/narvii/wallet/optinads/OptinAdsResponse;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$5;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 52
    return-void
.end method

.method private sendWalletRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/wallet"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "timezone"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$6;

    .line 40
    .line 41
    const-class v3, Lcom/narvii/wallet/WalletResponse;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$6;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    return-void
.end method

.method private setupAnimatedIcon(Lcom/narvii/widget/NVDrawableAnimatedView;II)V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 8
    const/4 v2, 0x5

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p3, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 12
    .line 13
    const/16 p3, 0x20

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 32
    .line 33
    .line 34
    const v3, 0x7f080a31

    .line 35
    const/4 v4, 0x7

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v3, v4}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const/16 v5, 0x5dc

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    const v6, 0x3e99999a    # 0.3f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v3, v4}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-wide/16 v7, 0x1f4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v7, v8}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v3, v4}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    const-wide/16 v3, 0x3e8

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3, v4}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, p2, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    new-instance p2, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 141
    .line 142
    .line 143
    const p3, 0x7f0800b1

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p3, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 147
    .line 148
    const/16 p3, 0x14

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    const/16 p3, 0xa

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v2, v2, p3, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 158
    move-result-object p2

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVDrawableAnimatedView;->replaceLayerList(Ljava/util/ArrayList;)V

    .line 169
    return-void
.end method

.method public static synthetic t(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->lambda$onViewCreated$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->lambda$onCreate$1(Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method private updateCountDownText(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->rewardVideoCell:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0a03be

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->updating:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    const p1, 0x7f121218

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x1

    .line 50
    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, p1, p2}, Lcom/narvii/util/DateTimeFormatter;->formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    .line 64
    aput-object p1, v1, p2

    .line 65
    .line 66
    .line 67
    const p1, 0x7f12100a

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_3
    return-void
.end method

.method public static synthetic v(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->lambda$onCreate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->lambda$onViewCreated$2()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/CoinBillingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/wallet/WalletRecyclerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->canWatchVideo:Z

    return p0
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendOptionAdsRequest()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->speedDialAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->qualified(Lcom/narvii/app/NVContext;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 41
    .line 42
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 59
    .line 60
    :cond_0
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$TapdaqMediationAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$TapdaqMediationAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 75
    .line 76
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$AdMobMediationAdapter;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$AdMobMediationAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 85
    .line 86
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$HeaderBuyAdapter;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$HeaderBuyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$WalletStoreAdapter;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletStoreAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 117
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000a

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wallet_detail"

    return-object v0
.end method

.method public getResponse()Lcom/narvii/wallet/WalletResponse;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a094b

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "Source"

    .line 16
    .line 17
    const-string v1, "Wallet"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 24
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "ads"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/wallet/AdsService;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f120d24

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 22
    .line 23
    const-string v1, "membership"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    new-instance v2, Landroid/content/IntentFilter;

    .line 36
    .line 37
    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    new-instance v2, Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v3, "com.narvii.action.WALLET_CHANGED"

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/wallet/CoinBillingManager;->getQueryInAppFinishedLive()Landroidx/lifecycle/MutableLiveData;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/wallet/p0;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/narvii/wallet/p0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/narvii/wallet/CoinBillingManager;->getOnWalletChangedLive()La;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    new-instance v2, Lcom/narvii/wallet/q0;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p0}, Lcom/narvii/wallet/q0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0, v2}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 86
    .line 87
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$1;

    .line 88
    .line 89
    const-class v3, Lcom/narvii/wallet/ProductListResponse;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$1;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/narvii/wallet/CoinBillingManager;->fetchInAppProducts(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 96
    .line 97
    if-nez p1, :cond_0

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    .line 100
    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    .line 103
    const-string/jumbo p1, "statistics"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 110
    .line 111
    const-string v0, "Wallet"

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    const-string v0, "Source"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    const-string v0, "Wallet Total"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 131
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f121287

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f080a39

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0342

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->r(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 14
    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 11
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPause()V

    .line 4
    return-void
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 3
    .line 4
    const/16 v0, 0x33

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "/wallet"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "timezone"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "api"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$2;

    .line 46
    .line 47
    const-class v2, Lcom/narvii/wallet/WalletResponse;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$2;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendOptionAdsRequest()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    .line 10
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onResume()V

    .line 4
    .line 5
    const-string v0, "my_wallet"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->setContext(Landroid/content/Context;)V

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 29
    .line 30
    :cond_1
    :goto_0
    const-string v0, "push"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 40
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "push"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->setContext(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 21
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a101b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a0e12

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 36
    .line 37
    const-string p2, "config"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    filled-new-array {p2}, [I

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0a0126

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 75
    .line 76
    .line 77
    const p2, 0x7f0a0550

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/nested/FakeActionBar;

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const-string p2, "#2DA4E7"

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 91
    move-result p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    .line 96
    .line 97
    const p2, 0x7f120d24

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/narvii/nested/FakeActionBar;->setTitle(I)V

    .line 101
    .line 102
    new-instance p2, Lcom/narvii/wallet/s0;

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p0}, Lcom/narvii/wallet/s0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f080a39

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, p2}, Lcom/narvii/nested/FakeActionBar;->setRightView(ILcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V

    .line 112
    .line 113
    :cond_0
    new-instance p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 119
    .line 120
    new-instance p2, Lcom/narvii/wallet/t0;

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, p0}, Lcom/narvii/wallet/t0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 129
    .line 130
    const-string p2, "Source"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    iput-object p2, p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;->source:Ljava/lang/String;

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinBillingManager;->getProductList()Ljava/util/List;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 146
    move-result p2

    .line 147
    .line 148
    if-nez p2, :cond_1

    .line 149
    .line 150
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    .line 151
    .line 152
    if-eqz p2, :cond_1

    .line 153
    .line 154
    iget-object p2, p2, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageDataSource:Lcom/narvii/paging/source/PageDataSource;

    .line 155
    const/4 v0, 0x0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1, v0}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 159
    :cond_1
    return-void
.end method

.method updateHeader()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a01ac

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalCoinsFloat:D

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0a0de5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0a094b

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    const v3, 0x7f0a094e

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 62
    .line 63
    .line 64
    const v4, 0x7f0a06eb

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    check-cast v3, Lcom/narvii/widget/ThumbImageView;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 76
    move-result v4

    .line 77
    .line 78
    .line 79
    const v5, 0x7f0807b0

    .line 80
    .line 81
    .line 82
    const v6, 0x7f0a0e51

    .line 83
    .line 84
    const-string v7, "#40000000"

    .line 85
    .line 86
    .line 87
    const v8, 0x7f0807ae

    .line 88
    .line 89
    if-eqz v4, :cond_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    move-result v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    const v1, 0x7f120c91

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_0
    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 138
    move-result v4

    .line 139
    const/4 v9, 0x1

    .line 140
    .line 141
    if-ltz v4, :cond_1

    .line 142
    .line 143
    iget-object v10, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 147
    move-result v10

    .line 148
    .line 149
    if-nez v10, :cond_1

    .line 150
    move v10, v9

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    move v10, v1

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object v11

    .line 157
    .line 158
    if-nez v10, :cond_2

    .line 159
    goto :goto_1

    .line 160
    .line 161
    .line 162
    :cond_2
    const v8, 0x7f0807af

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 166
    move-result-object v8

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v8}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    if-nez v10, :cond_3

    .line 172
    .line 173
    .line 174
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 175
    move-result v7

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    move v7, v1

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-virtual {v3, v7}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    check-cast v0, Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 191
    .line 192
    const/high16 v5, 0x66000000

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    if-nez v4, :cond_4

    .line 201
    .line 202
    .line 203
    const v2, 0x7f120c92

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    goto :goto_3

    .line 208
    .line 209
    :cond_4
    if-ne v4, v9, :cond_5

    .line 210
    .line 211
    .line 212
    const v2, 0x7f120c93

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    goto :goto_3

    .line 217
    .line 218
    :cond_5
    if-le v4, v9, :cond_6

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    new-array v3, v9, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v4

    .line 229
    .line 230
    aput-object v4, v3, v1

    .line 231
    .line 232
    .line 233
    const v4, 0x7f120c94

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    :cond_6
    :goto_3
    new-instance v2, Landroid/text/SpannableString;

    .line 243
    .line 244
    .line 245
    const v3, 0x7f120c90

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object v3

    .line 250
    .line 251
    .line 252
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 255
    .line 256
    .line 257
    const v4, -0xff8901

    .line 258
    .line 259
    .line 260
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 264
    move-result v4

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 268
    .line 269
    const-string v1, "  "

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 276
    goto :goto_5

    .line 277
    .line 278
    .line 279
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 284
    move-result-object v1

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    .line 289
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 293
    move-result v1

    .line 294
    .line 295
    if-eqz v1, :cond_8

    .line 296
    .line 297
    .line 298
    const v1, 0x7f120c96

    .line 299
    goto :goto_4

    .line 300
    .line 301
    .line 302
    :cond_8
    const v1, 0x7f120c95

    .line 303
    .line 304
    .line 305
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    :goto_5
    return-void
.end method
