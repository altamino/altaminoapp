.class public final Lcom/narvii/topic/widgets/TopicSubscribeView;
.super Landroid/widget/LinearLayout;
.source "TopicSubscribeView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicSubscribeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicSubscribeView.kt\ncom/narvii/topic/widgets/TopicSubscribeView\n*L\n1#1,217:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isBookmark:Z

.field private isCancelBookmark:Z

.field private isFinishBookmark:Z

.field private isNotifying:Z

.field private final notificationGradient:Lcom/narvii/widget/GradientView;

.field private final notificationLayout:Landroid/widget/FrameLayout;

.field private final notificationProgress:Lcom/narvii/widget/SpinningView;

.field private final notificationRing:Landroid/widget/ImageView;

.field private final toolTipHelper$delegate:Lkotlin/Lazy;

.field private topic:Lcom/narvii/model/story/StoryTopic;

.field private final topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "toolTipHelper"

    const-string v4, "getToolTipHelper()Lcom/narvii/util/ToolTipHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/widgets/TopicSubscribeView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    invoke-direct/range {v0 .. v5}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget-object p2, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;->INSTANCE:Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->toolTipHelper$delegate:Lkotlin/Lazy;

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b06a5

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f090140

    .line 56
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.bookmark)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    const p2, 0x7f090bc7

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.topic_bookmark_notification)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f09078f

    .line 58
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.notification_gradient)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/GradientView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    const p2, 0x7f090796

    .line 59
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.notification_ring)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    const p2, 0x7f090795

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.notification_progress)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/SpinningView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    .line 62
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 64
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    new-instance p2, Lcom/narvii/topic/widgets/TopicSubscribeView$1;

    invoke-direct {p2, p0}, Lcom/narvii/topic/widgets/TopicSubscribeView$1;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    invoke-virtual {p1, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopicBookmarkResultListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    new-instance p3, Lcom/narvii/topic/widgets/TopicSubscribeView$2;

    invoke-direct {p3, p0}, Lcom/narvii/topic/widgets/TopicSubscribeView$2;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    invoke-direct {p2, p3}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$sendSubscribeRequest(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->sendSubscribeRequest(Lcom/narvii/model/story/StoryTopic;I)V

    return-void
.end method

.method public static final synthetic access$showTip(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->showTip()V

    return-void
.end method

.method public static final synthetic access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method private final getToolTipHelper()Lcom/narvii/util/ToolTipHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->toolTipHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicSubscribeView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ToolTipHelper;

    return-object v0
.end method

.method private final sendSubscribeRequest(Lcom/narvii/model/story/StoryTopic;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 90
    new-instance v1, Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "Utils.getNVContext(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/narvii/topic/TopicSubcribeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 91
    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    new-instance v5, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;

    invoke-direct {v5, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v1 .. v8}, Lcom/narvii/topic/TopicSubcribeHelper;->sendTopicSubscribeRequest$default(Lcom/narvii/topic/TopicSubcribeHelper;ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;ZILjava/lang/Object;)V

    return-void
.end method

.method private final showTip()V
    .locals 3

    .line 98
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const v1, 0x7f0f10fa

    .line 100
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    const-string v2, "#FFFFC700"

    .line 103
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->maxWidth(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    return-void
.end method

.method private final updateViews(Lcom/narvii/model/story/StoryTopic;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    .line 129
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 130
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const v2, 0x3e4ccccd    # 0.2f

    .line 131
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    .line 132
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    invoke-virtual {v2, v0, v0}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 133
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    const v2, 0x7f08021f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    const/16 v2, 0xc2

    const/16 v3, 0xff

    invoke-static {v3, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v3, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 136
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/narvii/widget/GradientView;->setGradientLine(FFFF)V

    .line 137
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    const v2, 0x7f08021e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 141
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 146
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    const-wide/16 v3, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/high16 v7, 0x42080000    # 34.0f

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    new-array v2, v6, [I

    aput v1, v2, v1

    aput v0, v2, v5

    .line 149
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    new-instance v1, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 177
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    new-array v2, v6, [I

    aput v0, v2, v1

    aput v1, v2, v5

    .line 180
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$3;

    invoke-direct {v2, v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$3;-><init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    new-instance v1, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 195
    :cond_4
    iget-boolean p1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eqz p1, :cond_5

    .line 196
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 202
    :cond_5
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getNotificationGradient()Lcom/narvii/widget/GradientView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationGradient:Lcom/narvii/widget/GradientView;

    return-object v0
.end method

.method public final getNotificationLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getNotificationProgress()Lcom/narvii/widget/SpinningView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationProgress:Lcom/narvii/widget/SpinningView;

    return-object v0
.end method

.method public final getNotificationRing()Landroid/widget/ImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->notificationRing:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBookmark()Lcom/narvii/topic/widgets/TopicBookmarkView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    return-object v0
.end method

.method public final hideToolTip()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getToolTipHelper()Lcom/narvii/util/ToolTipHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    :cond_0
    return-void
.end method

.method public final isBookmark()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    return v0
.end method

.method public final isCancelBookmark()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    return v0
.end method

.method public final isFinishBookmark()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    return v0
.end method

.method public final isNotifying()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    return v0
.end method

.method public final setBookmark(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark:Z

    return-void
.end method

.method public final setCancelBookmark(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isCancelBookmark:Z

    return-void
.end method

.method public final setFinishBookmark(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isFinishBookmark:Z

    return-void
.end method

.method public final setNotifying(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView;->topicBookmark:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V

    return-void
.end method

.method public final vibrate()V
    .locals 3

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
