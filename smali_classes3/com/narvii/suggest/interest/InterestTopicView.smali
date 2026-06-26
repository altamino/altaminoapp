.class public Lcom/narvii/suggest/interest/InterestTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "InterestTopicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;
    }
.end annotation


# instance fields
.field private isChecked:Z

.field moreView:Landroid/view/View;

.field private topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getAutoBackgroundColor()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v0, :cond_0

    .line 94
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    return v0

    :cond_0
    const v0, -0x982eae

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTopicData()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    const v0, 0x7f090723

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    .line 49
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->updateBackground()V

    return-void
.end method

.method public setTopicData(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 40
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->updateView()V

    return-void
.end method

.method protected updateBackground()V
    .locals 6

    .line 72
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 73
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    if-nez v1, :cond_0

    const v1, 0x19ffffff

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const v3, 0x4cffffff    # 1.3421772E8f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 78
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    const v2, -0x4d000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->getAutoBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateView()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 55
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    instance-of v0, v0, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
