.class public Lcom/narvii/monetization/utils/ClaimGiftDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field private final couponsCardContainer:Landroid/view/ViewGroup;

.field private isShown:Z

.field public source:Ljava/lang/String;

.field private willShowUseIt:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
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
    .line 8
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d01aa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0a0316

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0321

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a0303

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f0a0305

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a0301

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->couponsCardContainer:Landroid/view/ViewGroup;

    .line 66
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/utils/ClaimGiftDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->willShowUseIt:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->showClaimButton()V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->showUseItButton()V

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

.method private showClaimButton()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0303

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
    const v0, 0x7f0a0305

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
    return-void
.end method

.method private showUseItButton()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0303

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
    const v0, 0x7f0a0305

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
    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown:Z

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
    const v0, 0x7f0a0303

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0305

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0321

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "Source"

    .line 33
    .line 34
    const-string v1, "Coupon Modal"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->sendClaimCoinRequest()V

    .line 50
    :goto_0
    return-void
.end method

.method public sendClaimCoinRequest()V
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
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "coupon/new-user-coupon/claim"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    const-string v3, "api"

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 45
    .line 46
    new-instance v3, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;

    .line 47
    .line 48
    const-class v4, Lcom/narvii/wallet/WalletResponse;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;-><init>(Lcom/narvii/monetization/utils/ClaimGiftDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    const-string v1, "statistics"

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 65
    .line 66
    const-string v1, "Claim Free Coins"

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->source:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const-string v1, "Claim Free Coins Total"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    return-void
.end method

.method public show()V
    .locals 2

    .line 7
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010054

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f0a039a

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Lcom/narvii/wallet/CouponDetail;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;Z)V

    return-void
.end method

.method public show(Lcom/narvii/wallet/CouponDetail;Z)V
    .locals 4

    iput-boolean p2, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->willShowUseIt:Z

    const p2, 0x7f0a03c9

    .line 2
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->couponsCardContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const v3, 0x7f0d012d

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->setCouponInfo(Lcom/narvii/wallet/CouponDetail;)V

    .line 6
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show()V

    return-void
.end method
