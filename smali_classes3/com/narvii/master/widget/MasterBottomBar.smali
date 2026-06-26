.class public final Lcom/narvii/master/widget/MasterBottomBar;
.super Landroid/widget/LinearLayout;
.source "MasterBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;,
        Lcom/narvii/master/widget/MasterBottomBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasterBottomBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MasterBottomBar.kt\ncom/narvii/master/widget/MasterBottomBar\n*L\n1#1,133:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/master/widget/MasterBottomBar$Companion;

.field private static final chatConf:Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final chatUnreadConf:Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final communityConf:Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final discoverConf:Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final chatView$delegate:Lkotlin/Lazy;

.field private final communityView$delegate:Lkotlin/Lazy;

.field private composePreClickListener:Landroid/view/View$OnClickListener;

.field private final discoverView$delegate:Lkotlin/Lazy;

.field private final eventLogProfileService$delegate:Lkotlin/Lazy;

.field private lastPos:I

.field private final meBadge$delegate:Lkotlin/Lazy;

.field private final profileImage$delegate:Lkotlin/Lazy;

.field private final profileTitle$delegate:Lkotlin/Lazy;

.field private final tabMe$delegate:Lkotlin/Lazy;

.field private tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "discoverView"

    const-string v4, "getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "communityView"

    const-string v4, "getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "chatView"

    const-string v4, "getChatView()Lcom/narvii/master/widget/MasterBottomItemView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "profileTitle"

    const-string v4, "getProfileTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "profileImage"

    const-string v4, "getProfileImage()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tabMe"

    const-string v4, "getTabMe()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "meBadge"

    const-string v4, "getMeBadge()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "eventLogProfileService"

    const-string v4, "getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/master/widget/MasterBottomBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/widget/MasterBottomBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->Companion:Lcom/narvii/master/widget/MasterBottomBar$Companion;

    .line 107
    new-instance v0, Lkotlin/Triple;

    const v1, 0x7f080390

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080392

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0f03a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->discoverConf:Lkotlin/Triple;

    .line 108
    new-instance v0, Lkotlin/Triple;

    const v1, 0x7f08038f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080391

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0f02bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->communityConf:Lkotlin/Triple;

    .line 109
    new-instance v0, Lkotlin/Triple;

    const v1, 0x7f080377

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080378

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0f024a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lkotlin/Triple;

    .line 110
    new-instance v0, Lkotlin/Triple;

    const v1, 0x7f080375

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080376

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomBar;->chatUnreadConf:Lkotlin/Triple;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/master/widget/MasterBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f090b37

    .line 28
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverView$delegate:Lkotlin/Lazy;

    const p2, 0x7f090b35

    .line 29
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityView$delegate:Lkotlin/Lazy;

    const p2, 0x7f090b34

    .line 30
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatView$delegate:Lkotlin/Lazy;

    const p2, 0x7f0906cb

    .line 32
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileTitle$delegate:Lkotlin/Lazy;

    const p2, 0x7f0906ca

    .line 33
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileImage$delegate:Lkotlin/Lazy;

    const p2, 0x7f090b3f

    .line 34
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabMe$delegate:Lkotlin/Lazy;

    const p2, 0x7f090117

    .line 35
    invoke-static {p0, p2}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->meBadge$delegate:Lkotlin/Lazy;

    const/4 p2, -0x1

    .line 36
    iput p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    .line 38
    new-instance p2, Lcom/narvii/master/widget/MasterBottomBar$eventLogProfileService$2;

    invoke-direct {p2, p1}, Lcom/narvii/master/widget/MasterBottomBar$eventLogProfileService$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomBar;->eventLogProfileService$delegate:Lkotlin/Lazy;

    const p2, 0x7f0b04f0

    .line 47
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getChatConf$cp()Lkotlin/Triple;
    .locals 1

    .line 26
    sget-object v0, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lkotlin/Triple;

    return-object v0
.end method

.method public static final synthetic access$getChatUnreadConf$cp()Lkotlin/Triple;
    .locals 1

    .line 26
    sget-object v0, Lcom/narvii/master/widget/MasterBottomBar;->chatUnreadConf:Lkotlin/Triple;

    return-object v0
.end method

