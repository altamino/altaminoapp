.class public final Lcom/narvii/topic/widgets/TopicSubscribeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private isBookmark:Z

.field private isCancelBookmark:Z

.field private isFinishBookmark:Z

.field private isNotifying:Z

.field private final notificationGradient:Lcom/narvii/widget/GradientView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationRing:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toolTipHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topic:Lcom/narvii/model/story/StoryTopic;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;->INSTANCE:Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;

    .line 4
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->toolTipHelper$delegate:Lw7/m;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d075a

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a01df

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    const v0, 0x7f0a0ee4

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0a2a

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/GradientView;

    iput-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    const v2, 0x7f0a0a2f

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    const v2, 0x7f0a0a2e

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/widget/SpinningView;

    iput-object v2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    const/high16 p3, 0x40a00000    # 5.0f

    .line 12
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 13
    new-instance p1, Lcom/narvii/topic/widgets/TopicSubscribeView$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/TopicSubscribeView$1;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    invoke-virtual {p2, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopicBookmarkResultListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;)V

    .line 14
    new-instance p1, Lcom/narvii/util/OnPreventRepeatedClickListener;

    new-instance p2, Lcom/narvii/topic/widgets/g;

    invoke-direct {p2, p0}, Lcom/narvii/topic/widgets/g;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    invoke-direct {p1, p2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    .line 9
    .line 10
    if-nez p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v0

    .line 24
    .line 25
    :goto_0
    if-ne p1, v1, :cond_1

    .line 26
    move v0, v1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {v1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "AlertIcon"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->sendSubscribeRequest(Lcom/narvii/model/story/StoryTopic;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->hideToolTip()V

    .line 59
    :cond_3
    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews$lambda$4$lambda$3(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$showTip(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->showTip()V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->sendSubscribeRequest$lambda$2(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->_init_$lambda$1(Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews$lambda$6$lambda$5(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getToolTipHelper()Lcom/narvii/util/ToolTipHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->toolTipHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/ToolTipHelper;

    .line 9
    return-object v0
.end method

.method private final sendSubscribeRequest(Lcom/narvii/model/story/StoryTopic;I)V
    .locals 9

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/topic/TopicSubcribeHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v2, "getNVContext(...)"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/narvii/topic/TopicSubcribeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 30
    .line 31
    new-instance v5, Lcom/narvii/topic/widgets/d;

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, p0, p1}, Lcom/narvii/topic/widgets/d;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    const/16 v7, 0x10

    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v3, p1

    .line 40
    move v4, p2

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v8}, Lcom/narvii/topic/TopicSubcribeHelper;->sendTopicSubscribeRequest$default(Lcom/narvii/topic/TopicSubcribeHelper;ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;ZILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method private static final sendSubscribeRequest$lambda$2(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 13
    return-void
.end method

.method private final showTip()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f121203

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const/high16 v2, 0x41400000    # 12.0f

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v2, "#FFFFC700"

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const/high16 v2, 0x433e0000    # 190.0f

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->maxWidth(I)Lcom/narvii/util/Tooltip$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 84
    return-void
.end method

.method private final updateViews(Lcom/narvii/model/story/StoryTopic;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, -0x1

    .line 21
    .line 22
    .line 23
    const v2, 0x3e4ccccd    # 0.2f

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0, v0}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    const v2, 0x7f080309

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 44
    .line 45
    const/16 v2, 0xff

    .line 46
    .line 47
    const/16 v3, 0xc2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 51
    move-result v4

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 61
    .line 62
    const/high16 v2, 0x3f400000    # 0.75f

    .line 63
    .line 64
    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    .line 66
    const/high16 v4, 0x3e800000    # 0.25f

    .line 67
    const/4 v5, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/narvii/widget/GradientView;->setGradientLine(FFFF)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    .line 73
    .line 74
    .line 75
    const v2, 0x7f080308

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    .line 81
    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    .line 109
    .line 110
    const-wide/16 v3, 0xc8

    .line 111
    .line 112
    const/high16 v5, 0x42080000    # 34.0f

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 127
    move-result v0

    .line 128
    float-to-int v0, v0

    .line 129
    .line 130
    .line 131
    filled-new-array {v1, v0}, [I

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    new-instance v2, Lcom/narvii/topic/widgets/e;

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v1, p0}, Lcom/narvii/topic/widgets/e;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    .line 152
    new-instance v1, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 165
    goto :goto_1

    .line 166
    .line 167
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    .line 168
    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 182
    move-result v0

    .line 183
    float-to-int v0, v0

    .line 184
    .line 185
    .line 186
    filled-new-array {v0, v1}, [I

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    new-instance v2, Lcom/narvii/topic/widgets/f;

    .line 200
    .line 201
    .line 202
    invoke-direct {v2, v1, p0}, Lcom/narvii/topic/widgets/f;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    .line 207
    new-instance v1, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;

    .line 208
    .line 209
    .line 210
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 220
    goto :goto_1

    .line 221
    .line 222
    :cond_4
    iget-boolean p1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 223
    .line 224
    if-eqz p1, :cond_5

    .line 225
    .line 226
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .line 241
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    goto :goto_1

    .line 246
    .line 247
    :cond_5
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_1
    return-void
.end method

.method private static final updateViews$lambda$4$lambda$3(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V
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
    iget-object p1, p1, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method

.method private static final updateViews$lambda$6$lambda$5(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V
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
    iget-object p1, p1, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final getNotificationGradient()Lcom/narvii/widget/GradientView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    return-object v0
.end method

.method public final getNotificationLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getNotificationProgress()Lcom/narvii/widget/SpinningView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    return-object v0
.end method

.method public final getNotificationRing()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBookmark()Lcom/narvii/topic/widgets/TopicBookmarkView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    return-object v0
.end method

.method public final hideToolTip()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 18
    :cond_0
    return-void
.end method

.method public final isBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    return v0
.end method

.method public final isCancelBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    return v0
.end method

.method public final isFinishBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    return v0
.end method

.method public final isNotifying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    return v0
.end method

.method public final setBookmark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    return-void
.end method

.method public final setCancelBookmark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    return-void
.end method

.method public final setFinishBookmark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    return-void
.end method

.method public final setNotifying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public final setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V

    .line 11
    return-void
.end method

.method public final vibrate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "vibrator"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Landroid/os/Vibrator;

    .line 19
    .line 20
    const-wide/16 v1, 0x12c

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    return-void
.end method
