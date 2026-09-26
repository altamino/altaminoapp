.class Lcom/narvii/chat/input/ChatInputFragment$9;
.super Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;

.field final synthetic val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

.field final synthetic val$voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/chat/audio/AudioBoardLayout;Lcom/narvii/chat/input/ChatInputPanelVoiceButton;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPanelHide()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->R(Lcom/narvii/chat/input/ChatInputFragment;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->showIcon()V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 38
    return-void
.end method

.method public onPanelShow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;->onPanelShow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 28
    return-void
.end method
