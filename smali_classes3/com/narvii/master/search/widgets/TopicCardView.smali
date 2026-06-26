.class public Lcom/narvii/master/search/widgets/TopicCardView;
.super Landroid/widget/FrameLayout;
.source "TopicCardView.java"


# instance fields
.field bookmarkIndicator:Landroid/view/View;

.field corner:F

.field private coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

.field indicator2:Lcom/narvii/widget/TintButton;

.field rightChevron:Landroid/view/View;

.field tvDetail:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/search/widgets/TopicCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702e9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    const p2, 0x7f0b0396

    .line 38
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 113
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 114
    iget v3, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v2, v6

    const/4 v8, 0x3

    aput v7, v2, v8

    const/4 v9, 0x4

    aput v7, v2, v9

    const/4 v10, 0x5

    aput v7, v2, v10

    const/4 v11, 0x6

    aput v3, v2, v11

    const/4 v12, 0x7

    aput v3, v2, v12

    .line 115
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v2, v1, [F

    aput v7, v2, v4

    aput v7, v2, v5

    .line 116
    iget v1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    aput v1, v2, v6

    aput v1, v2, v8

    aput v1, v2, v9

    aput v1, v2, v10

    aput v7, v2, v11

    aput v7, v2, v12

    .line 118
    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090bcf

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09034c

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    const v0, 0x7f090591

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->indicator2:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090587

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/topic/widgets/TopicCardCoverView;

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    const v0, 0x7f090141

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->bookmarkIndicator:Landroid/view/View;

    const v0, 0x7f09097f

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->rightChevron:Landroid/view/View;

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;ZZ)V

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;ZZZ)V

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;ZZZ)V
    .locals 4

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v0, :cond_1

    .line 65
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    if-eqz p4, :cond_0

    .line 67
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    invoke-virtual {p4}, Lcom/narvii/topic/widgets/TopicCardCoverView;->showSubscribeTag()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    invoke-virtual {p4}, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeTag()V

    .line 71
    :goto_0
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    invoke-virtual {p4, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 73
    :goto_1
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->indicator2:Lcom/narvii/widget/TintButton;

    invoke-virtual {p4, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 74
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvTitle:Landroid/widget/TextView;

    const-string v0, ""

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->bookmarkIndicator:Landroid/view/View;

    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    const/4 p2, 0x4

    :goto_3
    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p2, p0, Lcom/narvii/master/search/widgets/TopicCardView;->rightChevron:Landroid/view/View;

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    const/4 v2, 0x0

    .line 77
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p1, :cond_e

    .line 81
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    const/4 p3, 0x1

    if-nez p2, :cond_8

    .line 82
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_6

    goto/16 :goto_4

    :cond_6
    if-ne p2, p3, :cond_7

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f02c0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 86
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f0f02c1

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-virtual {p4, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    if-ne p2, p3, :cond_b

    .line 89
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_9

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f1004

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_9
    if-ne p2, p3, :cond_a

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0cd7

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 94
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f0f0cd8

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-virtual {p4, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_b
    if-le p2, p3, :cond_e

    .line 97
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_c

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v1, 0x7f0f1005

    new-array p3, p3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-virtual {p4, v1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    if-ne p2, p3, :cond_d

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f0f0c05

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-virtual {p4, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 102
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f0f0c06

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
