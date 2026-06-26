.class public final Lcom/narvii/wallet/BusinessWalletFragment;
.super Lcom/narvii/app/NVFragment;
.source "BusinessWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBusinessWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BusinessWalletFragment.kt\ncom/narvii/wallet/BusinessWalletFragment\n*L\n1#1,184:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final apiService$delegate:Lkotlin/Lazy;

.field private final coinRequest$delegate:Lkotlin/Lazy;

.field private final earningCoins$delegate:Lkotlin/Lazy;

.field private final emptyText$delegate:Lkotlin/Lazy;

.field private final emptyView$delegate:Lkotlin/Lazy;

.field private final histogramView$delegate:Lkotlin/Lazy;

.field private final paidCoins$delegate:Lkotlin/Lazy;

.field private final progress$delegate:Lkotlin/Lazy;

.field private final swipeRefresh$delegate:Lkotlin/Lazy;

.field private final totalBalance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "totalBalance"

    const-string v4, "getTotalBalance()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "histogramView"

    const-string v4, "getHistogramView()Lcom/narvii/widget/histogram/HistogramView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "swipeRefresh"

    const-string v4, "getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "earningCoins"

    const-string v4, "getEarningCoins()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "paidCoins"

    const-string v4, "getPaidCoins()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyView"

    const-string v4, "getEmptyView()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progress"

    const-string v4, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyText"

    const-string v4, "getEmptyText()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "apiService"

    const-string v4, "getApiService()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "coinRequest"

    const-string v4, "getCoinRequest()Lcom/narvii/util/http/ApiRequest;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const v0, 0x7f090118

    .line 35
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->totalBalance$delegate:Lkotlin/Lazy;

    const v0, 0x7f090515

    .line 36
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->histogramView$delegate:Lkotlin/Lazy;

    const v0, 0x7f090b2d

    .line 37
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->swipeRefresh$delegate:Lkotlin/Lazy;

    const v0, 0x7f09065a

    .line 38
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->earningCoins$delegate:Lkotlin/Lazy;

    const v0, 0x7f090bd5

    .line 39
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->paidCoins$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903ef

    .line 40
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyView$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$progress$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$progress$2;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->progress$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903ed

    .line 42
    invoke-direct {p0, p0, v0}, Lcom/narvii/wallet/BusinessWalletFragment;->bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyText$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$apiService$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$apiService$2;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->apiService$delegate:Lkotlin/Lazy;

    .line 45
    sget-object v0, Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;->INSTANCE:Lcom/narvii/wallet/BusinessWalletFragment$coinRequest$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->coinRequest$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApiService$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCoinRequest$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEarningCoins$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEarningCoins()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmptyView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHistogramView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getHistogramView()Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaidCoins$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getPaidCoins()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSectionColor(Lcom/narvii/wallet/BusinessWalletFragment;I)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/wallet/BusinessWalletFragment;->getSectionColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSwipeRefresh$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTotalBalance$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getTotalBalance()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendBusinessCoinStatsRequest(Lcom/narvii/wallet/BusinessWalletFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->sendBusinessCoinStatsRequest()V

    return-void
.end method

.method private final bind(Lcom/narvii/wallet/BusinessWalletFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/wallet/BusinessWalletFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/wallet/BusinessWalletFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/wallet/BusinessWalletFragment$bind$1;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;
    .locals 3

    .line 120
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09061a

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "labelView.findViewById<T\u2026View>(R.id.label_content)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09061b

    .line 122
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "labelView"

    .line 123
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->apiService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method private final getCoinRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->coinRequest$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method private final getEarningCoins()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->earningCoins$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getEmptyText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getEmptyView()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->emptyView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getHistogramView()Lcom/narvii/widget/histogram/HistogramView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->histogramView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/histogram/HistogramView;

    return-object v0
.end method

.method private final getPaidCoins()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->paidCoins$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->progress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final getSectionColor(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 133
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060054

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private final getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->swipeRefresh$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private final getTotalBalance()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->totalBalance$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/wallet/BusinessWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final sendBusinessCoinStatsRequest()V
    .locals 4

    .line 141
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v2, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;

    const-class v3, Lcom/narvii/wallet/BusinessCoinStatsResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final setupCategoryLabels()V
    .locals 5

    .line 107
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/layouts/NVFlowLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f1186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.wallet_props)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0806ec

    invoke-direct {p0, v1, v2}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f1184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.wallet_fan_club)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0806ed

    invoke-direct {p0, v2, v3}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f1182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.string.wallet_digital_item)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0806ee

    invoke-direct {p0, v3, v4}, Lcom/narvii/wallet/BusinessWalletFragment;->generateCategoryLabelView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/BusinessWalletFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/wallet/BusinessWalletFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "totalBusinessBalance"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getTotalBalance()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->setupCategoryLabels()V

    .line 95
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$1;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    new-instance v0, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/BusinessWalletFragment$onActivityCreated$2;-><init>(Lcom/narvii/wallet/BusinessWalletFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 98
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->sendBusinessCoinStatsRequest()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-eqz p1, :cond_0

    const p2, 0x7f0f1181

    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f080823

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0289

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getApiService()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getCoinRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 103
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 104
    invoke-virtual {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f1181

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const-class v0, Lcom/narvii/wallet/CoinHistoryFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "businessWallet"

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 87
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0be6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0}, Lcom/narvii/wallet/BusinessWalletFragment;->getEmptyText()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f0f0c33

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
