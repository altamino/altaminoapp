.class public Lcom/narvii/chat/input/ChatInputPanelVoiceButton;
.super Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
.source "ChatInputPanelVoiceButton.java"


# instance fields
.field private audioHelper:Lcom/narvii/chat/audio/AudioHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    return-void
.end method


# virtual methods
.method protected doPreCheck()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    move-result v0

    return v0
.end method

.method public showIcon()V
    .locals 1

    const v0, 0x7f0802e5

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
