.class public Lcom/narvii/wallet/WalletRecyclerFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/pushservice/PushService$PushListener;
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$WalletStoreAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$HeaderBuyAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$AdMobMediationAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$TapdaqMediationAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;,
        Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;
    }
.end annotation


# static fields
.field private static final OFFER_VIDEO:Ljava/lang/Integer;

.field private static final OFFER_WALL:Ljava/lang/Integer;


# instance fields
.field private adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

.field private adsVideoUpdateRunnable:Ljava/lang/Runnable;

.field appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field businessCoinsEnabled:Z

.field private canWatchVideo:Z

.field claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

.field private countDownText:Landroid/widget/TextView;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field couponListResponse:Lcom/narvii/wallet/CouponListResponse;

.field private dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field dfmt:Ljava/text/DecimalFormat;

.field fakeActionBar:Lcom/narvii/nested/FakeActionBar;

.field header:Landroid/view/View;

.field iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

.field logged:Z

.field membership:Lcom/narvii/wallet/MembershipService;

.field private mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

.field noRefresh:Z

.field private final offerWallCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pendingAction:Ljava/lang/Object;

.field pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

.field private productAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private remainingTime:J

.field private response:Lcom/narvii/wallet/WalletResponse;

.field private final rewardVideoCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rewardVideoCell:Landroid/view/View;

.field rewardVideoCoin:I

.field private speedDialAdpater:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field totalBusinessCoins:I

.field totalBusinessCoinsFloat:D

.field totalCoinsFloat:D

.field private updating:Z

.field videoReady:Ljava/lang/Boolean;

.field private videoStartRequest:Lcom/narvii/util/http/ApiRequest;

.field wallReady:Ljava/lang/Boolean;

.field watchVideoClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/narvii/wallet/WalletRecyclerFragment;->OFFER_WALL:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/narvii/wallet/WalletRecyclerFragment;->OFFER_VIDEO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendClaimRewardVideoLog(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->notifyAdapter()V

    return-void
.end method

.method static synthetic access$1202(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->rewardVideoCell:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/narvii/wallet/WalletRecyclerFragment;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->canWatchVideo:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/narvii/wallet/WalletRecyclerFragment;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->canWatchVideo:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/narvii/wallet/WalletRecyclerFragment;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->remainingTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/narvii/wallet/WalletRecyclerFragment;J)J
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->remainingTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/narvii/wallet/WalletRecyclerFragment;J)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateCountDownText(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->showPendingDlg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/widget/NVDrawableAnimatedView;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/wallet/WalletRecyclerFragment;->setupAnimatedIcon(Lcom/narvii/widget/NVDrawableAnimatedView;II)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/Integer;
    .locals 1

    .line 90
    sget-object v0, Lcom/narvii/wallet/WalletRecyclerFragment;->OFFER_WALL:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->offerWallCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->speedDialAdpater:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendWalletRequest()V

    return-void
.end method

.method static synthetic access$2302(Lcom/narvii/wallet/WalletRecyclerFragment;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->updating:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/narvii/wallet/WalletRecyclerFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletResponse;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/WalletResponse;)Lcom/narvii/wallet/WalletResponse;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->hideRefreshLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Integer;
    .locals 1

    .line 90
    sget-object v0, Lcom/narvii/wallet/WalletRecyclerFragment;->OFFER_VIDEO:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->clearPending()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->videoStartRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->videoStartRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/narvii/wallet/WalletRecyclerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoUpdateRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/AdsVideoStats;)Lcom/narvii/wallet/AdsVideoStats;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->rewardVideoCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method private clearPending()V
    .locals 2

    const/4 v0, 0x0

    .line 999
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingAction:Ljava/lang/Object;

    .line 1000
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1002
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_0
    return-void
.end method

