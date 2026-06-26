.class public final Lcom/narvii/wallet/RedeemCouponComponent;
.super Landroid/widget/RelativeLayout;
.source "RedeemCouponComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedeemCouponComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedeemCouponComponent.kt\ncom/narvii/wallet/RedeemCouponComponent\n*L\n1#1,270:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final COUPON_STATUS_AVAILABLE_COUPON:I

.field private final COUPON_STATUS_COUPON_TO_CLAIM:I

.field private final COUPON_STATUS_NO_COUPON_AVAILABLE:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

.field private final couponApplyCheckbox$delegate:Lkotlin/Lazy;

.field private final couponApplyDiscount$delegate:Lkotlin/Lazy;

.field private final couponContainer$delegate:Lkotlin/Lazy;

.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private couponToUse:Lcom/narvii/wallet/Coupon;

.field private dateFormat:Ljava/text/DateFormat;

.field private final earnFreeCoins$delegate:Lkotlin/Lazy;

.field private getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;

.field private isCouponFetchingInProcess:Z

.field private isHideCouponsInfo:Z

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private final purchaseLoading$delegate:Lkotlin/Lazy;

.field private final purchaseLoadingAnimation$delegate:Lkotlin/Lazy;

.field private final redeemAutoRenewHint$delegate:Lkotlin/Lazy;

.field private final redeemButton$delegate:Lkotlin/Lazy;

.field private final redeemCoinCount$delegate:Lkotlin/Lazy;

.field private final redeemSubscriptionStartTime$delegate:Lkotlin/Lazy;

.field private final redeemText$delegate:Lkotlin/Lazy;

.field private storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

.field private suggestedCoupon:Lcom/narvii/wallet/Coupon;

