.class public Lcom/narvii/checkin/lottery/LotteryDialog;
.super Lcom/narvii/app/NVDialog;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FAKE_RESULT:Z = true

.field public static final OPT_IN_ADS_DAYS_INTERVAL:I = 0x7


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field card1:Landroid/view/View;

.field card2:Landroid/view/View;

.field card3:Landroid/view/View;

.field cardClickListener:Landroid/view/View$OnClickListener;

.field cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field cid:I

.field clicked:Landroid/view/View;

.field delayCloseRunnable:Ljava/lang/Runnable;

.field lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

.field private now:J

.field nvContext:Lcom/narvii/app/NVContext;

.field optinAdsAction:Ljava/lang/String;

.field rewardVideoHelper:Lcom/narvii/wallet/RewardVideoHelper;

.field rvAction:Ljava/lang/String;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVActivity;I)V
    .locals 1

    const v0, 0x7f1000ce

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/narvii/checkin/lottery/LotteryDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 120
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 121
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 122
    iput p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    const p1, 0x7f0b019e

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f09025e

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    const/4 p2, -0x1

    .line 159
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090b9a

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    const p1, 0x7f0f0328

    .line 163
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->setTitle(I)V

    const p1, 0x7f0904cc

    .line 165
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 166
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setupCardViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendLotteryRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->onOptinAdsEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/checkin/lottery/LotteryDialog;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->onFlipEnded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/checkin/lottery/LotteryResponse;)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->isValidLotteryResponse(Lcom/narvii/checkin/lottery/LotteryResponse;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/checkin/lottery/LotteryDialog;)Z
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->showRewardVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->startShowResult()V

    return-void
.end method

.method private getCoinIconId()I
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0803c0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const v0, 0x7f0803be

    goto :goto_0

    :cond_1
    const v0, 0x7f0803bf

    :goto_0
    return v0
.end method

