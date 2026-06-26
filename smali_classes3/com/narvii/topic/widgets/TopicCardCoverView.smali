.class public final Lcom/narvii/topic/widgets/TopicCardCoverView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "TopicCardCoverView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicCardCoverView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicCardCoverView.kt\ncom/narvii/topic/widgets/TopicCardCoverView\n*L\n1#1,75:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final cornerRadius:F

.field private hideSubscribeView:Z

.field private final imageThumb$delegate:Lkotlin/Lazy;

.field private final subscribeTag$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicCardCoverView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "imageThumb"

    const-string v4, "getImageThumb()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/widgets/TopicCardCoverView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "subscribeTag"

    const-string v4, "getSubscribeTag()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/widgets/TopicCardCoverView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f090586

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b1f

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lkotlin/Lazy;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b06a1

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090586

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b1f

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lkotlin/Lazy;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b06a1

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f090586

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b1f

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lkotlin/Lazy;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b06a1

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getImageThumb()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicCardCoverView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method private final getSubscribeTag()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/widgets/TopicCardCoverView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 38
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/topic/widgets/TopicCardCoverView$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView$bind$1;-><init>(Lcom/narvii/topic/widgets/TopicCardCoverView;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final hideSubscribeTag()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;->onMeasure(II)V

    .line 34
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x6

    div-int/lit8 p2, p2, 0x6e

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 5

    if-eqz p1, :cond_a

    .line 51
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->invalid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 52
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    const-string v2, "res://topic_style_default_small_bg"

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    iget v4, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 59
    iget-object v4, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    iget v4, v4, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_2
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 63
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_2

    .line 65
    :cond_5
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 67
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getSubscribeTag()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    if-nez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    goto :goto_3

    .line 69
    :cond_8
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    move-result-object p1

    if-eqz p1, :cond_9

    const v0, 0x7f0807dc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :cond_9
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getSubscribeTag()Lcom/narvii/widget/NVImageView;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final showSubscribeTag()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    return-void
.end method