.field private toRedeemProduct:Lcom/narvii/model/IBaseProduct;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "earnFreeCoins"

    const-string v4, "getEarnFreeCoins()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "redeemCoinCount"

    const-string v4, "getRedeemCoinCount()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "redeemSubscriptionStartTime"

    const-string v4, "getRedeemSubscriptionStartTime()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "redeemText"

    const-string v4, "getRedeemText()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "redeemAutoRenewHint"

    const-string v4, "getRedeemAutoRenewHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "redeemButton"

    const-string v4, "getRedeemButton()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "couponApplyCheckbox"

    const-string v4, "getCouponApplyCheckbox()Landroid/widget/CheckBox;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "couponApplyDiscount"

    const-string v4, "getCouponApplyDiscount()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "couponContainer"

    const-string v4, "getCouponContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "purchaseLoading"

    const-string v4, "getPurchaseLoading()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "purchaseLoadingAnimation"

    const-string v4, "getPurchaseLoadingAnimation()Landroid/view/animation/Animation;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    const v0, 0x7f0903b7

    .line 43
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lkotlin/Lazy;

    const v0, 0x7f090942

    .line 44
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lkotlin/Lazy;

    const v0, 0x7f090943

    .line 45
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lkotlin/Lazy;

    const v0, 0x7f090947

    .line 46
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lkotlin/Lazy;

    const v0, 0x7f090941

    .line 47
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lkotlin/Lazy;

    const v0, 0x7f090940

    .line 48
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lkotlin/Lazy;

    const v0, 0x7f0900b9

    .line 49
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lkotlin/Lazy;

    const v0, 0x7f0900ba

    .line 50
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902fb

    .line 51
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lkotlin/Lazy;

    const v0, 0x7f0908e6

    .line 52
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b010a

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Utils.getNVContext(context).getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 74
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "membership"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Utils.getNVContext(conte\u2026.getService(\"membership\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 75
    new-instance p1, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 p2, 0x2

    .line 34
    iput p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    const/4 p2, 0x3

    .line 35
    iput p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    const p2, 0x7f0903b7

    .line 43
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lkotlin/Lazy;

    const p2, 0x7f090942

    .line 44
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lkotlin/Lazy;

    const p2, 0x7f090943

    .line 45
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lkotlin/Lazy;

    const p2, 0x7f090947

    .line 46
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lkotlin/Lazy;

    const p2, 0x7f090941

    .line 47
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lkotlin/Lazy;

    const p2, 0x7f090940

    .line 48
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lkotlin/Lazy;

    const p2, 0x7f0900b9

    .line 49
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lkotlin/Lazy;

    const p2, 0x7f0900ba

    .line 50
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lkotlin/Lazy;

    const p2, 0x7f0902fb

    .line 51
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lkotlin/Lazy;

    const p2, 0x7f0908e6

    .line 52
    invoke-direct {p0, p0, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p2, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;

    invoke-direct {p2, p0}, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b010a

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Utils.getNVContext(context).getService(\"api\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 74
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "membership"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Utils.getNVContext(conte\u2026.getService(\"membership\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 75
    new-instance p1, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    return-void
.end method

.method public static final synthetic access$getCOUPON_STATUS_AVAILABLE_COUPON$p(Lcom/narvii/wallet/RedeemCouponComponent;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    return p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    return-object p0
.end method

.method public static final synthetic access$getCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCouponToUse$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/Coupon;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    return-object p0
.end method

.method public static final synthetic access$getPurchaseLoading$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPurchaseLoadingAnimation$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/view/animation/Animation;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRedeemButton$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRedeemText$p(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/widget/TextView;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSuggestedCoupon$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/wallet/Coupon;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    return-object p0
.end method

.method public static final synthetic access$getToRedeemProduct$p(Lcom/narvii/wallet/RedeemCouponComponent;)Lcom/narvii/model/IBaseProduct;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    return-object p0
.end method

.method public static final synthetic access$isCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    return p0
.end method

.method public static final synthetic access$lazyInitPurchaseLoading(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/view/animation/Animation;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->lazyInitPurchaseLoading()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCallback$p(Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    return-void
.end method

.method public static final synthetic access$setCouponFetchingInProcess$p(Lcom/narvii/wallet/RedeemCouponComponent;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    return-void
.end method

.method public static final synthetic access$setCouponList$p(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/util/ArrayList;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setCouponToUse$p(Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/wallet/Coupon;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    return-void
.end method

.method public static final synthetic access$setSuggestedCoupon$p(Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/wallet/Coupon;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    return-void
.end method

.method public static final synthetic access$setToRedeemProduct$p(Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/model/IBaseProduct;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    return-void
.end method

.method public static final synthetic access$updateCouponSection(Lcom/narvii/wallet/RedeemCouponComponent;IZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    return-void
.end method

.method public static final synthetic access$updateRedeemPrice(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    return-void
.end method

.method private final bind(Lcom/narvii/wallet/RedeemCouponComponent;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/wallet/RedeemCouponComponent;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 68
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/wallet/RedeemCouponComponent$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent$bind$1;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final fetchCouponList()V
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 180
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    return-void

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindCoupons(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isCouponFetchingInProcess:Z

    .line 190
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/coupon/new-user-coupon"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;

    const-class v3, Lcom/narvii/wallet/CouponListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/RedeemCouponComponent$fetchCouponList$1;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final getCouponApplyCheckbox()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyCheckbox$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private final getCouponApplyDiscount()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponApplyDiscount$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getCouponContainer()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponContainer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getEarnFreeCoins()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->earnFreeCoins$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getPurchaseLoading()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoading$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getPurchaseLoadingAnimation()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->purchaseLoadingAnimation$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method private final getRedeemAutoRenewHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemAutoRenewHint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRedeemButton()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemButton$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getRedeemCoinCount()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemCoinCount$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRedeemSubscriptionStartTime()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemSubscriptionStartTime$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRedeemText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->redeemText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/RedeemCouponComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final lazyInitPurchaseLoading()Landroid/view/animation/Animation;
    .locals 8

    .line 171
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v0, -0x1

    .line 172
    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    const-wide/16 v0, 0x3e8

    .line 173
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    return-object v7
.end method

.method private final updateCouponSection(IZ)V
    .locals 6

    .line 234
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    if-ne p1, v0, :cond_1

    .line 235
    :goto_0
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    .line 236
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponContainer()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 238
    :cond_1
    iget v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    if-ne p1, v0, :cond_7

    .line 239
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-boolean v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p2, :cond_3

    .line 242
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->couponToUse:Lcom/narvii/wallet/Coupon;

    .line 244
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0cce

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/narvii/wallet/Coupon;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    aput-object v1, v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyDiscount()Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/narvii/wallet/Coupon;->getValue()I

    move-result v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyDiscount()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method private final updateRedeemPrice()V
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result v0

    if-ltz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f1013

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/narvii/wallet/RedeemCouponComponent;->dateFormat:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemSubscriptionStartTime()Landroid/widget/TextView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 211
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_3
    const/4 v0, 0x0

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/narvii/wallet/Coupon;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    :goto_2
    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 229
    :goto_3
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemCoinCount()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/wallet/RedeemCouponComponent;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    invoke-virtual {v2, v0, v3}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/IBaseProduct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bindCoupons(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/Coupon;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 114
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 115
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/wallet/Coupon;

    .line 121
    iget-object v5, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    move-result v5

    .line 122
    :goto_1
    invoke-virtual {v4}, Lcom/narvii/wallet/Coupon;->getValue()I

    move-result v6

    if-gt v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v4, Lcom/narvii/wallet/Coupon;->hasProperValue:Z

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 125
    :cond_4
    iget-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->canGetNewMemberRewards()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 127
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_COUPON_TO_CLAIM:I

    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_c

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 133
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/wallet/Coupon;

    .line 134
    invoke-virtual {v3}, Lcom/narvii/wallet/Coupon;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 135
    iput-object v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 139
    :cond_8
    iget-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    if-nez p1, :cond_9

    .line 140
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    goto :goto_5

    .line 142
    :cond_9
    iget v3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_AVAILABLE_COUPON:I

    if-eqz p1, :cond_b

    .line 143
    iget-boolean p1, p1, Lcom/narvii/wallet/Coupon;->hasProperValue:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 142
    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    goto :goto_5

    .line 143
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 130
    :cond_c
    :goto_4
    iput-object v1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->suggestedCoupon:Lcom/narvii/wallet/Coupon;

    .line 131
    iget p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->COUPON_STATUS_NO_COUPON_AVAILABLE:I

    invoke-direct {p0, p1, v2}, Lcom/narvii/wallet/RedeemCouponComponent;->updateCouponSection(IZ)V

    .line 148
    :goto_5
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    return-void
.end method

.method public final bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V
    .locals 0

    const-string p2, "product"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p3, p0, Lcom/narvii/wallet/RedeemCouponComponent;->callback:Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;

    .line 153
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->toRedeemProduct:Lcom/narvii/model/IBaseProduct;

    .line 154
    invoke-interface {p1}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result p1

    const/4 p2, 0x1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->isHideCouponsInfo:Z

    .line 155
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 156
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 157
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemText()Landroid/widget/TextView;

    move-result-object p1

    const p3, 0x7f0f0182

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 160
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateRedeemPrice()V

    .line 161
    invoke-virtual {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent()V

    .line 162
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->fetchCouponList()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoadingAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 167
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getPurchaseLoading()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public getGetCoinsPreClickListener()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent;->getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    sget-object v0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$1;->INSTANCE:Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$1;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemButton()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$2;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getCouponApplyCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$3;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ng.click_here_no_capital)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f0f0139

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resources.getString(R.st\u2026new_hint_info, clickHere)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v3, Lcom/narvii/util/text/NVText;

    invoke-direct {v3, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v1, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$4;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$4;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 105
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 106
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getRedeemAutoRenewHint()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->fetchCouponList()V

    return-void
.end method

.method public setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent;->getCoinsPreClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public final updateEarnFreeCoinsContent()V
    .locals 5

    .line 252
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Lcom/narvii/wallet/RedeemCouponComponent;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0b68

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.stri\u2026Service.walletBalance()))"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f10c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026tipping_dialog_get_coins)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v3, Lcom/narvii/util/text/NVText;

    invoke-direct {v3, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    new-instance v0, Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RedeemCouponComponent$updateEarnFreeCoinsContent$1;-><init>(Lcom/narvii/wallet/RedeemCouponComponent;)V

    invoke-virtual {v3, v2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 262
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 263
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 264
    invoke-direct {p0}, Lcom/narvii/wallet/RedeemCouponComponent;->getEarnFreeCoins()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
