.class public Lcom/narvii/chat/video/entry/VVChatEntryDialog;
.super Lcom/narvii/app/NVDialog;
.source "VVChatEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;
    }
.end annotation


# instance fields
.field private btnClose:Landroid/view/View;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private ctx:Lcom/narvii/app/NVContext;

.field entrySelectListener:Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;

.field private isAvatarChatEnable:Z

.field private isVideoChatEnabled:Z

.field private isVoiceChatEnabled:Z

.field private vEntryContainer:Landroid/view/View;

.field private vRootView:Landroid/view/View;

.field private vVideoEntry:Landroid/view/View;

.field private vVoiceEntry:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000cd

    invoke-direct {p0, v0, v1}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0b01c1

    .line 43
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const v0, 0x7f090352

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vRootView:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVoiceChatEnabled:Z

    .line 49
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVideoChatEnabled:Z

    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isAvatarChatEnable:Z

    const p1, 0x7f090cb8

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    const p1, 0x7f090c54

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    const p1, 0x7f09025e

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->btnClose:Landroid/view/View;

    const p1, 0x7f0903fa

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vEntryContainer:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    iget-boolean v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVoiceChatEnabled:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    iget-boolean v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVideoChatEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onChannelSelected(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->entrySelectListener:Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;->onEntrySelected(I)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_2

    const v0, 0x7f090c54

    if-eq p1, v0, :cond_1

    const v0, 0x7f090cb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 84
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->onChannelSelected(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->onChannelSelected(I)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public setEntrySelectListener(Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->entrySelectListener:Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010034

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010033

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vEntryContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
