.class public final Lcom/narvii/wallet/RedeemCouponComponent;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
    }
.end annotation


# instance fields
.field private final COUPON_STATUS_AVAILABLE_COUPON:I

.field private final COUPON_STATUS_COUPON_TO_CLAIM:I

.field private final COUPON_STATUS_NO_COUPON_AVAILABLE:I

.field private apiService:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final couponApplyCheckbox$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final couponApplyDiscount$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final couponContainer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private couponToUse:Lcom/narvii/wallet/Coupon;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dateFormat:Ljava/text/DateFormat;

.field private final earnFreeCoins$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isCouponFetchingInProcess:Z

.field private isHideCouponsInfo:Z

.field private membershipService:Lcom/narvii/wallet/MembershipService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final purchaseLoading$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final purchaseLoadingAnimation$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redeemAutoRenewHint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redeemButton$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redeemCoinCount$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redeemSubscriptionStartTime$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redeemText$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private suggestedCoupon:Lcom/narvii/wallet/Coupon;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toRedeemProduct:Lcom/narvii/model/IBaseProduct;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    const v0, 0x7f0a04aa

    .line 3
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lw7/m;

    const v0, 0x7f0a0c00

    .line 4
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lw7/m;

    const v0, 0x7f0a0c01

    .line 5
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lw7/m;

    const v0, 0x7f0a0c05

    .line 6
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lw7/m;

    const v0, 0x7f0a0bff

    .line 7
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lw7/m;

    const v0, 0x7f0a0bfe

    .line 8
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lw7/m;

    const v0, 0x7f0a013c

    .line 9
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lw7/m;

    const v0, 0x7f0a013d

    .line 10
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lw7/m;

    const v0, 0x7f0a03ce

    .line 11
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lw7/m;

    const v0, 0x7f0a0ba5

    .line 12
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lw7/m;

    .line 13
    new-instance v0, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lw7/m;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v1, "membership"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 18
    new-instance p1, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    const p2, 0x7f0a04aa

    .line 21
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lw7/m;

    const p2, 0x7f0a0c00

    .line 22
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lw7/m;

    const p2, 0x7f0a0c01

    .line 23
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lw7/m;

    const p2, 0x7f0a0c05

    .line 24
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lw7/m;

    const p2, 0x7f0a0bff

    .line 25
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lw7/m;

    const p2, 0x7f0a0bfe

    .line 26
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lw7/m;

    const p2, 0x7f0a013c

    .line 27
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lw7/m;

    const p2, 0x7f0a013d

    .line 28
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lw7/m;

    const p2, 0x7f0a03ce

    .line 29
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lw7/m;

    const p2, 0x7f0a0ba5

    .line 30
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lw7/m;

    .line 31
    new-instance p2, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;

    invoke-direct {p2, p0}, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lw7/m;

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0120

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "membership"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 36
    new-instance p1, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate$lambda$1(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$lazyInitPurchaseLoading(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->lazyInitPurchaseLoading()Landroid/view/animation/Animation;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method private final bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/wallet/RedeemCouponComponent;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/wallet/RedeemCouponComponent$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent$bind$1;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public static synthetic c(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate$lambda$2(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent$lambda$4(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate$lambda$3(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method

.method private final fetchCouponList()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindCoupons(Ljava/util/ArrayList;)V

    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "/coupon/new-user-coupon"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;

    .line 46
    .line 47
    const-class v3, Lcom/narvii/wallet/CouponListResponse;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 54
    return-void
.end method

.method private final getCouponApplyCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/CheckBox;

    .line 9
    return-object v0
.end method

.method private final getCouponApplyDiscount()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getCouponContainer()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getEarnFreeCoins()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getPurchaseLoading()Landroid/widget/ImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method private final getPurchaseLoadingAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/animation/Animation;

    .line 9
    return-object v0
.end method

.method private final getRedeemAutoRenewHint()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getRedeemButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method private final getRedeemCoinCount()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getRedeemSubscriptionStartTime()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getRedeemText()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final lazyInitPurchaseLoading()Landroid/view/animation/Animation;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroid/view/animation/RotateAnimation;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/high16 v2, 0x43b40000    # 360.0f

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    const/high16 v4, 0x3f000000    # 0.5f

    .line 9
    const/4 v5, 0x1

    .line 10
    .line 11
    const/high16 v6, 0x3f000000    # 0.5f

    .line 12
    move-object v0, v7

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 16
    const/4 v0, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 20
    .line 21
    const-wide/16 v0, 0x3e8

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    return-object v7
.end method

.method private static final onFinishInflate$lambda$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final onFinishInflate$lambda$1(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemText()Landroid/widget/TextView;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    const v2, 0x7f120f61

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0, p0}, Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;->onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V

    .line 62
    :cond_0
    return-void
.end method

.method private static final onFinishInflate$lambda$2(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    .line 19
    :cond_0
    return-void
.end method

.method private static final onFinishInflate$lambda$3(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    const-string p2, "ndc://help-center"

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string p3, "android.intent.action.VIEW"

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/narvii/wallet/RedeemCouponComponent;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 31
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

.method private final updateCouponSection(IZ)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :goto_0
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponContainer()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const/16 p2, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 26
    .line 27
    if-ne p1, v0, :cond_7

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponContainer()Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 46
    move-result-object p1

    .line 47
    const/4 v2, 0x1

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    move v3, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v0

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move-object p1, v1

    .line 66
    .line 67
    :goto_2
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/narvii/wallet/Coupon;->getValue()I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    :cond_4
    aput-object v1, v2, v0

    .line 92
    .line 93
    .line 94
    const v1, 0x7f120df6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyDiscount()Landroid/widget/TextView;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/narvii/wallet/Coupon;->getValue()I

    .line 113
    move-result v1

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move v1, v0

    .line 116
    :goto_3
    neg-int v1, v1

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyDiscount()Landroid/widget/TextView;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    if-eqz p2, :cond_6

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    const/4 v0, 0x4

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_7
    :goto_5
    return-void
.end method

.method private static final updateEarnFreeCoinsContent$lambda$4(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getGetCoinsPreClickListener()Lcom/narvii/list/ObjectItemClickListener;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 29
    return-void
.end method

.method private final updateRedeemPrice()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    .line 35
    .line 36
    new-instance v5, Ljava/util/Date;

    .line 37
    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    aput-object v4, v3, v1

    .line 46
    .line 47
    .line 48
    const v4, 0x7f12112a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    :goto_0
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 90
    move-result v2

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v2}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    .line 94
    move-result v0

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v0, v1

    .line 97
    .line 98
    :goto_1
    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/narvii/wallet/Coupon;->getValue()I

    .line 123
    move-result v2

    .line 124
    sub-int/2addr v0, v2

    .line 125
    .line 126
    :cond_2
    if-ltz v0, :cond_3

    .line 127
    move v1, v0

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemCoinCount()Landroid/widget/TextView;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1, v3}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/IBaseProduct;)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final bindCoupons(Ljava/util/ArrayList;)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Lcom/narvii/wallet/Coupon;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    move v5, v2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    iget-object v6, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 48
    move-result v6

    .line 49
    .line 50
    .line 51
    invoke-interface {v5, v6}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    .line 52
    move-result v5

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {v4}, Lcom/narvii/wallet/Coupon;->getValue()I

    .line 56
    move-result v6

    .line 57
    .line 58
    if-gt v6, v5, :cond_2

    .line 59
    move v5, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v5, v2

    .line 62
    .line 63
    :goto_2
    iput-boolean v5, v4, Lcom/narvii/wallet/Coupon;->hasProperValue:Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->canGetNewMemberRewards()Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 75
    .line 76
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 80
    goto :goto_4

    .line 81
    .line 82
    :cond_4
    if-eqz p1, :cond_a

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    move-result v3

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    goto :goto_3

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/wallet/Coupon;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/narvii/wallet/Coupon;->isAvailable()Z

    .line 109
    move-result v3

    .line 110
    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 114
    .line 115
    :cond_7
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 116
    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :cond_8
    iget v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 129
    .line 130
    iget-boolean p1, p1, Lcom/narvii/wallet/Coupon;->hasProperValue:Z

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 140
    move-result p1

    .line 141
    .line 142
    if-eqz p1, :cond_9

    .line 143
    move v2, v0

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-direct {p0, v1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_a
    :goto_3
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 150
    .line 151
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 155
    .line 156
    .line 157
    :goto_4
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    .line 158
    return-void
.end method

.method public final bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/model/IBaseProduct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "product"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    if-ltz p1, :cond_0

    .line 17
    move p1, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const/16 p3, 0x8

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemText()Landroid/widget/TextView;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    const p3, 0x7f1201ce

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->fetchCouponList()V

    .line 71
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 15
    return-void
.end method

.method public getGetCoinsPreClickListener()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/wallet/k0;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/wallet/k0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/wallet/l0;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/wallet/l0;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/wallet/m0;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/wallet/m0;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f1202b8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "getString(...)"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x1

    .line 57
    .line 58
    new-array v4, v3, [Ljava/lang/Object;

    .line 59
    const/4 v5, 0x0

    .line 60
    .line 61
    aput-object v0, v4, v5

    .line 62
    .line 63
    .line 64
    const v5, 0x7f12017b

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    new-instance v2, Lcom/narvii/wallet/n0;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/narvii/wallet/n0;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->fetchCouponList()V

    .line 113
    return-void
.end method

.method public setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/list/ObjectItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public final updateEarnFreeCoinsContent()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 15
    move-result v4

    .line 16
    .line 17
    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    aput-object v3, v2, v4

    .line 27
    .line 28
    .line 29
    const v3, 0x7f120c6c

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v2, "getString(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    const v4, 0x7f1211bc

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, " "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/wallet/o0;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/narvii/wallet/o0;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 113
    return-void
.end method
