.class public Lcom/narvii/suggest/interest/InterestTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "SourceFile"


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
    return-void
.end method


# virtual methods
.method protected getAutoBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

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
    .line 13
    .line 14
    :cond_0
    const v0, -0x982eae

    .line 15
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

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

.method public getTopicData()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a098d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    .line 13
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->updateBackground()V

    .line 6
    return-void
.end method

.method public setTopicData(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->updateView()V

    .line 6
    return-void
.end method

.method protected updateBackground()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    const v1, 0x19ffffff

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 36
    move-result v2

    .line 37
    float-to-int v2, v2

    .line 38
    int-to-float v2, v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const/high16 v4, 0x40400000    # 3.0f

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 48
    move-result v3

    .line 49
    float-to-int v3, v3

    .line 50
    int-to-float v3, v3

    .line 51
    .line 52
    .line 53
    const v4, 0x4cffffff    # 1.3421772E8f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v2, -0x4d000001

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestTopicView;->getAutoBackgroundColor()I

    .line 69
    move-result v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 75
    const/4 v2, -0x1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method protected updateView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestTopicView;->moreView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
