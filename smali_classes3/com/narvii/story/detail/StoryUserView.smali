.class public Lcom/narvii/story/detail/StoryUserView;
.super Landroid/widget/FrameLayout;
.source "StoryUserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/user/follow/IUserFollow;


# static fields
.field public static final GUIDE_FOLLOW_KEY:Ljava/lang/String; = "has_story_guide_follow_shown"

.field public static isTooltipShown:Z


# instance fields
.field private alignWidth:I

.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field private fakeUserAvatarView:Landroid/view/View;

.field private isPaddingAnimation:Z

.field private isPaddingFollow:Z

.field private isPaddingSubscribe:Z

.field private isPreview:Z

.field private notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

.field private notificationContainer:Landroid/view/View;

.field private notificationDismiss:Ljava/lang/Runnable;

.field private notificationHint:Landroid/view/View;

.field private notificationIcon:Landroid/view/View;

.field private notificationSuccessIcon:Landroid/view/View;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private final runningAnimators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private story:Lcom/narvii/model/Blog;

.field private subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

.field private targetUserAvatarLeft:I

.field private targetUserTranslationPadding:I

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;

.field private userAvatarContainer:Landroid/view/View;

.field private userAvatarView:Lcom/narvii/widget/UserAvatarLayout;

.field private userFollowButton:Landroid/view/View;

.field private userFollowChecked:Landroid/view/View;

.field private userFollowContainer:Landroid/view/View;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserAvatarLeft:I

    .line 82
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    .line 334
    new-instance p1, Lcom/narvii/story/detail/StoryUserView$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/StoryUserView$2;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationDismiss:Ljava/lang/Runnable;

    .line 88
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserAvatarLeft:I

    .line 82
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    .line 334
    new-instance p1, Lcom/narvii/story/detail/StoryUserView$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/StoryUserView$2;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationDismiss:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserAvatarLeft:I

    .line 82
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    .line 334
    new-instance p1, Lcom/narvii/story/detail/StoryUserView$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/StoryUserView$2;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationDismiss:Ljava/lang/Runnable;

    .line 98
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/detail/StoryUserView;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryUserView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/model/Blog;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/detail/StoryUserView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->reverseAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/story/detail/StoryUserView;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationDismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/story/detail/StoryUserView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingFollow:Z

    return p1
.end method

