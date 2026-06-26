.class public Lcom/narvii/monetization/utils/ClaimGiftDialog;
.super Lcom/narvii/app/NVDialog;
.source "ClaimGiftDialog.java"

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

    const v0, 0x7f1000ce

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 44
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    const p1, 0x7f0b018c

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090255

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025e

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090243

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090245

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090241

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->couponsCardContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/utils/ClaimGiftDialog;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->willShowUseIt:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->showUseItButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->showClaimButton()V

    return-void
.end method

.method private showClaimButton()V
    .locals 2

    const v0, 0x7f090243

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090245

    .line 137
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showUseItButton()V
    .locals 2

    const v0, 0x7f090243

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090245

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 87
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 93
    :sswitch_1
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Coupon Modal"

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 90
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->sendClaimCoinRequest()V

    :goto_0
    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090243 -> :sswitch_2
        0x7f090245 -> :sswitch_1
        0x7f090255 -> :sswitch_3
        0x7f09025e -> :sswitch_0
    .end sparse-switch
.end method

.method public sendClaimCoinRequest()V
    .locals 5

    .line 103
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "coupon/new-user-coupon/claim"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 106
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 107
    new-instance v3, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;

    const-class v4, Lcom/narvii/wallet/WalletResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;-><init>(Lcom/narvii/monetization/utils/ClaimGiftDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown:Z

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f0902ce

    .line 74
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Lcom/narvii/wallet/CouponDetail;)V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;Z)V

    return-void
.end method

.method public show(Lcom/narvii/wallet/CouponDetail;Z)V
    .locals 4

    .line 59
    iput-boolean p2, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->willShowUseIt:Z

    const p2, 0x7f0902f6

    .line 60
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0114

    iget-object v2, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog;->couponsCardContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;

    .line 65
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->setCouponInfo(Lcom/narvii/wallet/CouponDetail;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show()V

    return-void
.end method
