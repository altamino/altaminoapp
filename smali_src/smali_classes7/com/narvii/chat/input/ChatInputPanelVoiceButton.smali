.class public Lcom/narvii/chat/input/ChatInputPanelVoiceButton;
.super Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
.source "SourceFile"


# instance fields
.field private audioHelper:Lcom/narvii/chat/audio/AudioHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/chat/audio/AudioHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 19
    return-void
.end method


# virtual methods
.method protected doPreCheck()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public showIcon()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0803ef

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 7
    return-void
.end method
