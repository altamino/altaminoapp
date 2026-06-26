.class public Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;
.super Lcom/narvii/chat/ChatMessageItemDetailFragment;
.source "ChatMessageDetailFlagModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
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

    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b0266

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 113
    iget-object v1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/4 v6, 0x7

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "flag_item"

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/flag/model/Flag;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/model/Flag;

    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 41
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    if-nez p1, :cond_0

    const-string p1, "threadId"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    if-nez p1, :cond_1

    const-string p1, "messageId"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 83
    iget-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p2, :cond_0

    const p3, 0x7f0f0348

    .line 84
    invoke-virtual {p0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 48
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09070b

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->tvMessageTime:Landroid/widget/TextView;

    const p2, 0x7f0900c8

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    .line 51
    iget-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->screenshotMediaList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->screenshotMediaList:Ljava/util/List;

    .line 52
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 53
    :cond_1
    iget-object v2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_1
    const v3, 0x7f0900c2

    .line 54
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xc0a01

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 58
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 59
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->imgAttachScreenShot:Lcom/narvii/widget/NVImageView;

    new-instance v0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;Lcom/narvii/model/Media;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateChatMessageView()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateChatMessageView()V

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/ChatMessage;->_status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->tvMessageTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/narvii/util/DateTimeFormatter;->formatChat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
