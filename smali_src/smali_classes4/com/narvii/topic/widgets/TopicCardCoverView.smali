.class public final Lcom/narvii/topic/widgets/TopicCardCoverView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# instance fields
.field private final cornerRadius:F

.field private hideSubscribeView:Z

.field private final imageThumb$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subscribeTag$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a070c

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lw7/m;

    const p1, 0x7f0a0e04

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lw7/m;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0758

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a070c

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lw7/m;

    const p1, 0x7f0a0e04

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lw7/m;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0758

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0a070c

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lw7/m;

    const p1, 0x7f0a0e04

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lw7/m;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0758

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getImageThumb()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->imageThumb$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method

.method private final getSubscribeTag()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->subscribeTag$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final bind(I)Lw7/m;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/topic/widgets/TopicCardCoverView$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView$bind$1;-><init>(Lcom/narvii/topic/widgets/TopicCardCoverView;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final hideSubscribeTag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p2

    .line 14
    .line 15
    mul-int/lit8 p2, p2, 0x6

    .line 16
    .line 17
    div-int/lit8 p2, p2, 0x6e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 21
    :cond_0
    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 5
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->invalid:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 10
    .line 11
    const-string v2, "res://topic_style_default_small_bg"

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 23
    :cond_0
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    .line 36
    iget v4, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->cornerRadius:F

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40
    .line 41
    iget-object v4, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 42
    .line 43
    iget v4, v4, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    :cond_2
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getSubscribeTag()Lcom/narvii/widget/NVImageView;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    iget-boolean p1, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    .line 98
    .line 99
    if-nez p1, :cond_6

    .line 100
    const/4 v1, 0x1

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :cond_7
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getImageThumb()Lcom/narvii/widget/NVImageView;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0809fe

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->getSubscribeTag()Lcom/narvii/widget/NVImageView;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 124
    :cond_9
    :goto_2
    return-void
.end method

.method public final showSubscribeTag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeView:Z

    return-void
.end method
