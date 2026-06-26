.class public final Lcom/narvii/topic/widgets/TopicBookmarkView;
.super Lcom/narvii/widget/PressedFrameLayout;
.source "TopicBookmarkView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;,
        Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicBookmarkView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicBookmarkView.kt\ncom/narvii/topic/widgets/TopicBookmarkView\n*L\n1#1,177:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final apiService$delegate:Lkotlin/Lazy;

.field private isSending:Z

.field private final loading$delegate:Lkotlin/Lazy;

.field private final normalView$delegate:Lkotlin/Lazy;

.field private final selectedView$delegate:Lkotlin/Lazy;

.field private topic:Lcom/narvii/model/story/StoryTopic;

.field private topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

.field private topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "normalView"

    const-string v4, "getNormalView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectedView"

    const-string v4, "getSelectedView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loading"

    const-string v4, "getLoading()Lcom/narvii/widget/SpinningView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "apiService"

    const-string v4, "getApiService()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/widgets/TopicBookmarkView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PressedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f090143

    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->normalView$delegate:Lkotlin/Lazy;

    const p2, 0x7f090144

    .line 26
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->selectedView$delegate:Lkotlin/Lazy;

    const p2, 0x7f090142

    .line 27
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->loading$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p2, Lcom/narvii/topic/widgets/TopicBookmarkView$apiService$2;

    invoke-direct {p2, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$apiService$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->apiService$delegate:Lkotlin/Lazy;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b06a0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$endSending(Lcom/narvii/topic/widgets/TopicBookmarkView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->endSending()V

    return-void
.end method

.method public static final synthetic access$sendBookMarkRequest(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V

    return-void
.end method

.method public static final synthetic access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method private final endSending()V
    .locals 7

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 119
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0, v2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 120
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 122
    iget-object v3, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-ne v3, v5, :cond_0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_0

    :cond_0
    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    add-float/2addr v3, v4

    :goto_0
    float-to-int v3, v3

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 127
    :goto_1
    iput-boolean v5, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 128
    iget-object v3, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0, v3}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v1

    aput v2, v3, v5

    .line 131
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;

    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;->onBookmark(Z)V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->startSending()V

    .line 170
    new-instance v1, Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "Utils.getNVContext(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/narvii/topic/TopicRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 171
    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    new-instance v5, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;

    invoke-direct {v5, p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v1 .. v8}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V

    return-void
.end method

.method private final startSending()V
    .locals 2

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method private final updateViews(Lcom/narvii/model/story/StoryTopic;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_1
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 102
    iget-boolean p1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eqz p1, :cond_3

    const-wide/32 v1, 0x4cffffff

    goto :goto_1

    :cond_3
    const-wide v1, 0xff0fcdffL

    :goto_1
    long-to-int p1, v1

    .line 103
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bind(I)Lkotlin/Lazy;
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

    .line 55
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$bind$1;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->apiService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicBookmarkView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getLoading()Lcom/narvii/widget/SpinningView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->loading$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicBookmarkView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    return-object v0
.end method

.method public final getNormalView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->normalView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicBookmarkView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->selectedView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicBookmarkView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBookmarkListener()Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    return-object v0
.end method

.method public final getTopicBookmarkResultListener()Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    return-object v0
.end method

.method public final isSending()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_1

    .line 60
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 62
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f10fe

    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 64
    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;-><init>(ZLcom/narvii/topic/widgets/TopicBookmarkView;)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSending(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    return-void
.end method

.method public final setTopicBookmarkResultListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    return-void
.end method
