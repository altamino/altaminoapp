.class public Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;
.super Lcom/narvii/chat/ChatMessageItemDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field private flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field private imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

.field private mFlag:Lcom/narvii/flag/model/Flag;

.field private tvMessageTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d0290

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 5
    const/4 v6, 0x7

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "flag_item"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/flag/model/Flag;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/flag/model/Flag;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "threadId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const-string p1, "messageId"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 46
    .line 47
    :goto_1
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    const p3, 0x7f1203a0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "message"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a096d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->tvMessageTime:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a014e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->screenshotMediaList:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    move-result p2

    .line 38
    .line 39
    if-lez p2, :cond_0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->screenshotMediaList:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/model/Media;

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object p2, v0

    .line 52
    .line 53
    :goto_0
    if-nez p2, :cond_1

    .line 54
    move-object v2, v0

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    iget-object v2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    :goto_1
    const v3, 0x7f0a0148

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 74
    .line 75
    .line 76
    const v3, -0xc0a01

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const/16 v0, 0x8

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    move v0, v1

    .line 95
    .line 96
    .line 97
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 110
    .line 111
    new-instance v0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0, p2}, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;Lcom/narvii/model/Media;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected updateChatMessageView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateChatMessageView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->tvMessageTime:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lcom/narvii/util/DateTimeFormatter;->formatChat(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    return-void
.end method
