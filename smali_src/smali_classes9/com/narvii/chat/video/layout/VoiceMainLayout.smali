.class public Lcom/narvii/chat/video/layout/VoiceMainLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;


# instance fields
.field audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoiceMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0240

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0aca

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V

    .line 31
    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/chat/video/layout/VoiceMainLayout;->updateViews(ZLcom/narvii/model/User;IZ)V

    return-void
.end method

.method public updateViews(ZLcom/narvii/model/User;IZ)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateViews(Lcom/narvii/model/User;I)V

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversation()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->audioCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceMainLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
