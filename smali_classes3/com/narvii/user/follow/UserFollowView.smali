.class public final Lcom/narvii/user/follow/UserFollowView;
.super Landroid/widget/FrameLayout;
.source "UserFollowView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/user/follow/IUserFollow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/follow/UserFollowView$ClickListener;,
        Lcom/narvii/user/follow/UserFollowView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserFollowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserFollowView.kt\ncom/narvii/user/follow/UserFollowView\n*L\n1#1,303:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/user/follow/UserFollowView$Companion;

.field private static final FINAL_STATUS:I = 0x4

.field private static final FOLLOWING_STATUS:I = 0x1

.field private static final SCALE_ANIMATION_DURATION:J = 0xc8L

.field private static final SUBSCRIBING_STATUS:I = 0x3

.field private static final UNFOLLOW_STATUS:I = 0x0

.field private static final UNSUBSCRIBE_STATUS:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

.field private final followContentLayout$delegate:Lkotlin/Lazy;

.field private followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

.field private final followLayout$delegate:Lkotlin/Lazy;

.field private final followProgress$delegate:Lkotlin/Lazy;

.field private final followSuccessLayout$delegate:Lkotlin/Lazy;

.field private isPerformFollowAnimator:Z

.field private isPerformSubscribeAnimator:Z

.field private isSupportSubscribe:Z

.field private final notificationContentLayout$delegate:Lkotlin/Lazy;

.field private final notificationLayout$delegate:Lkotlin/Lazy;

.field private final notificationProgress$delegate:Lkotlin/Lazy;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private status:I

.field private subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

.field private user:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "followLayout"

    const-string v4, "getFollowLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationLayout"

    const-string v4, "getNotificationLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "followSuccessLayout"

    const-string v4, "getFollowSuccessLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "followContentLayout"

    const-string v4, "getFollowContentLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationContentLayout"

    const-string v4, "getNotificationContentLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "followProgress"

    const-string v4, "getFollowProgress()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationProgress"

    const-string v4, "getNotificationProgress()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/user/follow/UserFollowView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/user/follow/UserFollowView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/user/follow/UserFollowView;->Companion:Lcom/narvii/user/follow/UserFollowView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0904a5

    .line 30
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f090792

    .line 31
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f0904ab

    .line 32
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followSuccessLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f0904a2

    .line 33
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followContentLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f09078d

    .line 34
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationContentLayout$delegate:Lkotlin/Lazy;

    const p2, 0x7f0904aa

    .line 35
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followProgress$delegate:Lkotlin/Lazy;

    const p2, 0x7f090795

    .line 36
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationProgress$delegate:Lkotlin/Lazy;

    const p2, 0x7f0b06b1

    .line 54
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getFollowLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNotificationLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowView;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method public static final synthetic access$isPerformFollowAnimator$p(Lcom/narvii/user/follow/UserFollowView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    return p0
.end method

.method public static final synthetic access$isPerformSubscribeAnimator$p(Lcom/narvii/user/follow/UserFollowView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    return p0
.end method

.method public static final synthetic access$setPerformFollowAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    return-void
.end method

.method public static final synthetic access$setPerformSubscribeAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    return-void
.end method

.method public static final synthetic access$setPushNotificationHelper$p(Lcom/narvii/user/follow/UserFollowView;Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public static final synthetic access$setStatus(Lcom/narvii/user/follow/UserFollowView;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    return-void
.end method

.method public static final synthetic access$setUser$p(Lcom/narvii/user/follow/UserFollowView;Lcom/narvii/model/User;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public static final synthetic access$updateUnscribeStatus(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->updateUnscribeStatus()V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 301
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/user/follow/UserFollowView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/follow/UserFollowView$bind$1;-><init>(Lcom/narvii/user/follow/UserFollowView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getFollowContentLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followContentLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFollowLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFollowProgress()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followProgress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFollowSuccessLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followSuccessLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getNotificationContentLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationContentLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getNotificationLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getNotificationProgress()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationProgress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/user/follow/UserFollowView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final isGlobalUser()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final setStatus(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    const/4 p1, 0x1

    .line 268
    invoke-direct {p0, p1}, Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V

    return-void
.end method

.method private final updateUnscribeStatus()V
    .locals 2

    .line 258
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationProgress()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateView(Z)V
    .locals 8

    .line 121
    iget v0, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    if-eqz v0, :cond_1

    return-void

    .line 177
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    if-nez p1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 184
    :cond_2
    iput-boolean v3, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    .line 186
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->isGlobalUser()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->isGlobalUser()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    .line 194
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 195
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    new-array v6, v6, [I

    aput v0, v6, v1

    aput v2, v6, v3

    .line 197
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 199
    new-instance v3, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;

    invoke-direct {v3, v2, p0, p1, v0}, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    new-instance v2, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;-><init>(Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    .line 166
    :cond_5
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationProgress()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 139
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_8

    .line 143
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->updateUnscribeStatus()V

    return-void

    .line 146
    :cond_8
    iput-boolean v3, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    .line 147
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    new-array v0, v6, [I

    .line 148
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 149
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$2;-><init>(Lcom/narvii/user/follow/UserFollowView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 131
    :cond_9
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowProgress()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 123
    :cond_a
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowProgress()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bindUser(Lcom/narvii/model/User;Z)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 110
    invoke-virtual {p1}, Lcom/narvii/model/User;->isForwardFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p1, Lcom/narvii/model/User;->ndcId:I

    if-nez v0, :cond_1

    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 110
    :goto_0
    iput p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 117
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V

    return-void
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 274
    invoke-direct {p0, v0}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    .line 275
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method

.method public followFail()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, v0}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    return-void
.end method

.method public followSuccess()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 284
    iget v1, v0, Lcom/narvii/model/User;->followingStatus:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/model/User;->followingStatus:I

    .line 285
    invoke-virtual {p0, v0, v2}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    :cond_0
    return-void
.end method

.method public final getClickListener()Lcom/narvii/user/follow/UserFollowView$ClickListener;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    return-object v0
.end method

.method public final init(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 61
    new-instance v0, Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-direct {v0, p1}, Lcom/narvii/user/follow/FollowNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 62
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/narvii/user/follow/UserFollowView$init$1;

    invoke-direct {v2, p0}, Lcom/narvii/user/follow/UserFollowView$init$1;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    invoke-virtual {v0, v2}, Lcom/narvii/user/follow/FollowNotificationHelper;->setLoading(Lkotlin/jvm/functions/Function0;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/narvii/user/follow/UserFollowView$init$2;

    invoke-direct {v2, p0}, Lcom/narvii/user/follow/UserFollowView$init$2;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    invoke-virtual {v0, v2}, Lcom/narvii/user/follow/FollowNotificationHelper;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 77
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/user/follow/UserFollowView$init$3;

    invoke-direct {v1, p0}, Lcom/narvii/user/follow/UserFollowView$init$3;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 82
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void

    .line 77
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 65
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 62
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public needUpdateUserAfterFollow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0904a5

    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 92
    iget p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    if-eqz p1, :cond_2

    return-void

    .line 95
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    .line 96
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/narvii/user/follow/UserFollowView$ClickListener;->onClickFollow()V

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f090792

    if-nez p1, :cond_4

    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 99
    iget p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    return-void

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/narvii/user/follow/UserFollowView$ClickListener;->onClickNotification()V

    .line 103
    :cond_6
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    return-void
.end method

.method public final resetSupportSubscribe()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    return-void
.end method

.method public final setClickListener(Lcom/narvii/user/follow/UserFollowView$ClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    return-void
.end method
