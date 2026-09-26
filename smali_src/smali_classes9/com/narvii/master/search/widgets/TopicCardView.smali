.class public Lcom/narvii/master/search/widgets/TopicCardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/search/widgets/TopicCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07052c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    const p2, 0x7f0d03cd

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [F

    .line 10
    .line 11
    iget v3, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    aput v3, v2, v4

    .line 15
    const/4 v5, 0x1

    .line 16
    .line 17
    aput v3, v2, v5

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x0

    .line 20
    .line 21
    aput v7, v2, v6

    .line 22
    const/4 v8, 0x3

    .line 23
    .line 24
    aput v7, v2, v8

    .line 25
    const/4 v9, 0x4

    .line 26
    .line 27
    aput v7, v2, v9

    .line 28
    const/4 v10, 0x5

    .line 29
    .line 30
    aput v7, v2, v10

    .line 31
    const/4 v11, 0x6

    .line 32
    .line 33
    aput v3, v2, v11

    .line 34
    const/4 v12, 0x7

    .line 35
    .line 36
    aput v3, v2, v12

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    new-array v2, v1, [F

    .line 45
    .line 46
    aput v7, v2, v4

    .line 47
    .line 48
    aput v7, v2, v5

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->corner:F

    .line 51
    .line 52
    aput v1, v2, v6

    .line 53
    .line 54
    aput v1, v2, v8

    .line 55
    .line 56
    aput v1, v2, v9

    .line 57
    .line 58
    aput v1, v2, v10

    .line 59
    .line 60
    aput v7, v2, v11

    .line 61
    .line 62
    aput v7, v2, v12

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0eea

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvTitle:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a042f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0718

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->indicator2:Lcom/narvii/widget/TintButton;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a070d

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a01e0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->bookmarkIndicator:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0c42

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/master/search/widgets/TopicCardView;->rightChevron:Landroid/view/View;

    .line 66
    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;ZZ)V

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;ZZZ)V

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;ZZZ)V
    .locals 4

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 5
    invoke-virtual {p4}, Lcom/narvii/topic/widgets/TopicCardCoverView;->showSubscribeTag()V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 6
    invoke-virtual {p4}, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeTag()V

    :goto_0
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->coverView:Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 7
    invoke-virtual {p4, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->indicator2:Lcom/narvii/widget/TintButton;

    .line 8
    invoke-virtual {p4, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvTitle:Landroid/widget/TextView;

    const-string v0, ""

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 9
    :cond_2
    iget-object v1, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/narvii/master/search/widgets/TopicCardView;->bookmarkIndicator:Landroid/view/View;

    .line 10
    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_3

    :cond_3
    move p2, v2

    :goto_3
    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/master/search/widgets/TopicCardView;->rightChevron:Landroid/view/View;

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    move v2, v3

    .line 11
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_5
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    const/4 p3, 0x1

    if-nez p2, :cond_8

    .line 13
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_6

    goto/16 :goto_4

    :cond_6
    if-ne p2, p3, :cond_7

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f12030b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 15
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    const p1, 0x7f12030c

    invoke-virtual {p4, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    if-ne p2, p3, :cond_b

    .line 16
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_9

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f12111b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_9
    if-ne p2, p3, :cond_a

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f120dff

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 19
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    const p1, 0x7f120e00

    invoke-virtual {p4, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_b
    if-le p2, p3, :cond_e

    .line 20
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    if-nez p2, :cond_c

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const p1, 0x7f12111c

    invoke-virtual {p4, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    if-ne p2, p3, :cond_d

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    const p1, 0x7f120d30

    invoke-virtual {p4, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 23
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->communityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p3

    const p1, 0x7f120d31

    invoke-virtual {p4, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/master/search/widgets/TopicCardView;->tvDetail:Landroid/widget/TextView;

    const/16 p2, 0x8

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