.method public static final synthetic access$getCommunityConf$cp()Lkotlin/Triple;
    .locals 1

    .line 26
    sget-object v0, Lcom/narvii/master/widget/MasterBottomBar;->communityConf:Lkotlin/Triple;

    return-object v0
.end method

.method public static final synthetic access$getDiscoverConf$cp()Lkotlin/Triple;
    .locals 1

    .line 26
    sget-object v0, Lcom/narvii/master/widget/MasterBottomBar;->discoverConf:Lkotlin/Triple;

    return-object v0
.end method

.method private final getMeBadge()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->meBadge$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/widget/MasterBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final animateTextColor(Landroid/widget/TextView;II)V
    .locals 3

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-string p3, "colorAnimator"

    .line 115
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    new-instance p3, Lcom/narvii/master/widget/MasterBottomBar$animateTextColor$1;

    invoke-direct {p3, p1}, Lcom/narvii/master/widget/MasterBottomBar$animateTextColor$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final configTabs()V
    .locals 3

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileImage()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803c6

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDeaultDrawabele(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->discoverConf:Lkotlin/Triple;

    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lkotlin/Triple;)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/widget/MasterBottomBar$configTabs$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomBar$configTabs$1;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->communityConf:Lkotlin/Triple;

    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lkotlin/Triple;)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/widget/MasterBottomBar$configTabs$2;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomBar$configTabs$2;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lkotlin/Triple;

    invoke-virtual {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lkotlin/Triple;)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/widget/MasterBottomBar$configTabs$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomBar$configTabs$3;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getTabMe()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/widget/MasterBottomBar$configTabs$4;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomBar$configTabs$4;-><init>(Lcom/narvii/master/widget/MasterBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final getChatView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->chatView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    return-object v0
.end method

.method public final getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->communityView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    return-object v0
.end method

.method public final getComposePreClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->composePreClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->discoverView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/widget/MasterBottomItemView;

    return-object v0
.end method

.method public final getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->eventLogProfileService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    return-object v0
.end method

.method public final getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getCommunityView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getDiscoverView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getLastPos()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    return v0
.end method

.method public final getProfileImage()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileImage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getProfileTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->profileTitle$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTabMe()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabMe$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/widget/MasterBottomBar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getTabSelectListener()Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->configTabs()V

    return-void
.end method

.method public final setComposePreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->composePreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setLastPos(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    return-void
.end method

.method public final setTabSelectListener(Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->tabSelectListener:Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    return-void
.end method

.method public final setUnreadChatMessage(Z)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getChatView()Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/narvii/master/widget/MasterBottomBar;->chatUnreadConf:Lkotlin/Triple;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/master/widget/MasterBottomBar;->chatConf:Lkotlin/Triple;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(Lkotlin/Triple;)V

    return-void
.end method

.method public final setUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileImage()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public final updateMeBadge(Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getMeBadge()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateTabBottomLayout(I)V
    .locals 7

    .line 72
    iget v0, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->setItemSelected()V

    goto :goto_1

    :cond_0
    const v2, -0x666667

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/master/widget/MasterBottomBar;->animateTextColor(Landroid/widget/TextView;II)V

    .line 78
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->animationItemUnSelected()V

    :cond_2
    :goto_0
    if-ne p1, v3, :cond_3

    .line 85
    new-instance v0, Lcom/narvii/util/ScaleBounceHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileImage()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v4

    sget-object v5, Lcom/narvii/master/widget/MasterBottomItemView;->Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    invoke-virtual {v5}, Lcom/narvii/master/widget/MasterBottomItemView$Companion;->getScaleArray()[F

    move-result-object v5

    sget-object v6, Lcom/narvii/master/widget/MasterBottomItemView;->Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    invoke-virtual {v6}, Lcom/narvii/master/widget/MasterBottomItemView$Companion;->getTimeArray()[I

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/narvii/util/ScaleBounceHelper;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/ScaleBounceHelper;->playSeq()V

    .line 87
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/master/widget/MasterBottomBar;->animateTextColor(Landroid/widget/TextView;II)V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomBar;->getProfileTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->getItemViewByPos(I)Lcom/narvii/master/widget/MasterBottomItemView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomItemView;->animationItemSelected()V

    .line 94
    :cond_4
    :goto_1
    iput p1, p0, Lcom/narvii/master/widget/MasterBottomBar;->lastPos:I

    return-void
.end method
