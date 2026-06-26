.class public Lcom/narvii/story/detail/StoryInfoCover;
.super Landroid/widget/FrameLayout;
.source "StoryInfoCover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private community:Lcom/narvii/model/Community;

.field private isPreview:Z

.field private leftcollapse:Lcom/narvii/story/detail/StoryLeftCollapseView;

.field private linkContainer:Landroid/view/View;

.field private rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

.field private story:Lcom/narvii/model/Blog;

.field private storyUserView:Lcom/narvii/story/detail/StoryUserView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/detail/StoryInfoCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/story/detail/StoryInfoCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryInfoCover;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b065f

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const p1, 0x7f0807a7

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const p1, 0x7f090aeb

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/detail/StoryRightButtonContainer;

    iput-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    const p1, 0x7f090654

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/detail/StoryLeftCollapseView;

    iput-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->leftcollapse:Lcom/narvii/story/detail/StoryLeftCollapseView;

    const p1, 0x7f090af2

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/detail/StoryUserView;

    iput-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    const p1, 0x7f090663

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->linkContainer:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->linkContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090663

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    iget-boolean v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    invoke-static {p0, p1, v0}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ReadMore"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 147
    invoke-static {p0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/narvii/story/StoryLinkHelper;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-direct {v1, p1}, Lcom/narvii/story/StoryLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    iget-object v2, p0, Lcom/narvii/story/detail/StoryInfoCover;->community:Lcom/narvii/model/Community;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/story/StoryLinkHelper;->openLink(Lcom/narvii/model/LinkSummary;ZLcom/narvii/model/Community;)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 76
    iget-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    if-eqz p2, :cond_4

    .line 77
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x5

    .line 84
    iget-object p4, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eq p4, p0, :cond_2

    if-lez p3, :cond_2

    .line 86
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr p5, v1

    .line 88
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    add-int/lit8 p3, p3, -0x1

    .line 90
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Landroid/view/View;

    move-object p4, v1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is not ViewGroup"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p5, p3

    sub-int/2addr p5, p1

    .line 99
    :goto_2
    iget-object p3, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    add-int/2addr p1, p5

    add-int/2addr p2, v0

    invoke-virtual {p3, p5, v0, p1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 69
    iget-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/detail/StoryUserView;->setAlignWidth(I)V

    return-void
.end method

.method public performVote()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->doVote()V

    return-void
.end method

.method public resetViewState()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->leftcollapse:Lcom/narvii/story/detail/StoryLeftCollapseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->setCollapseState(Z)V

    .line 117
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryUserView;->updateView()V

    return-void
.end method

.method public setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {v0, p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    return-void
.end method

.method public setStoryInfo(Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Z)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    .line 109
    iput-object p2, p0, Lcom/narvii/story/detail/StoryInfoCover;->community:Lcom/narvii/model/Community;

    .line 110
    iput-boolean p3, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    .line 111
    invoke-virtual {p0}, Lcom/narvii/story/detail/StoryInfoCover;->updateView()V

    return-void
.end method

.method public setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {v0, p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V

    return-void
.end method

.method public updateView()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/detail/StoryInfoCover;->linkContainer:Landroid/view/View;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 125
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->rightButton:Lcom/narvii/story/detail/StoryRightButtonContainer;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    iget-boolean v2, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    invoke-virtual {v0, v1, v2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->setStoryInfo(Lcom/narvii/model/Blog;Z)V

    .line 126
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->leftcollapse:Lcom/narvii/story/detail/StoryLeftCollapseView;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/story/detail/StoryInfoCover;->community:Lcom/narvii/model/Community;

    iget-boolean v3, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/story/detail/StoryLeftCollapseView;->setStoryInfo(Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Z)V

    .line 127
    iget-object v0, p0, Lcom/narvii/story/detail/StoryInfoCover;->storyUserView:Lcom/narvii/story/detail/StoryUserView;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryInfoCover;->story:Lcom/narvii/model/Blog;

    iget-boolean v2, p0, Lcom/narvii/story/detail/StoryInfoCover;->isPreview:Z

    invoke-virtual {v0, v1, v2}, Lcom/narvii/story/detail/StoryUserView;->setStoryInfo(Lcom/narvii/model/Blog;Z)V

    return-void
.end method
