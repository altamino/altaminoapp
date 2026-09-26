.class public final Lcom/narvii/master/home/widgets/GlobalProfileFollowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private animator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private checkCanShowTooltip:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private followButton:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private followGradientView:Lcom/narvii/widget/GradientView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followNotificationListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private followNotificationProgressView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followNotificationView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followProgressView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followRingView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followTV:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAccessible:Z

.field private isAnimating:Z

.field private isSendingFollow:Z

.field private isSendingFollowingNotification:Z

.field private performAnimation:Z

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0355

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05e2

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05e6

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0a05ee

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0a05ec

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f0a0f40

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05eb

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0a05ea

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0a05e5

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 14
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0355

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05e2

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05e6

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0a05ee

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0a05ec

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f0a0f40

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05eb

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0a05ea

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0a05e5

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 28
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0355

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05e2

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05e6

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0a05ee

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0a05ec

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f0a0f40

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05eb

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0a05ea

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0a05e5

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 42
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView$lambda$0(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getToolTipHelper$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Lcom/narvii/util/ToolTipHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAnimating$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setFollowNotificationState(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationState(Z)V

    .line 4
    return-void
.end method

.method private final setFollowNotificationState(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :goto_0
    if-eqz p1, :cond_1

    .line 41
    const/4 p1, -0x1

    .line 42
    .line 43
    .line 44
    const v0, 0x3e4ccccd    # 0.2f

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 48
    move-result p1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1, p1}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    const v0, 0x7f080309

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 65
    .line 66
    const/16 v0, 0xff

    .line 67
    .line 68
    const/16 v1, 0xc2

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 72
    move-result v3

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3, v0}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 82
    .line 83
    const/high16 v0, 0x3f400000    # 0.75f

    .line 84
    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const/high16 v2, 0x3e800000    # 0.25f

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/narvii/widget/GradientView;->setGradientLine(FFFF)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    .line 94
    .line 95
    .line 96
    const v0, 0x7f080308

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_1
    return-void
.end method

.method private final updateNotificationView(ZZ)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationState(Z)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    .line 6
    .line 7
    const/high16 v1, 0x42200000    # 40.0f

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v0

    .line 34
    float-to-int v0, v0

    .line 35
    .line 36
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    const/16 v2, 0x8

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    goto :goto_4

    .line 53
    .line 54
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result v0

    .line 61
    const/4 v3, 0x1

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    move v0, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v0, v2

    .line 67
    .line 68
    :goto_1
    if-ne v0, p1, :cond_4

    .line 69
    return-void

    .line 70
    .line 71
    :cond_4
    iput-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v4, 0x2

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    new-array v4, v4, [F

    .line 86
    .line 87
    aput v1, v4, v2

    .line 88
    .line 89
    aput v0, v4, v3

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_5
    new-array v4, v4, [F

    .line 97
    .line 98
    aput v0, v4, v2

    .line 99
    .line 100
    aput v1, v4, v3

    .line 101
    .line 102
    .line 103
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    :goto_2
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    new-instance v2, Lcom/narvii/master/home/widgets/a;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v0, p0}, Lcom/narvii/master/home/widgets/a;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    new-instance v1, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p1, p0, p2}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;-><init>(ZLcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    .line 143
    :cond_7
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 144
    .line 145
    if-nez p1, :cond_8

    .line 146
    goto :goto_3

    .line 147
    .line 148
    :cond_8
    const-wide/16 v0, 0xc8

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    .line 153
    :goto_3
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    if-eqz p1, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 159
    :cond_9
    :goto_4
    return-void
.end method

.method private static final updateNotificationView$lambda$0(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

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
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p2

    .line 26
    float-to-int p2, p2

    .line 27
    .line 28
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final getCheckCanShowTooltip()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->checkCanShowTooltip:Le8/a;

    return-object v0
.end method

.method public final getFollowClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getFollowNotificationListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final hideToolTip()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 14
    :cond_0
    return-void
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
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a05e2

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0f40

    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->hideToolTip()V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 71
    :cond_4
    :goto_2
    return-void
.end method

.method public final performFollowAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    return-void
.end method

.method public final setCheckCanShowTooltip(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->checkCanShowTooltip:Le8/a;

    return-void
.end method

.method public final setFollowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setFollowNotificationListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setSendingFollow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollow:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    return-void
.end method

.method public final setSendingFollowNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    return-void
.end method

.method public final updateFollowState(Lcom/narvii/model/User;ZLcom/narvii/account/AccountService;)V
    .locals 4
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    if-nez p2, :cond_7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 29
    move-result p2

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget p2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 39
    const/4 p3, 0x3

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    if-ne p2, p3, :cond_1

    .line 43
    move p3, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p3, v0

    .line 46
    .line 47
    :goto_0
    if-ne p2, v1, :cond_2

    .line 48
    move p2, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move p2, v0

    .line 51
    .line 52
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollow:Z

    .line 53
    const/4 v3, 0x4

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_3
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 95
    .line 96
    if-ne p1, v1, :cond_4

    .line 97
    move p1, v1

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move p1, v0

    .line 100
    .line 101
    :goto_2
    if-eqz p3, :cond_5

    .line 102
    .line 103
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    const p3, 0x7f080180

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    .line 111
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    .line 112
    .line 113
    .line 114
    const p3, 0x7f080305

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 120
    .line 121
    .line 122
    const p3, 0x7f121238

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v1, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :cond_5
    if-eqz p2, :cond_6

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 134
    .line 135
    .line 136
    const p3, 0x7f08019b

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    .line 142
    .line 143
    .line 144
    const p3, 0x7f080304

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    .line 149
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 150
    .line 151
    .line 152
    const p3, 0x7f121237

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, v1, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    .line 159
    goto :goto_3

    .line 160
    .line 161
    :cond_6
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 162
    .line 163
    .line 164
    const p3, 0x7f08017d

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    .line 169
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    .line 170
    .line 171
    .line 172
    const p3, 0x7f08030a

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    .line 177
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 178
    .line 179
    .line 180
    const p3, 0x7f121234

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    .line 187
    .line 188
    :goto_3
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 192
    goto :goto_5

    .line 193
    .line 194
    :cond_7
    :goto_4
    const/16 p1, 0x8

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    iput-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 200
    .line 201
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p0, v0, v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    .line 208
    :goto_5
    return-void
.end method
