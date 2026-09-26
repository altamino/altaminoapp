.class public Lcom/narvii/chat/video/entry/VVChatEntryDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f13015c

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d01e1

    .line 14
    .line 15
    .line 16
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0436

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vRootView:Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVoiceChatEnabled:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    .line 46
    move-result p1

    .line 47
    .line 48
    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVideoChatEnabled:Z

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    .line 54
    move-result p1

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isAvatarChatEnable:Z

    .line 57
    .line 58
    .line 59
    const p1, 0x7f0a0fde

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a0f7a

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    const p1, 0x7f0a0321

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->btnClose:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0a04fa

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vEntryContainer:Landroid/view/View;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->btnClose:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVoiceEntry:Landroid/view/View;

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVoiceChatEnabled:Z

    .line 112
    const/4 v1, 0x0

    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    if-eqz v0, :cond_0

    .line 117
    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move v0, v2

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vVideoEntry:Landroid/view/View;

    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->isVideoChatEnabled:Z

    .line 127
    .line 128
    if-eqz v0, :cond_1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    move v1, v2

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void
.end method

.method private onChannelSelected(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->entrySelectListener:Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;->onEntrySelected(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0f7a

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0fde

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->onChannelSelected(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x4

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->onChannelSelected(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 34
    :goto_0
    return-void
.end method

.method public setEntrySelectListener(Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->entrySelectListener:Lcom/narvii/chat/video/entry/VVChatEntryDialog$EntrySelectListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f010052

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f010051

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vRootView:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/entry/VVChatEntryDialog;->vEntryContainer:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    :cond_1
    return-void
.end method
