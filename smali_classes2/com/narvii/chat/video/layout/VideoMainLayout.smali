.class public Lcom/narvii/chat/video/layout/VideoMainLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "VideoMainLayout.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;


# instance fields
.field videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoMainContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoMainContainer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090c51

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const v0, 0x7f090820

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VideoMainContainer;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoMainContainer;

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V

    :cond_0
    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;I)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/layout/VideoMainLayout;->updateViews(ZLcom/narvii/model/User;IZ)V

    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;IZ)V
    .locals 0

    const/16 p4, 0x8

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateViews(Lcom/narvii/model/User;I)V

    .line 46
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method
