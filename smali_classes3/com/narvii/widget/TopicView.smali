.class public Lcom/narvii/widget/TopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "TopicView.java"


# instance fields
.field private topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget p2, Lcom/narvii/lib/R$layout;->lib_story_topic_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected getAutoBackgroundColor()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v0, :cond_0

    .line 40
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/widget/TopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 34
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    return-void
.end method