.method private getResultTitle()Ljava/lang/String;
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v2, v2, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v3, v2, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    if-eq v3, v1, :cond_1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget v1, v2, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    const/16 v2, 0x71

    if-ne v1, v2, :cond_3

    .line 610
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0742

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v1, v1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v1, v1, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    const v2, 0x7f0f0741

    const v3, 0x7f0f0740

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private hideCloseButton(Z)V
    .locals 1

    const v0, 0x7f09025e

    .line 537
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private isValidLotteryResponse(Lcom/narvii/checkin/lottery/LotteryResponse;)Z
    .locals 3

    .line 636
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 640
    :cond_0
    iget v1, p1, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 644
    iget p1, p1, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    const/16 v1, 0x71

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private onFlipEnded(I)V
    .locals 6

    .line 393
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->getResultTitle()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    if-eqz v0, :cond_1

    const v0, 0x7f090101

    .line 402
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fadeShow(Landroid/view/View;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 407
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "membership"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    const v2, 0x7f090118

    .line 408
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0906ab

    .line 409
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    .line 410
    div-int/lit8 v3, v3, 0x2

    int-to-float p1, v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr p1, v3

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 411
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 412
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result p1

    const/4 v3, 0x0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 416
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 417
    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090271

    .line 419
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0805c1

    goto :goto_0

    :cond_3
    const v1, 0x7f0805c0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 421
    new-instance v1, Lcom/narvii/checkin/lottery/LotteryDialog$7;

    invoke-direct {v1, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$7;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f010029

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 434
    new-instance v4, Lcom/narvii/checkin/lottery/LotteryDialog$8;

    invoke-direct {v4, p0, p1, v2}, Lcom/narvii/checkin/lottery/LotteryDialog$8;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 476
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method

.method private onOptinAdsEnabled()V
    .locals 7

    const v0, 0x7f090073

    .line 320
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090076

    .line 321
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090077

    .line 322
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f117f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const v6, 0x7f0f10db

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 326
    new-instance v5, Lcom/narvii/util/text/NVText;

    invoke-direct {v5, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v3, Lcom/narvii/checkin/lottery/LotteryDialog$5;

    invoke-direct {v3, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$5;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    invoke-virtual {v5, v2, v3}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 335
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 336
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 337
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 338
    invoke-direct {p0, v1}, Lcom/narvii/checkin/lottery/LotteryDialog;->hideCloseButton(Z)V

    return-void
.end method

.method private recordOptInAdsOpTime()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lottery_ads_last_op_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendButtonClickLog(Ljava/lang/String;)V
    .locals 1

    .line 267
    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private sendLotteryRequest()V
    .locals 5

    .line 651
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 653
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "check-in/lottery"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 655
    new-instance v3, Lcom/narvii/checkin/lottery/LotteryDialog$12;

    const-class v4, Lcom/narvii/checkin/lottery/LotteryResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/checkin/lottery/LotteryDialog$12;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setUpCardBackViews(Lcom/narvii/widget/FlipLayout;)V
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const v0, 0x7f090978

    .line 557
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v1, v0, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    const/16 v3, 0x71

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    .line 561
    :try_start_0
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    const-class v4, Lcom/narvii/model/Sticker;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Sticker;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const v1, 0x7f090495

    .line 568
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 569
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const v1, 0x7f090494

    .line 570
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog$11;

    invoke-direct {v2, p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog$11;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/Sticker;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090ab2

    .line 580
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 581
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    goto :goto_2

    :cond_1
    const v0, 0x7f090976

    .line 546
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090273

    .line 547
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 548
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->getCoinIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090272

    .line 550
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v3, v3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v3, v3, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090275

    .line 553
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 554
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    if-le v0, v2, :cond_2

    const v0, 0x7f0f027f

    goto :goto_1

    :cond_2
    const v0, 0x7f0f027e

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f090977

    .line 543
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private setupCardViews()V
    .locals 3

    const v0, 0x7f090199

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card1:Landroid/view/View;

    const v0, 0x7f09019a

    .line 200
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    const v0, 0x7f09019b

    .line 201
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card3:Landroid/view/View;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 204
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card1:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card3:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 209
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startShowResult()V
    .locals 12

    const v0, 0x7f090b46

    .line 342
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 344
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 346
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42fa0000    # 125.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v1, v1

    const v3, 0x3f99999a    # 1.2f

    mul-float v4, v1, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    int-to-float v2, v2

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    div-float/2addr v2, v5

    div-float v3, v2, v1

    .line 350
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 351
    iget-object v4, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v10, 0x1

    aput v3, v7, v10

    const-string v11, "scaleX"

    invoke-static {v4, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 352
    iget-object v7, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    new-array v11, v6, [F

    aput v8, v11, v9

    aput v3, v11, v10

    const-string v8, "scaleY"

    invoke-static {v7, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 353
    iget-object v8, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    new-array v6, v6, [F

    const/4 v11, 0x0

    aput v11, v6, v9

    int-to-float v0, v0

    aput v0, v6, v10

    const-string/jumbo v0, "translationX"

    invoke-static {v8, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 354
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0x190

    .line 355
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 356
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    const v0, 0x7f090499

    .line 357
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FlipLayout;

    mul-float v1, v1, v3

    float-to-int v3, v1

    .line 359
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    mul-float v1, v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 362
    invoke-direct {p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setUpCardBackViews(Lcom/narvii/widget/FlipLayout;)V

    .line 364
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 365
    iget-object v5, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    .line 366
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f01002a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    const-wide/16 v6, 0xc8

    .line 368
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 369
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 373
    :cond_2
    new-instance v1, Lcom/narvii/checkin/lottery/LotteryDialog$6;

    invoke-direct {v1, p0, v0, v3}, Lcom/narvii/checkin/lottery/LotteryDialog$6;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/widget/FlipLayout;I)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 621
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 625
    :goto_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LuckyDraw"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "Yes"

    const-string v1, "No"

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    .line 302
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rewardVideoHelper:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {p1}, Lcom/narvii/wallet/RewardVideoHelper;->startRewardVideo()V

    goto :goto_1

    .line 280
    :sswitch_1
    iput-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    const-string p1, "RefuseRewardVideo"

    .line 281
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :sswitch_2
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Lucky Draw Get Free Icons"

    .line 275
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    goto :goto_1

    .line 283
    :goto_0
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    goto :goto_1

    :sswitch_4
    const-string p1, "TurnOnAds"

    .line 292
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    .line 293
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->recordOptInAdsOpTime()V

    .line 295
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAds()V

    goto :goto_1

    :sswitch_5
    const-string p1, "RefuseAds"

    .line 286
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    .line 287
    iput-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->recordOptInAdsOpTime()V

    .line 289
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090074 -> :sswitch_5
        0x7f090075 -> :sswitch_4
        0x7f09025e -> :sswitch_3
        0x7f0904cc -> :sswitch_2
        0x7f090cfe -> :sswitch_1
        0x7f090cff -> :sswitch_0
    .end sparse-switch
.end method

.method public setTitle(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 215
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 217
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v1, 0x7f09012c

    .line 219
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const v0, 0x7f0906b2

    .line 223
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010022

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog$3;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