.method private hideRefreshLayout()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1322
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private notifyAdapter()V
    .locals 2

    .line 1033
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1036
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1037
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$10;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 8

    .line 1289
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-nez p1, :cond_0

    return-void

    .line 1292
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->logged:Z

    if-nez p1, :cond_2

    const-string p1, "membership"

    .line 1293
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 1294
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->getMembershipStatus()Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "logging"

    .line 1295
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const-string v1, "balance"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "WalletViewEntered"

    const/4 v5, 0x1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    .line 1297
    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget v1, v1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 1298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 1297
    invoke-interface {v0, v4, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "membershipStatus"

    aput-object v7, v6, v3

    .line 1301
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    aput-object v1, v6, v2

    const/4 p1, 0x3

    iget-object v1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget v1, v1, Lcom/narvii/wallet/Wallet;->totalCoins:I

    .line 1302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, p1

    .line 1300
    invoke-interface {v0, v4, v6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    :goto_0
    iput-boolean v5, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->logged:Z

    :cond_2
    if-eqz p2, :cond_3

    .line 1307
    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-eqz p1, :cond_3

    nop

    .line 1310
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 1311
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz p1, :cond_4

    .line 1314
    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    move-result p1

    if-lez p1, :cond_4

    .line 1315
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    iget-object v0, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-object v0, v0, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;)V

    .line 1317
    :cond_4
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    iget-object p2, p2, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/narvii/wallet/Wallet;->newUserCoupon:Lcom/narvii/wallet/CouponDetail;

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V

    return-void
.end method

.method private sendClaimRewardVideoLog(Z)V
    .locals 2

    .line 502
    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ClaimRewardVideo"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "canWatchVideo"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private sendCouponListRequest()V
    .locals 4

    .line 945
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/coupon/new-user-coupon"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 946
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 947
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$6;

    const-class v3, Lcom/narvii/wallet/CouponListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$6;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendOptionAdsRequest()V
    .locals 0

    return-void
.end method

.method private sendWalletRequest()V
    .locals 4

    .line 1262
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/wallet"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1263
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1264
    new-instance v2, Lcom/narvii/wallet/WalletRecyclerFragment$11;

    const-class v3, Lcom/narvii/wallet/WalletResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/WalletRecyclerFragment$11;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setupAnimatedIcon(Lcom/narvii/widget/NVDrawableAnimatedView;II)V
    .locals 9

    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 970
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p3, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    const/16 p3, 0x20

    .line 971
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object v1

    .line 970
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    const/4 v3, 0x7

    const v4, 0x7f08081a

    invoke-direct {v1, v4, v3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 973
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    const/16 v5, 0x5dc

    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object v1

    .line 972
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    invoke-direct {v1, v4, v3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 975
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v7, v8}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object v1

    .line 974
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    invoke-direct {v1, v4, v3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 977
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object v1

    .line 976
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    invoke-direct {v1, p2, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 979
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object p2

    .line 978
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance p2, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    const p3, 0x7f08007b

    invoke-direct {p2, p3, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    const/16 p3, 0x14

    .line 981
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object p2

    const/16 p3, 0xa

    .line 982
    invoke-virtual {p2, v2, v2, p3, p3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object p2

    .line 980
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVDrawableAnimatedView;->replaceLayerList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private showPendingDlg()V
    .locals 2

    .line 987
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 988
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$8;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 995
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method private updateCountDownText(J)V
    .locals 6

    .line 1327
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->rewardVideoCell:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0902ed

    .line 1329
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1334
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    if-nez v0, :cond_1

    .line 1335
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->countDownText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->updating:Z

    if-eqz v1, :cond_2

    const p1, 0x7f0f110d

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const v1, 0x7f0f0ef2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/narvii/util/DateTimeFormatter;->formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    .line 294
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 295
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->speedDialAdpater:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    .line 296
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->speedDialAdpater:Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 298
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100009

    return v0
.end method

.method public getResponse()Lcom/narvii/wallet/WalletResponse;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->response:Lcom/narvii/wallet/WalletResponse;

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$WalletRecyclerFragment()V
    .locals 4

    .line 225
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "navigator"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xe81f

    if-eq p1, v0, :cond_0

    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/wallet/IabPurchaseManager;->handleActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0906ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Wallet"

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 137
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    const v0, 0x7f0f0bf9

    .line 149
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    const v1, 0xe81f

    invoke-virtual {v0, v1, p0}, Lcom/narvii/app/NVActivity;->registerActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V

    const-string v0, "membership"

    .line 152
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 153
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$1;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    .line 187
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0}, Lcom/narvii/wallet/IabPurchaseManager;->init()V

    if-nez p1, :cond_0

    .line 190
    iput-boolean v3, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 372
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f1180

    const/4 v0, 0x0

    .line 373
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080822

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b030f

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0}, Lcom/narvii/wallet/IabPurchaseManager;->destroy()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    .line 246
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->clearPending()V

    .line 286
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPause()V

    return-void
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    .line 328
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    .line 329
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/wallet"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 330
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 331
    new-instance v1, Lcom/narvii/wallet/WalletRecyclerFragment$3;

    const-class v2, Lcom/narvii/wallet/WalletResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$3;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 354
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh()V

    .line 355
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendOptionAdsRequest()V

    .line 356
    invoke-direct {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 253
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onResume()V

    .line 255
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 262
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 263
    iget-boolean v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    iput-boolean v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->noRefresh:Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->mergeAdapter:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_1
    :goto_0
    const-string v0, "push"

    .line 270
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 271
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "push"

    .line 276
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 277
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 278
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 209
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090cf6

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    const p2, 0x7f090b2d

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 213
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 214
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    const-string p2, "config"

    .line 215
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 216
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    aput p2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    const p2, 0x7f0900b6

    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iput-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 218
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    const p2, 0x7f090416

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/nested/FakeActionBar;

    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    .line 221
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    if-eqz p1, :cond_0

    const-string p2, "#2DA4E7"

    .line 222
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 223
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    const p2, 0x7f0f0bf9

    invoke-virtual {p1, p2}, Lcom/narvii/nested/FakeActionBar;->setTitle(I)V

    .line 224
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    const p2, 0x7f080822

    new-instance v0, Lcom/narvii/wallet/-$$Lambda$WalletRecyclerFragment$HsKFupC-X_wfcoPwvdp_UbFZY6Q;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/-$$Lambda$WalletRecyclerFragment$HsKFupC-X_wfcoPwvdp_UbFZY6Q;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/nested/FakeActionBar;->setRightView(ILcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V

    .line 230
    :cond_0
    new-instance p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 231
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/wallet/WalletRecyclerFragment$2;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 239
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    const-string p2, "Source"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;->source:Ljava/lang/String;

    return-void
.end method

.method updateHeader()V
    .locals 12

    .line 388
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalCoinsFloat:D

    invoke-static {v1, v2}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    const v1, 0x7f090b03

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    const v2, 0x7f0906ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 392
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    const v3, 0x7f0906ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    .line 394
    iget-object v3, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f090571

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/ThumbImageView;

    .line 395
    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v4

    const v5, 0x7f0805d3

    const v6, 0x7f090b5b

    const-string v7, "#40000000"

    const v8, 0x7f0805d1

    if-eqz v4, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 398
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0b8d

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v4

    const/4 v9, 0x1

    if-ltz v4, :cond_1

    .line 403
    iget-object v10, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v10}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 404
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const v8, 0x7f0805d2

    :goto_1
    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v10, :cond_3

    .line 405
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3, v7}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 406
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    .line 408
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, 0x66000000

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v4, :cond_4

    const v2, 0x7f0f0b8e

    .line 410
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    if-ne v4, v9, :cond_5

    const v2, 0x7f0f0b8f

    .line 412
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    if-le v4, v9, :cond_6

    .line 414
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0b90

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_6
    :goto_3
    new-instance v2, Landroid/text/SpannableString;

    const v3, 0x7f0f0b8c

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xff8901

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v1, "  "

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 421
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0f0b92

    goto :goto_4

    :cond_8
    const v1, 0x7f0f0b91

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    return-void
.end method
