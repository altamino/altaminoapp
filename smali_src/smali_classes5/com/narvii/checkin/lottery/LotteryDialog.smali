.class public Lcom/narvii/checkin/lottery/LotteryDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

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

.field lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

.field private now:J

.field nvContext:Lcom/narvii/app/NVContext;

.field optinAdsAction:Ljava/lang/String;

.field rvAction:Ljava/lang/String;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVActivity;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/checkin/lottery/LotteryDialog$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v0, "account"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    iput p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0d01bf

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a0321

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 48
    const/4 p2, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a0e9e

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    const p1, 0x7f120380

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->setTitle(I)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0a0615

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setupCardViews()V

    .line 87
    return-void
.end method

.method public static synthetic a(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->lambda$onFlipEnded$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/Sticker;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog;->lambda$setUpCardBackViews$4(Lcom/narvii/model/Sticker;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->lambda$updateResultLayout$3()V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/checkin/lottery/LotteryDialog;->lambda$onOptinAdsEnabled$1(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->lambda$optinAds$0(Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/checkin/lottery/LotteryResponse;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->isValidLotteryResponse(Lcom/narvii/checkin/lottery/LotteryResponse;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/checkin/lottery/LotteryDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->onFlipEnded(I)V

    return-void
.end method

.method private getCoinIconId()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0804e0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0804de

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    const v0, 0x7f0804df

    .line 23
    :goto_0
    return v0
.end method

.method private getResultTitle()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f1201a6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 18
    .line 19
    iget v3, v2, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-eq v3, v1, :cond_1

    .line 25
    const/4 v1, 0x2

    .line 26
    .line 27
    if-eq v3, v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget v1, v2, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    .line 31
    .line 32
    const/16 v2, 0x71

    .line 33
    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1207eb

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 57
    .line 58
    iget v1, v1, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 59
    .line 60
    .line 61
    const v2, 0x7f1207ea

    .line 62
    .line 63
    .line 64
    const v3, 0x7f1207e9

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    :cond_3
    :goto_0
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendLotteryRequest()V

    return-void
.end method

.method private hideCloseButton(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0321

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 13
    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->startShowResult()V

    return-void
.end method

.method private isValidLotteryResponse(Lcom/narvii/checkin/lottery/LotteryResponse;)Z
    .locals 3

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget v1, p1, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-le v1, v2, :cond_1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    iget p1, p1, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    .line 17
    .line 18
    const/16 v1, 0x71

    .line 19
    .line 20
    if-eq p1, v1, :cond_2

    .line 21
    return v0

    .line 22
    :cond_2
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method private synthetic lambda$onFlipEnded$2(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Source"

    .line 9
    .line 10
    const-string v1, "Lucky Draw"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 26
    return-void
.end method

.method private synthetic lambda$onOptinAdsEnabled$1(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    const-string p2, "ndc://wallet"

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    const-string p3, "android.intent.action.VIEW"

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 22
    return-void
.end method

.method private synthetic lambda$optinAds$0(Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->onOptinAdsEnabled()V

    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpCardBackViews$4(Lcom/narvii/model/Sticker;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-class p2, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    const-string v0, "stickerCollectionId"

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string p1, "__communityId"

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 33
    return-void
.end method

.method private synthetic lambda$updateResultLayout$3()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a00b1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/GradientView;

    .line 10
    .line 11
    const/16 v1, -0x1fc9

    .line 12
    .line 13
    const/16 v2, -0x48d9

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const/high16 v2, 0x41200000    # 10.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a00ab

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fastFadeShow(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a00ad

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a00ae

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    const-string v0, "Dismiss"

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private onFlipEnded(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->getResultTitle()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->updateResultLayout()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 22
    .line 23
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0190

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fadeShow(Landroid/view/View;)V

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 40
    .line 41
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    if-ne v0, v1, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 47
    .line 48
    const-string v2, "membership"

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 55
    .line 56
    .line 57
    const v2, 0x7f0a01ac

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    const v3, 0x7f0a0836

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 74
    move-result v3

    .line 75
    sub-int/2addr v3, p1

    .line 76
    .line 77
    div-int/lit8 v3, v3, 0x2

    .line 78
    int-to-float p1, v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    const/high16 v4, 0x425c0000    # 55.0f

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 88
    move-result v3

    .line 89
    sub-float/2addr p1, v3

    .line 90
    float-to-int p1, p1

    .line 91
    int-to-float p1, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    const/high16 v4, 0x41f00000    # 30.0f

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 101
    move-result v3

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    .line 105
    move-result p1

    .line 106
    float-to-int p1, p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 113
    move-result p1

    .line 114
    const/4 v3, 0x0

    .line 115
    .line 116
    if-gez p1, :cond_2

    .line 117
    move p1, v3

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 121
    .line 122
    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 123
    int-to-long v4, p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    const v0, 0x7f0a033a

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    .line 146
    const v1, 0x7f0806f2

    .line 147
    goto :goto_0

    .line 148
    .line 149
    .line 150
    :cond_3
    const v1, 0x7f0806f1

    .line 151
    .line 152
    .line 153
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    .line 155
    new-instance v1, Lcom/narvii/checkin/lottery/a;

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, p0}, Lcom/narvii/checkin/lottery/a;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    const v4, 0x7f010037

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    new-instance v4, Lcom/narvii/checkin/lottery/LotteryDialog$4;

    .line 175
    .line 176
    .line 177
    invoke-direct {v4, p0, p1, v2}, Lcom/narvii/checkin/lottery/LotteryDialog$4;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;ILandroid/widget/TextView;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    :cond_4
    return-void
.end method

.method private onOptinAdsEnabled()V
    .locals 7

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a00ac

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a00af

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a00b0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    const v3, 0x7f121286

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x1

    .line 49
    .line 50
    new-array v5, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v2, v5, v1

    .line 53
    .line 54
    .line 55
    const v6, 0x7f1211e8

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    new-instance v5, Lcom/narvii/util/text/NVText;

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    new-instance v3, Lcom/narvii/checkin/lottery/c;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, p0}, Lcom/narvii/checkin/lottery/c;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v2, v3}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    .line 84
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/narvii/checkin/lottery/LotteryDialog;->hideCloseButton(Z)V

    .line 91
    return-void
.end method

.method private optinAds()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/checkin/lottery/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/checkin/lottery/e;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    const-string v3, "Lucky Draw"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method private recordOptInAdsOpTime()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "lottery_ads_last_op_time"

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendButtonClickLog(Ljava/lang/String;)V
    .locals 1

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
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    return-void
.end method

.method private sendLotteryRequest()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "check-in/lottery"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const-string v3, "timezone"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    const-string v3, "api"

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 61
    .line 62
    new-instance v3, Lcom/narvii/checkin/lottery/LotteryDialog$5;

    .line 63
    .line 64
    const-class v4, Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/checkin/lottery/LotteryDialog$5;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 71
    return-void
.end method

.method private setUpCardBackViews(Lcom/narvii/widget/FlipLayout;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    const/4 v3, 0x2

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    .line 20
    :cond_0
    const v0, 0x7f0a0c36

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 32
    .line 33
    iget v1, v0, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    .line 34
    .line 35
    const/16 v3, 0x71

    .line 36
    .line 37
    if-ne v1, v3, :cond_4

    .line 38
    .line 39
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 42
    .line 43
    const-class v3, Lcom/narvii/model/Sticker;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/model/Sticker;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    :goto_0
    if-eqz v0, :cond_4

    .line 58
    .line 59
    .line 60
    const v1, 0x7f0a05d6

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 70
    .line 71
    .line 72
    const v1, 0x7f0a05d5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    new-instance v2, Lcom/narvii/checkin/lottery/d;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, v0}, Lcom/narvii/checkin/lottery/d;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/Sticker;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const v1, 0x7f0a0dac

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 97
    goto :goto_2

    .line 98
    .line 99
    .line 100
    :cond_1
    const v0, 0x7f0a0c34

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a033c

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->getCoinIconId()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a033b

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    iget-object v3, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 140
    .line 141
    iget-object v3, v3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 142
    .line 143
    iget v3, v3, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, ""

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    const v0, 0x7f0a033e

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    check-cast p1, Landroid/widget/TextView;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 172
    .line 173
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 174
    .line 175
    if-le v0, v2, :cond_2

    .line 176
    .line 177
    .line 178
    const v0, 0x7f1202c7

    .line 179
    goto :goto_1

    .line 180
    .line 181
    .line 182
    :cond_2
    const v0, 0x7f1202c6

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 186
    goto :goto_2

    .line 187
    .line 188
    .line 189
    :cond_3
    const v0, 0x7f0a0c35

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_4
    :goto_2
    return-void
.end method

.method private setupCardViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a024d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card1:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a024e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a024f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card3:Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card1:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card3:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Landroid/view/View;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private showOptinAds()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "lottery_ads_last_op_time"

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/narvii/wallet/optinads/OptinAds;->qualified(Lcom/narvii/app/NVContext;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v2, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-boolean v2, v2, Lcom/narvii/wallet/Wallet;->adsEnabled:Z

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-wide v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->now:J

    .line 43
    sub-long/2addr v2, v0

    .line 44
    const/4 v0, 0x7

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/narvii/util/DateUtils;->getMicroSecondsOfDays(I)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    cmp-long v0, v2, v0

    .line 51
    .line 52
    if-lez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
.end method

.method private startShowResult()V
    .locals 12

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0e38

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->card2:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 24
    move-result v1

    .line 25
    sub-float/2addr v0, v1

    .line 26
    float-to-int v0, v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    const/high16 v3, 0x42fa0000    # 125.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v2

    .line 43
    float-to-int v2, v2

    .line 44
    int-to-float v1, v1

    .line 45
    .line 46
    .line 47
    const v3, 0x3f99999a    # 1.2f

    .line 48
    .line 49
    mul-float v4, v1, v3

    .line 50
    .line 51
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 52
    mul-float/2addr v4, v5

    .line 53
    int-to-float v2, v2

    .line 54
    .line 55
    cmpg-float v4, v4, v2

    .line 56
    .line 57
    if-gez v4, :cond_0

    .line 58
    div-float/2addr v2, v5

    .line 59
    .line 60
    div-float v3, v2, v1

    .line 61
    .line 62
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 68
    const/4 v6, 0x2

    .line 69
    .line 70
    new-array v7, v6, [F

    .line 71
    const/4 v8, 0x0

    .line 72
    .line 73
    const/high16 v9, 0x3f800000    # 1.0f

    .line 74
    .line 75
    aput v9, v7, v8

    .line 76
    const/4 v10, 0x1

    .line 77
    .line 78
    aput v3, v7, v10

    .line 79
    .line 80
    const-string v11, "scaleX"

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    iget-object v7, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 87
    .line 88
    new-array v11, v6, [F

    .line 89
    .line 90
    aput v9, v11, v8

    .line 91
    .line 92
    aput v3, v11, v10

    .line 93
    .line 94
    const-string v9, "scaleY"

    .line 95
    .line 96
    .line 97
    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 98
    move-result-object v7

    .line 99
    .line 100
    iget-object v9, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 101
    .line 102
    new-array v6, v6, [F

    .line 103
    const/4 v11, 0x0

    .line 104
    .line 105
    aput v11, v6, v8

    .line 106
    int-to-float v0, v0

    .line 107
    .line 108
    aput v0, v6, v10

    .line 109
    .line 110
    const-string v0, "translationX"

    .line 111
    .line 112
    .line 113
    invoke-static {v9, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    .line 127
    const-wide/16 v6, 0x190

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a05da

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/widget/FlipLayout;

    .line 143
    mul-float/2addr v1, v3

    .line 144
    float-to-int v3, v1

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    move-result-object v4

    .line 155
    mul-float/2addr v1, v5

    .line 156
    float-to-int v1, v1

    .line 157
    .line 158
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->setUpCardBackViews(Lcom/narvii/widget/FlipLayout;)V

    .line 165
    .line 166
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 167
    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v4

    .line 175
    .line 176
    if-eqz v4, :cond_2

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    check-cast v4, Landroid/view/View;

    .line 183
    .line 184
    iget-object v5, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 185
    .line 186
    if-eq v4, v5, :cond_1

    .line 187
    const/4 v5, 0x4

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    move-result-object v5

    .line 195
    .line 196
    .line 197
    const v6, 0x7f010038

    .line 198
    .line 199
    .line 200
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 201
    move-result-object v5

    .line 202
    .line 203
    const-wide/16 v6, 0xc8

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    goto :goto_0

    .line 211
    .line 212
    :cond_2
    new-instance v1, Lcom/narvii/checkin/lottery/LotteryDialog$3;

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, p0, v0, v3}, Lcom/narvii/checkin/lottery/LotteryDialog$3;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/widget/FlipLayout;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    return-void
.end method

.method private updateResultLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->now:J

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->showOptinAds()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/checkin/lottery/b;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/b;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 18
    .line 19
    const-wide/16 v1, 0x1f4

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->hideCloseButton(Z)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    const v0, 0x7f0a0c33

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fadeShow(Landroid/view/View;)V

    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    :catch_0
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Action"

    .line 8
    .line 9
    const-string v2, "statistics"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 20
    .line 21
    const-string v3, "Lucky Draw Optin Ads"

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 43
    .line 44
    const-string v2, "Lucky Draw RV"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    :cond_1
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "lucky_draw"

    return-object v0
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
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :sswitch_0
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "Source"

    .line 17
    .line 18
    const-string v1, "Lucky Draw Get Free Icons"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :sswitch_2
    const-string p1, "TurnOnAds"

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    .line 44
    .line 45
    const-string p1, "Yes"

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->recordOptInAdsOpTime()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAds()V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string p1, "RefuseAds"

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->sendButtonClickLog(Ljava/lang/String;)V

    .line 60
    .line 61
    const-string p1, "No"

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->recordOptInAdsOpTime()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    .line 70
    :goto_0
    return-void

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :sswitch_data_0
    .sparse-switch
        0x7f0a00ad -> :sswitch_3
        0x7f0a00ae -> :sswitch_2
        0x7f0a0321 -> :sswitch_1
        0x7f0a0615 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 12
    .line 13
    const-wide/16 v1, 0x12c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a01c8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const v0, 0x7f0a083f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    const v2, 0x7f010030

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lcom/narvii/checkin/lottery/LotteryDialog$2;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    :cond_1
    return-void
.end method
