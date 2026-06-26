.class public final Lcom/narvii/checkin/CheckInBottomBarLayout;
.super Landroid/widget/FrameLayout;
.source "CheckInBottomBarLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckInBottomBarLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInBottomBarLayout.kt\ncom/narvii/checkin/CheckInBottomBarLayout\n*L\n1#1,153:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final account:Lcom/narvii/account/AccountService;

.field private final checkInButton$delegate:Lkotlin/Lazy;

.field private final checkInDays$delegate:Lkotlin/Lazy;

.field private final checkInProgress$delegate:Lkotlin/Lazy;

.field private final checkInService:Lcom/narvii/checkin/CheckInService;

.field private final checkInText$delegate:Lkotlin/Lazy;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final hasCheckedInToday$delegate:Lkotlin/Lazy;

.field private isCheckingIn:Z

.field private final listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

.field private final nickname$delegate:Lkotlin/Lazy;

.field private final profileListener:Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;

.field private final streakLostIcon$delegate:Lkotlin/Lazy;

.field private final userAvatarLayout$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userAvatarLayout"

    const-string v4, "getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nickname"

    const-string v4, "getNickname()Lcom/narvii/widget/NicknameView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "streakLostIcon"

    const-string v4, "getStreakLostIcon()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkInDays"

    const-string v4, "getCheckInDays()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkInButton"

    const-string v4, "getCheckInButton()Lcom/narvii/widget/PushButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkInText"

    const-string v4, "getCheckInText()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkInProgress"

    const-string v4, "getCheckInProgress()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "hasCheckedInToday"

    const-string v4, "getHasCheckedInToday()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f090c10

    .line 35
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->userAvatarLayout$delegate:Lkotlin/Lazy;

    const p1, 0x7f090764

    .line 36
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->nickname$delegate:Lkotlin/Lazy;

    const p1, 0x7f090af6

    .line 37
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->streakLostIcon$delegate:Lkotlin/Lazy;

    const p1, 0x7f09021a

    .line 38
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInDays$delegate:Lkotlin/Lazy;

    const p1, 0x7f09022a

    .line 40
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInButton$delegate:Lkotlin/Lazy;

    const p1, 0x7f09022f

    .line 41
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInText$delegate:Lkotlin/Lazy;

    const p1, 0x7f09022d

    .line 42
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInProgress$delegate:Lkotlin/Lazy;

    const p1, 0x7f0904ee

    .line 43
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->hasCheckedInToday$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;-><init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->profileListener:Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;

    .line 65
    new-instance p1, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;-><init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b00da

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "Utils.getNVContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 81
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"account\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    .line 82
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "checkIn"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"checkIn\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/checkin/CheckInService;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 83
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 85
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    iget-object p2, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->profileListener:Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method

.method public static final synthetic access$isCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    return p0
.end method

.method public static final synthetic access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    return-void
.end method

.method private final getCheckInButton()Lcom/narvii/widget/PushButton;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInButton$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PushButton;

    return-object v0
.end method

.method private final getCheckInDays()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInDays$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getCheckInProgress()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInProgress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCheckInText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getHasCheckedInToday()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->hasCheckedInToday$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getNickname()Lcom/narvii/widget/NicknameView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->nickname$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method private final getStreakLostIcon()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->streakLostIcon$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->userAvatarLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInBottomBarLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getListener()Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f09022a

    const-string v1, "CheckInArea"

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 133
    iput-boolean v2, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    .line 134
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->cacheRewardVideo()V

    .line 135
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInService;->startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 137
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkIn:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_2

    .line 140
    :cond_2
    :goto_1
    const-class p1, Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "needFetchData"

    .line 143
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediaList"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v2, "Left Side Panel"

    .line 146
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_3
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 149
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public final updateViews()V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 93
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 94
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getNickname()Lcom/narvii/widget/NicknameView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 96
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 97
    iget-object v1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    move-result-object v1

    .line 98
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getStreakLostIcon()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    move-result v0

    .line 101
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0c07

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.resources.getStr\u2026, numberFormat.format(I))"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInDays()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInBottomBarLayout;->isCheckingIn:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInProgress()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getHasCheckedInToday()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInProgress()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInBottomBarLayout;->getCheckInButton()Lcom/narvii/widget/PushButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_1
    return-void
.end method
