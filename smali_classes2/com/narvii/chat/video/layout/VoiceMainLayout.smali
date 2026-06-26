.class public Lcom/narvii/chat/video/layout/VoiceMainLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "VoiceMainLayout.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;


# instance fields
.field audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoiceMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f09018c

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const v0, 0x7f090821

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V

    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;I)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/layout/VoiceMainLayout;->updateViews(ZLcom/narvii/model/User;IZ)V

    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;IZ)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateViews(Lcom/narvii/model/User;I)V

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    if-eqz p4, :cond_1

    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversation()V

    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 60
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
