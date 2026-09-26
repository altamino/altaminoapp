.class public final Lcom/narvii/user/follow/UserFollowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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


# static fields
.field public static final Companion:Lcom/narvii/user/follow/UserFollowView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FINAL_STATUS:I = 0x4

.field private static final FOLLOWING_STATUS:I = 0x1

.field private static final SCALE_ANIMATION_DURATION:J = 0xc8L

.field private static final SUBSCRIBING_STATUS:I = 0x3

.field private static final UNFOLLOW_STATUS:I = 0x0

.field private static final UNSUBSCRIBE_STATUS:I = 0x2


# instance fields
.field private clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final followContentLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final followLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final followProgress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final followSuccessLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPerformFollowAnimator:Z

.field private isPerformSubscribeAnimator:Z

.field private isSupportSubscribe:Z

.field private final notificationContentLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationProgress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private user:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/user/follow/UserFollowView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/user/follow/UserFollowView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/user/follow/UserFollowView;->Companion:Lcom/narvii/user/follow/UserFollowView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a05e7

    .line 4
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followLayout$delegate:Lw7/m;

    const p2, 0x7f0a0a2b

    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationLayout$delegate:Lw7/m;

    const p2, 0x7f0a05ed

    .line 6
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followSuccessLayout$delegate:Lw7/m;

    const p2, 0x7f0a05e4

    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followContentLayout$delegate:Lw7/m;

    const p2, 0x7f0a0a28

    .line 8
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationContentLayout$delegate:Lw7/m;

    const p2, 0x7f0a05ec

    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->followProgress$delegate:Lw7/m;

    const p2, 0x7f0a0a2e

    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->bind(I)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView;->notificationProgress$delegate:Lw7/m;

    const p2, 0x7f0d0766

    .line 11
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/user/follow/UserFollowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/user/follow/UserFollowView;->updateView$lambda$3$lambda$2(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getFollowLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getNotificationLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowView;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setPerformFollowAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setPerformSubscribeAnimator$p(Lcom/narvii/user/follow/UserFollowView;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setStatus(Lcom/narvii/user/follow/UserFollowView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateUnscribeStatus(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->updateUnscribeStatus()V

    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/user/follow/UserFollowView;->updateView$lambda$1$lambda$0(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/user/follow/UserFollowView$bind$1;-><init>(Lcom/narvii/user/follow/UserFollowView;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getFollowContentLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followContentLayout$delegate:Lw7/m;

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

.method private final getFollowLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followLayout$delegate:Lw7/m;

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

.method private final getFollowProgress()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followProgress$delegate:Lw7/m;

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

.method private final getFollowSuccessLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followSuccessLayout$delegate:Lw7/m;

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

.method private final getNotificationContentLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationContentLayout$delegate:Lw7/m;

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

.method private final getNotificationLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationLayout$delegate:Lw7/m;

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

.method private final getNotificationProgress()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->notificationProgress$delegate:Lw7/m;

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

.method private final isGlobalUser()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    return v1
.end method

.method private final setStatus(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V

    .line 7
    return-void
.end method

.method private final updateUnscribeStatus()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationProgress()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method

.method private final updateView(Z)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-eq v0, v3, :cond_9

    .line 10
    const/4 v4, 0x2

    .line 11
    .line 12
    const-wide/16 v5, 0xc8

    .line 13
    .line 14
    if-eq v0, v4, :cond_6

    .line 15
    const/4 v4, 0x3

    .line 16
    .line 17
    if-eq v0, v4, :cond_5

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    return-void

    .line 53
    .line 54
    :cond_2
    iput-boolean v3, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformSubscribeAnimator:Z

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->isGlobalUser()Z

    .line 58
    move-result p1

    .line 59
    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->isGlobalUser()Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 96
    move-result v0

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v1

    .line 105
    .line 106
    .line 107
    filled-new-array {v0, v1}, [I

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    new-instance v3, Lcom/narvii/user/follow/c;

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v2, p1}, Lcom/narvii/user/follow/c;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    .line 126
    new-instance v2, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;-><init>(Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationContentLayout()Landroid/view/View;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationProgress()Landroid/view/View;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    return-void

    .line 183
    .line 184
    :cond_7
    if-nez p1, :cond_8

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->updateUnscribeStatus()V

    .line 188
    return-void

    .line 189
    .line 190
    :cond_8
    iput-boolean v3, p0, Lcom/narvii/user/follow/UserFollowView;->isPerformFollowAnimator:Z

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 198
    move-result p1

    .line 199
    .line 200
    .line 201
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 206
    move-result v0

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 214
    move-result v1

    .line 215
    .line 216
    .line 217
    filled-new-array {v0, v1}, [I

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    new-instance v2, Lcom/narvii/user/follow/b;

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v1, p0}, Lcom/narvii/user/follow/b;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    .line 240
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;

    .line 241
    .line 242
    .line 243
    invoke-direct {v1, p0, p1}, Lcom/narvii/user/follow/UserFollowView$updateView$1$2;-><init>(Lcom/narvii/user/follow/UserFollowView;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    goto :goto_2

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    .line 264
    move-result-object p1

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowProgress()Landroid/view/View;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 285
    move-result-object p1

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    goto :goto_2

    .line 290
    .line 291
    .line 292
    :cond_a
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowContentLayout()Landroid/view/View;

    .line 300
    move-result-object p1

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowProgress()Landroid/view/View;

    .line 307
    move-result-object p1

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getNotificationLayout()Landroid/view/View;

    .line 314
    move-result-object p1

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    invoke-direct {p0}, Lcom/narvii/user/follow/UserFollowView;->getFollowSuccessLayout()Landroid/view/View;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :goto_2
    return-void
.end method

.method private static final updateView$lambda$1$lambda$0(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "it"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p2

    .line 27
    .line 28
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lcom/narvii/user/follow/UserFollowView;->getFollowLayout()Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method

.method private static final updateView$lambda$3$lambda$2(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$animationLayout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p2

    .line 26
    .line 27
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final bindUser(Lcom/narvii/model/User;Z)V
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/User;->isForwardFollowing()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget v0, p1, Lcom/narvii/model/User;->ndcId:I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 p1, 0x2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x4

    .line 32
    .line 33
    :goto_0
    iput p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p2}, Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V

    .line 37
    return-void
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    .line 18
    :cond_0
    return-void
.end method

.method public followFail()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/user/follow/UserFollowView;->setStatus(I)V

    .line 5
    return-void
.end method

.method public followSuccess()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/model/User;->followingStatus:I

    .line 7
    const/4 v2, 0x1

    .line 8
    or-int/2addr v1, v2

    .line 9
    .line 10
    iput v1, v0, Lcom/narvii/model/User;->followingStatus:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    .line 14
    :cond_0
    return-void
.end method

.method public final getClickListener()Lcom/narvii/user/follow/UserFollowView$ClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    return-object v0
.end method

.method public final init(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/narvii/user/follow/FollowNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$init$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/user/follow/UserFollowView$init$1;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setLoading(Le8/a;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$init$2;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/narvii/user/follow/UserFollowView$init$2;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setSuccess(Le8/l;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/user/follow/UserFollowView$init$3;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/user/follow/UserFollowView$init$3;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setFail(Le8/l;)V

    .line 57
    .line 58
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 64
    return-void
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->followDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
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
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a05e7

    .line 23
    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    iget p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    return-void

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    .line 35
    .line 36
    if-eqz p1, :cond_7

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/user/follow/UserFollowView$ClickListener;->onClickFollow()V

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0a2b

    .line 51
    .line 52
    if-ne p1, v0, :cond_7

    .line 53
    .line 54
    iget p1, p0, Lcom/narvii/user/follow/UserFollowView;->status:I

    .line 55
    const/4 v0, 0x2

    .line 56
    .line 57
    if-eq p1, v0, :cond_5

    .line 58
    return-void

    .line 59
    .line 60
    :cond_5
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    .line 61
    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/narvii/user/follow/UserFollowView$ClickListener;->onClickNotification()V

    .line 66
    .line 67
    :cond_6
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 68
    .line 69
    if-eqz p1, :cond_7

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView;->user:Lcom/narvii/model/User;

    .line 72
    .line 73
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    .line 78
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

    iput-boolean v0, p0, Lcom/narvii/user/follow/UserFollowView;->isSupportSubscribe:Z

    return-void
.end method

.method public final setClickListener(Lcom/narvii/user/follow/UserFollowView$ClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/user/follow/UserFollowView$ClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView;->clickListener:Lcom/narvii/user/follow/UserFollowView$ClickListener;

    return-void
.end method
