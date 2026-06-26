.class Lcom/narvii/chat/input/ChatInputFragment$9;
.super Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;
.source "ChatInputFragment.java"


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

    .line 577
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelHide()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1700(Lcom/narvii/chat/input/ChatInputFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->showIcon()V

    .line 585
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method

.method public onPanelShow()V
    .locals 2

    .line 590
    invoke-super {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;->onPanelShow()V

    .line 591
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->val$audioBoardLayout:Lcom/narvii/chat/audio/AudioBoardLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$9;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    return-void
.end method
