.class public Lcom/narvii/wallet/RewardVideoHelper;
.super Ljava/lang/Object;
.source "RewardVideoHelper.java"


# instance fields
.field private adsVendor:Lcom/narvii/wallet/AdsVendor;

.field private delayCloseRunnable:Ljava/lang/Runnable;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

.field private pendingRewardVideo:Z

.field rewardVideoCallback:Lcom/narvii/util/Callback;

.field private rewardVideoStartMs:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsVendor;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/narvii/wallet/RewardVideoHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RewardVideoHelper$1;-><init>(Lcom/narvii/wallet/RewardVideoHelper;)V

    iput-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->delayCloseRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lcom/narvii/wallet/RewardVideoHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RewardVideoHelper$2;-><init>(Lcom/narvii/wallet/RewardVideoHelper;)V

    iput-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->rewardVideoCallback:Lcom/narvii/util/Callback;

    .line 99
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 100
    iput-object p2, p0, Lcom/narvii/wallet/RewardVideoHelper;->adsVendor:Lcom/narvii/wallet/AdsVendor;

    return-void
.end method

.method private abortRewardVideo()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->adsVendor:Lcom/narvii/wallet/AdsVendor;

    iget-object v1, p0, Lcom/narvii/wallet/RewardVideoHelper;->rewardVideoCallback:Lcom/narvii/util/Callback;

    invoke-interface {v0, v1}, Lcom/narvii/wallet/AdsVendor;->abortRewardVideo(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/wallet/RewardVideoHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/wallet/RewardVideoHelper;->delayCloseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/wallet/RewardVideoHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->delayCloseRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/wallet/RewardVideoHelper;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/wallet/RewardVideoHelper;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/wallet/RewardVideoHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/wallet/AdsVendor;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/wallet/RewardVideoHelper;->adsVendor:Lcom/narvii/wallet/AdsVendor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/wallet/RewardVideoHelper;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->rewardVideoStartMs:J

    return-wide v0
.end method

.method private showPendingDialog()V
    .locals 2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    .line 105
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/wallet/RewardVideoHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 106
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/wallet/-$$Lambda$RewardVideoHelper$JGxkL0QGm5BLTc3r10mpisynIA0;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/-$$Lambda$RewardVideoHelper$JGxkL0QGm5BLTc3r10mpisynIA0;-><init>(Lcom/narvii/wallet/RewardVideoHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected autoLoadNextRewardVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanPendingDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    .line 130
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_0
    return-void
.end method

.method public isPendingRewardVideo()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    return v0
.end method

.method public synthetic lambda$showPendingDialog$0$RewardVideoHelper(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->pendingRewardVideo:Z

    .line 109
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper;->delayCloseRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 110
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/RewardVideoHelper;->abortRewardVideo()V

    return-void
.end method

.method protected onAdsVideoStatsResponse(Lcom/narvii/wallet/AdsVideoStatsResponse;)V
    .locals 0

    return-void
.end method

.method protected onDelayClose()V
    .locals 0

    return-void
.end method

.method protected onRewardVideoOpened(J)V
    .locals 0

    return-void
.end method

.method public startRewardVideo()V
    .locals 3

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->rewardVideoStartMs:J

    .line 120
    invoke-direct {p0}, Lcom/narvii/wallet/RewardVideoHelper;->showPendingDialog()V

    .line 121
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper;->adsVendor:Lcom/narvii/wallet/AdsVendor;

    iget-object v1, p0, Lcom/narvii/wallet/RewardVideoHelper;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/wallet/RewardVideoHelper;->rewardVideoCallback:Lcom/narvii/util/Callback;

    invoke-interface {v0, v1, v2}, Lcom/narvii/wallet/AdsVendor;->requestRewardVideo(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method
