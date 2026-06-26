.class public final Lcom/narvii/influencer/FansOnlyPostMask;
.super Landroid/widget/FrameLayout;
.source "FansOnlyPostMask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFansOnlyPostMask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FansOnlyPostMask.kt\ncom/narvii/influencer/FansOnlyPostMask\n*L\n1#1,68:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

.field private final bgBottom$delegate:Lkotlin/Lazy;

.field private final btnBecomeFans$delegate:Lkotlin/Lazy;

.field private final hint$delegate:Lkotlin/Lazy;

.field private final marginBottomPlaceholder$delegate:Lkotlin/Lazy;

.field private final maskFansLayout$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "marginBottomPlaceholder"

    const-string v4, "getMarginBottomPlaceholder()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnBecomeFans"

    const-string v4, "getBtnBecomeFans()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bgBottom"

    const-string v4, "getBgBottom()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "hint"

    const-string v4, "getHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "maskFansLayout"

    const-string v4, "getMaskFansLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyPostMask;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0906ba

    .line 28
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->marginBottomPlaceholder$delegate:Lkotlin/Lazy;

    const v0, 0x7f090122

    .line 29
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->btnBecomeFans$delegate:Lkotlin/Lazy;

    const v0, 0x7f09012d

    .line 30
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->bgBottom$delegate:Lkotlin/Lazy;

    const v0, 0x7f09050e

    .line 31
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->hint$delegate:Lkotlin/Lazy;

    const v0, 0x7f0906bd

    .line 32
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->maskFansLayout$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v0, Lcom/narvii/amino/R$styleable;->FansOnlyPostMask:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f0b04ee

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    :cond_1
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBtnBecomeFans()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/narvii/influencer/FansOnlyPostMask$1;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FansOnlyPostMask$1;-><init>(Lcom/narvii/influencer/FansOnlyPostMask;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getMaskFansLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBgBottom()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v0, Lcom/narvii/influencer/FansOnlyPostMask$2;->INSTANCE:Lcom/narvii/influencer/FansOnlyPostMask$2;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "account"

    .line 46
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"account\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method private final bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/FansOnlyPostMask;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/influencer/FansOnlyPostMask$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/FansOnlyPostMask$bind$1;-><init>(Lcom/narvii/influencer/FansOnlyPostMask;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getBgBottom()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->bgBottom$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getBtnBecomeFans()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->btnBecomeFans$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->hint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getMarginBottomPlaceholder()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->marginBottomPlaceholder$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getMaskFansLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->maskFansLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/influencer/FansOnlyPostMask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic setAuthor$default(Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/model/User;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor(Lcom/narvii/model/User;I)V

    return-void
.end method

.method private final setIsFansBefore(Z)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBtnBecomeFans()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0f0ed4

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0161

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBecomeFansClickListener()Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    return-object v0
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAuthor(Lcom/narvii/model/User;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor$default(Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/model/User;IILjava/lang/Object;)V

    return-void
.end method

.method public final setAuthor(Lcom/narvii/model/User;I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getHint()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0696

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    const-string v1, "accountService"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 53
    iget-object p2, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_1
    invoke-virtual {p2, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, p2, v2}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v4}, Lcom/narvii/influencer/FansOnlyPostMask;->setIsFansBefore(Z)V

    return-void

    .line 53
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setBecomeFansClickListener(Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    return-void
.end method

.method public final setMarginBottomHeight(I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getMarginBottomPlaceholder()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