.method static synthetic access$602(Lcom/narvii/story/detail/StoryUserView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingAnimation:Z

    return p1
.end method

.method static synthetic access$702(Lcom/narvii/story/detail/StoryUserView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingSubscribe:Z

    return p1
.end method

.method private createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;
    .locals 7

    .line 618
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 620
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    array-length v4, p4

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [F

    .line 621
    aget v5, p3, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aget-wide v5, p4, v3

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 622
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v0
.end method

.method private getCheckedShownAnimator()Landroid/animation/Animator;
    .locals 13

    .line 503
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 505
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x2f8

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 508
    iget-object v3, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    const/4 v5, 0x6

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    new-array v7, v5, [J

    fill-array-data v7, :array_2

    const-string v8, "scaleX"

    invoke-direct {p0, v3, v8, v6, v7}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v3

    .line 509
    iget-object v6, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    new-array v7, v5, [F

    fill-array-data v7, :array_3

    new-array v5, v5, [J

    fill-array-data v5, :array_4

    const-string v9, "scaleY"

    invoke-direct {p0, v6, v9, v7, v5}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v5

    .line 510
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v2, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v3, 0x1

    aput-object v5, v7, v3

    .line 511
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v11, 0x168

    .line 512
    invoke-virtual {v6, v11, v12}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 513
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 516
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 517
    iget-object v5, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    new-array v6, v2, [F

    fill-array-data v6, :array_5

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 518
    iget-object v5, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    new-array v6, v2, [F

    fill-array-data v6, :array_6

    new-array v7, v2, [J

    fill-array-data v7, :array_7

    invoke-direct {p0, v5, v8, v6, v7}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v5

    .line 519
    iget-object v6, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    new-array v7, v2, [F

    fill-array-data v7, :array_8

    new-array v8, v2, [J

    fill-array-data v8, :array_9

    invoke-direct {p0, v6, v9, v7, v8}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v10

    aput-object v5, v7, v3

    aput-object v6, v7, v2

    .line 520
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x280

    .line 521
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 524
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v10

    aput-object v1, v2, v3

    .line 525
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f59999a    # 0.85f
        0x3f866666    # 1.05f
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 8
        0x50
        0xc8
        0xc8
        0xc8
        0xf0
        0x118
    .end array-data

    :array_3
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f59999a    # 0.85f
        0x3f866666    # 1.05f
        0x3f6b851f    # 0.92f
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 8
        0x50
        0xc8
        0xc8
        0xc8
        0xf0
        0x118
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3fb33333    # 1.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 8
        0x50
        0xc8
    .end array-data

    :array_8
    .array-data 4
        0x3fb33333    # 1.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 8
        0x50
        0xc8
    .end array-data
.end method

.method private getFollowDismissAnimator()Landroid/animation/Animator;
    .locals 7

    .line 493
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 494
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v1

    .line 495
    iget-object v3, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_2

    new-array v5, v2, [J

    fill-array-data v5, :array_3

    const-string v6, "scaleY"

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v3

    .line 496
    iget-object v4, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_4

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x118

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    .line 497
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3fb33333    # 1.4f
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x50
        0xc8
    .end array-data

    :array_2
    .array-data 4
        0x3fb33333    # 1.4f
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x50
        0xc8
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-boolean v1, p0, Lcom/narvii/story/detail/StoryUserView;->isPreview:Z

    invoke-static {p0, v0, v1}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "UserIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationIconAnimator()Landroid/animation/Animator;
    .locals 6

    .line 580
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 581
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    const-string v4, "alpha"

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    const/4 v3, 0x6

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    const-string v5, "rotation"

    invoke-direct {p0, v2, v5, v4, v3}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0x370

    .line 583
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 584
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 8
        0xf0
        0x280
        0x118
        0x118
    .end array-data

    :array_2
    .array-data 4
        0x41700000    # 15.0f
        -0x3ec00000    # -12.0f
        0x41000000    # 8.0f
        -0x3f800000    # -4.0f
        0x40000000    # 2.0f
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x78
        0x78
        0xa0
        0xa0
        0xa0
        0xa0
    .end array-data
.end method

.method private getNotificationSuccessAnimator()Landroid/animation/Animator;
    .locals 16

    move-object/from16 v0, p0

    .line 589
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 591
    iget-object v2, v0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v7, "scaleX"

    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x140

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 592
    iget-object v4, v0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    new-array v10, v3, [F

    aput v5, v10, v6

    const-string v11, "scaleY"

    invoke-static {v4, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 593
    iget-object v8, v0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    new-array v9, v3, [F

    aput v5, v9, v6

    const-string v5, "alpha"

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0xa0

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v12, 0x78

    .line 594
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 595
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v15, 0x3

    new-array v9, v15, [Landroid/animation/Animator;

    aput-object v2, v9, v6

    aput-object v4, v9, v3

    const/4 v2, 0x2

    aput-object v8, v9, v2

    .line 596
    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 597
    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v4, v8}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    iget-object v4, v0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x8c0

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 600
    new-instance v9, Lcom/narvii/story/detail/DampedInterpolator;

    const v10, 0x3e99999a    # 0.3f

    const/4 v12, 0x5

    invoke-direct {v9, v12, v10}, Lcom/narvii/story/detail/DampedInterpolator;-><init>(IF)V

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    iget-object v9, v0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    new-array v13, v2, [F

    fill-array-data v13, :array_1

    invoke-static {v9, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 602
    new-instance v8, Lcom/narvii/story/detail/DampedInterpolator;

    invoke-direct {v8, v12, v10}, Lcom/narvii/story/detail/DampedInterpolator;-><init>(IF)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    iget-object v8, v0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    new-array v9, v3, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v6

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0xf0

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 604
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v15, [Landroid/animation/Animator;

    aput-object v4, v9, v6

    aput-object v7, v9, v3

    aput-object v5, v9, v2

    .line 605
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x78

    .line 606
    invoke-virtual {v8, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 608
    iget-object v4, v0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v7, "animatorProgress"

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x1e0

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0xa0

    .line 609
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 610
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v15, [Landroid/animation/Animator;

    aput-object v14, v5, v6

    aput-object v8, v5, v3

    aput-object v4, v5, v2

    .line 612
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTranslationAnimator()Landroid/animation/Animator;
    .locals 12

    .line 531
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    iget v1, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserAvatarLeft:I

    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 533
    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v7, 0x1

    aput v1, v4, v7

    const-string v1, "translationX"

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x2a8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 534
    new-instance v4, Landroid/view/animation/AnticipateOvershootInterpolator;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v8}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 535
    iget-object v4, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    const/4 v9, 0x4

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    new-array v9, v9, [J

    fill-array-data v9, :array_1

    const-string v11, "scaleX"

    invoke-direct {p0, v4, v11, v10, v9}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v4

    new-array v9, v3, [Landroid/animation/Animator;

    aput-object v2, v9, v6

    aput-object v4, v9, v7

    .line 536
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 538
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 539
    iget-object v4, p0, Lcom/narvii/story/detail/StoryUserView;->notificationHint:Landroid/view/View;

    new-array v9, v3, [F

    iget v10, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v10, v10

    aput v10, v9, v6

    aput v5, v9, v7

    invoke-static {v4, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x1b8

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 540
    new-instance v9, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v9, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v4, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    iget-object v9, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    new-array v10, v3, [F

    iget v11, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v11, v11

    aput v11, v10, v6

    aput v5, v10, v7

    invoke-static {v9, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x230

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 542
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v3, [Landroid/animation/Animator;

    aput-object v4, v5, v6

    aput-object v1, v5, v7

    .line 543
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x118

    .line 544
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 546
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    .line 547
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    :array_0
    .array-data 4
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 8
        0x50
        0x78
        0x168
        0xc8
    .end array-data
.end method

.method private getTranslationDismissAnimator()Landroid/animation/Animator;
    .locals 16

    move-object/from16 v0, p0

    .line 552
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 554
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 555
    iget-object v3, v0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    const-string v8, "translationX"

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x2a8

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x50

    .line 556
    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 557
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    const v11, 0x3f4ccccd    # 0.8f

    invoke-direct {v5, v11}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    iget-object v5, v0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    const/4 v12, 0x4

    new-array v13, v12, [F

    fill-array-data v13, :array_0

    new-array v14, v12, [J

    fill-array-data v14, :array_1

    const-string v15, "scaleX"

    invoke-direct {v0, v5, v15, v13, v14}, Lcom/narvii/story/detail/StoryUserView;->createAnimatorSequence(Landroid/view/View;Ljava/lang/String;[F[J)Landroid/animation/Animator;

    move-result-object v5

    const/4 v13, 0x2

    new-array v14, v13, [Landroid/animation/Animator;

    aput-object v5, v14, v7

    aput-object v3, v14, v4

    .line 559
    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 560
    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 562
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 563
    iget-object v5, v0, Lcom/narvii/story/detail/StoryUserView;->notificationHint:Landroid/view/View;

    new-array v9, v4, [F

    iget v10, v0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v10, v10

    aput v10, v9, v7

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x1b8

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 564
    new-instance v9, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v9, v11}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x78

    .line 565
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 566
    iget-object v9, v0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    new-array v10, v4, [F

    iget v14, v0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v14, v14

    aput v14, v10, v7

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v14, 0x230

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 567
    new-instance v10, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v10, v11}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v10, v0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    new-array v13, v4, [F

    iget v12, v0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v12, v12

    aput v12, v13, v7

    invoke-static {v10, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 569
    new-instance v10, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v10, v11}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    iget-object v10, v0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    new-array v11, v4, [F

    aput v6, v11, v7

    const-string v6, "alpha"

    invoke-static {v10, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v10, 0xf0

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v10, 0x140

    .line 572
    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v9, v10, v7

    aput-object v8, v10, v4

    const/4 v8, 0x2

    aput-object v5, v10, v8

    const/4 v5, 0x3

    aput-object v6, v10, v5

    .line 573
    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v4

    .line 575
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 8
        0xc8
        0x168
        0x78
        0x50
    .end array-data
.end method

.method private hasAnimatorRunning()Z
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hideToolTip()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    .line 103
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 104
    new-instance v0, Lcom/narvii/user/follow/FollowNotificationHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 105
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    new-instance v1, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$tqkLQvlJJKZeGpAPirPe8EZMSXo;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$tqkLQvlJJKZeGpAPirPe8EZMSXo;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    new-instance v1, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$Z9hX6RiQlsP1gPDa5ABvf2ruUzY;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$Z9hX6RiQlsP1gPDa5ABvf2ruUzY;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setLoading(Lkotlin/jvm/functions/Function0;)V

    .line 117
    new-instance v0, Lcom/narvii/story/detail/StoryUserView$1;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/detail/StoryUserView$1;-><init>(Lcom/narvii/story/detail/StoryUserView;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 142
    new-instance v0, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v0}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 143
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "prefs"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private isMe(Lcom/narvii/model/User;)Z
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 268
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private resetAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingAnimation:Z

    .line 343
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingSubscribe:Z

    .line 344
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingFollow:Z

    .line 347
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 348
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 350
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 359
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 360
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 362
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 364
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 366
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 367
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationHint:Landroid/view/View;

    iget v3, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 368
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    iget v3, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 370
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 371
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 372
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 373
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 375
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 376
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 377
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 381
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;->setAnimatorProgress(F)V

    .line 383
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->hideToolTip()V

    return-void
.end method

.method private reverseAnimation()V
    .locals 2

    .line 468
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 469
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getTranslationDismissAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 471
    new-instance v1, Lcom/narvii/story/detail/StoryUserView$6;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/StoryUserView$6;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 489
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private showSuccessNotificationAndReverse()V
    .locals 5

    .line 437
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getNotificationSuccessAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 439
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getTranslationDismissAnimator()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 442
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 444
    new-instance v1, Lcom/narvii/story/detail/StoryUserView$5;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/StoryUserView$5;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 464
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 697
    invoke-static {p0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p1}, Lcom/narvii/paging/PageView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private startFollowingAnimation()V
    .locals 6

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingAnimation:Z

    .line 388
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 390
    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getFollowDismissAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 393
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getTranslationAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 394
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getNotificationIconAnimator()Landroid/animation/Animator;

    move-result-object v3

    .line 396
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 397
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v4, 0x118

    .line 398
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 399
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getFollowDismissAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 404
    :goto_1
    new-instance v0, Lcom/narvii/story/detail/StoryUserView$3;

    invoke-direct {v0, p0}, Lcom/narvii/story/detail/StoryUserView$3;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 413
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->runningAnimators:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startFollowingFinishedAnimation()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 423
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 424
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getCheckedShownAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 426
    new-instance v1, Lcom/narvii/story/detail/StoryUserView$4;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/StoryUserView$4;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingFollow:Z

    .line 664
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    return-void
.end method

.method public followFail()V
    .locals 0

    return-void
.end method

.method public followSuccess()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 679
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->startFollowingFinishedAnimation()V

    .line 680
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->hideToolTip()V

    return-void
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$init$0$StoryUserView(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 107
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iput v0, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 108
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->showSuccessNotificationAndReverse()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$init$1$StoryUserView()Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingSubscribe:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$showTooltip$2$StoryUserView()V
    .locals 4

    .line 298
    sget-boolean v0, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    move-object v1, p0

    :goto_0
    if-lez v0, :cond_0

    .line 302
    instance-of v2, v1, Lcom/narvii/story/detail/StoryInfoCover;

    if-nez v2, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 304
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 305
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarView:Lcom/narvii/widget/UserAvatarLayout;

    .line 313
    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const v2, 0x7f0f10a1

    .line 314
    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const v2, 0x7f0b069f

    .line 317
    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->customTooltipBubbleLayout(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const-string v2, "#FFFFC700"

    .line 318
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v0

    .line 321
    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v2, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 322
    sput-boolean v1, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    .line 323
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "has_story_guide_follow_shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public needUpdateUserAfterFollow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 189
    iget-boolean v0, p0, Lcom/narvii/story/detail/StoryUserView;->isPreview:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 216
    :sswitch_0
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingFollow:Z

    if-eqz p1, :cond_1

    return-void

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "FollowIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/story/detail/StoryUserView;->follow(Lcom/narvii/model/User;)V

    .line 231
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->startFollowingAnimation()V

    goto/16 :goto_0

    .line 195
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    const-string v1, "UserIcon"

    if-eqz p1, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, v2, v1}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 203
    :cond_6
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 204
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const-string v2, "__communityId"

    .line 205
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    :cond_7
    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 209
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "__model"

    .line 210
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    :cond_8
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryUserView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :sswitch_2
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingSubscribe:Z

    if-eqz p1, :cond_9

    return-void

    .line 237
    :cond_9
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_a

    .line 238
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "AlertIcon"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 240
    :cond_a
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->subscribeHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 244
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->reverseAnimation()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09078b -> :sswitch_3
        0x7f090791 -> :sswitch_2
        0x7f090c10 -> :sswitch_1
        0x7f090c18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09078b

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    const v0, 0x7f090c41

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    const v0, 0x7f090c10

    .line 164
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarView:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090c1a

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowContainer:Landroid/view/View;

    const v0, 0x7f090c18

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    const v0, 0x7f090c19

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowChecked:Landroid/view/View;

    const v0, 0x7f09078c

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationContainer:Landroid/view/View;

    const v0, 0x7f09041e

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->fakeUserAvatarView:Landroid/view/View;

    const v0, 0x7f090790

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationHint:Landroid/view/View;

    const v0, 0x7f090791

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    const v0, 0x7f090797

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationSuccessIcon:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarView:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->notificationIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->resetAnimation()V

    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 636
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 637
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    .line 638
    iget p2, p0, Lcom/narvii/story/detail/StoryUserView;->alignWidth:I

    if-lez p2, :cond_1

    if-eqz p1, :cond_0

    .line 639
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget p3, p0, Lcom/narvii/story/detail/StoryUserView;->alignWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    :goto_0
    iget-object p3, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 640
    iget-object p3, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    if-ge p3, p4, :cond_1

    .line 641
    iget-object p3, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userAvatarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 645
    :cond_1
    iget-object p2, p0, Lcom/narvii/story/detail/StoryUserView;->fakeUserAvatarView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/story/detail/StoryUserView;->notificationContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserAvatarLeft:I

    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/narvii/story/detail/StoryUserView;->targetUserTranslationPadding:I

    .line 647
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->hasAnimatorRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingAnimation:Z

    if-nez p1, :cond_3

    .line 648
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->resetAnimation()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 630
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 631
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/narvii/story/detail/StoryUserView;->notificationBar:Lcom/narvii/story/detail/StoryUserViewNotificationBackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setAlignWidth(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/narvii/story/detail/StoryUserView;->alignWidth:I

    return-void
.end method

.method public setStoryInfo(Lcom/narvii/model/Blog;Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    .line 148
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    .line 149
    iput-boolean p2, p0, Lcom/narvii/story/detail/StoryUserView;->isPreview:Z

    .line 151
    iget-boolean p2, p0, Lcom/narvii/story/detail/StoryUserView;->isPaddingAnimation:Z

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/detail/StoryUserView;->updateView()V

    return-void
.end method

.method public showTooltip()V
    .locals 4

    .line 272
    sget-boolean v0, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "has_story_guide_follow_shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    .line 276
    :cond_0
    sget-boolean v0, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    if-eqz v0, :cond_1

    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/narvii/story/detail/StoryUserView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 286
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 288
    iget v0, v0, Lcom/narvii/model/User;->followingStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "has_story_double_tap_guide_shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 297
    :cond_4
    new-instance v0, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo;

    invoke-direct {v0, p0}, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo;-><init>(Lcom/narvii/story/detail/StoryUserView;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateView()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const v1, 0x7f090c10

    .line 254
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 255
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, v0}, Lcom/narvii/story/detail/StoryUserView;->isMe(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, v0, Lcom/narvii/model/User;->followingStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView;->userFollowContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryUserView;->resetAnimation()V

    return-void
.end method
