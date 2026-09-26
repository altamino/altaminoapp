.class public Lcom/narvii/widget/TopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "SourceFile"


# instance fields
.field private topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$layout;->lib_story_topic_view:I

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    return-void
.end method


# virtual methods
.method protected getAutoBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    .line 4
    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 6
    return-void
.end method
