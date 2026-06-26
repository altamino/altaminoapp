.class public final Lcom/narvii/master/home/widgets/GlobalProfileFollowView;
.super Landroid/widget/LinearLayout;
.source "GlobalProfileFollowView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animator:Landroid/animation/ValueAnimator;

.field private checkCanShowTooltip:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private followButton:Landroid/view/View;

.field private followClickListener:Landroid/view/View$OnClickListener;

.field private followGradientView:Lcom/narvii/widget/GradientView;

.field private followIV:Landroid/widget/ImageView;

.field private followNotificationListener:Landroid/view/View$OnClickListener;

.field private followNotificationProgressView:Landroid/view/View;

.field private followNotificationView:Landroid/view/View;

.field private followProgressView:Landroid/view/View;

.field private followRingView:Landroid/widget/ImageView;

.field private followTV:Lcom/narvii/widget/AutoSizingTextView;

.field private isAccessible:Z

.field private isAnimating:Z

.field private isSendingFollow:Z

.field private isSendingFollowingNotification:Z

.field private performAnimation:Z

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0323

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0904a0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a4

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0904ac

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_text)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0904aa

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_progress)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f090c1c

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.user_follow_notification)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a9

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_notification_ring)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0904a8

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_notification_progress)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0904a3

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.follow_gradient)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 64
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 66
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0323

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0904a0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_button)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a4

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0904ac

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0904aa

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f090c1c

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_follow_notification)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a9

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_notification_ring)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0904a8

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_notification_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0904a3

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_gradient)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 64
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 66
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0323

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0904a0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_button)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a4

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p1, 0x7f0904ac

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p1, 0x7f0904aa

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    const p1, 0x7f090c1c

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_follow_notification)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904a9

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_notification_ring)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const p1, 0x7f0904a8

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_notification_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    const p1, 0x7f0904a3

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.follow_gradient)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/GradientView;

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    .line 64
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 66
    new-instance p1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {p1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method public static final synthetic access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getToolTipHelper$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Lcom/narvii/util/ToolTipHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-object p0
.end method

.method public static final synthetic access$isAnimating$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    return p0
.end method

.method public static final synthetic access$setAnimating$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    return-void
.end method

.method public static final synthetic access$setFollowNotificationState(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationState(Z)V

    return-void
.end method

.method public static final synthetic access$setFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/view/View;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setToolTipHelper$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Lcom/narvii/util/ToolTipHelper;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    return-void
.end method

.method private final setFollowNotificationState(Z)V
    .locals 4

    .line 208
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const v0, 0x3e4ccccd    # 0.2f

    .line 218
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    invoke-virtual {v0, p1, p1}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 220
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const v0, 0x7f08021f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    const/16 v0, 0xc2

    const/16 v1, 0xff

    invoke-static {v1, v1, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v1, v1, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 223
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followGradientView:Lcom/narvii/widget/GradientView;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/widget/GradientView;->setGradientLine(FFFF)V

    .line 224
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followRingView:Landroid/widget/ImageView;

    const v0, 0x7f08021e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private final updateNotificationView(ZZ)V
    .locals 5

    .line 149
    invoke-direct {p0, p2}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationState(Z)V

    .line 151
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 152
    iput-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 153
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 154
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 159
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    .line 160
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ne v0, p1, :cond_4

    return-void

    .line 164
    :cond_4
    iput-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_5

    new-array v4, v4, [F

    aput v1, v4, v2

    aput v0, v4, v3

    .line 167
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-array v4, v4, [F

    aput v0, v4, v2

    aput v1, v4, v3

    .line 169
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 166
    :goto_2
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;-><init>(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;-><init>(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    :cond_7
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCheckCanShowTooltip()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->checkCanShowTooltip:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getFollowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getFollowNotificationListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final hideToolTip()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0904a0

    if-nez v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    :goto_1
    const v1, 0x7f090c1c

    if-nez v0, :cond_3

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAnimating:Z

    if-nez v0, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->hideToolTip()V

    .line 76
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final performFollowAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performAnimation:Z

    return-void
.end method

.method public final setCheckCanShowTooltip(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->checkCanShowTooltip:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setFollowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setFollowNotificationListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followNotificationListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setSendingFollow(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollow:Z

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    return-void
.end method

.method public final setSendingFollowNotification(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollowingNotification:Z

    return-void
.end method

.method public final updateFollowState(Lcom/narvii/model/User;ZLcom/narvii/account/AccountService;)V
    .locals 4

    const-string v0, "account"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    .line 89
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 91
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget p2, p1, Lcom/narvii/model/User;->followingStatus:I

    const/4 p3, 0x3

    const/4 v1, 0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 93
    :goto_0
    iget p3, p1, Lcom/narvii/model/User;->followingStatus:I

    if-ne p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 95
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isSendingFollow:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    .line 96
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followProgressView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p2, :cond_5

    .line 106
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    const p3, 0x7f0800ef

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p3, 0x7f08021b

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p3, 0x7f0f112d

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    .line 112
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    const p3, 0x7f08010c

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p3, 0x7f08021a

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p3, 0x7f0f112c

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-direct {p0, v1, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    goto :goto_3

    .line 118
    :cond_6
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    const p3, 0x7f0800ec

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followIV:Landroid/widget/ImageView;

    const p3, 0x7f080220

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    const p3, 0x7f0f1129

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 121
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    .line 124
    :goto_3
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followTV:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {p1}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    goto :goto_5

    :cond_7
    :goto_4
    const/16 p1, 0x8

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iput-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->isAccessible:Z

    .line 86
    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->followButton:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-direct {p0, v0, v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V

    :goto_5
    return-void
.end method
