.class public Lcom/narvii/chat/invite/StartGroupChatFragment;
.super Lcom/narvii/user/picker/MultiUserPickerFragment;
.source "StartGroupChatFragment.java"


# instance fields
.field bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConfirmPick(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "chatInvite"

    .line 48
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v1, :cond_5

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 52
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V

    goto :goto_1

    .line 54
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 55
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 56
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/User;

    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v1, v2, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V

    .line 60
    :goto_1
    new-instance p1, Lcom/narvii/chat/invite/StartGroupChatFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/StartGroupChatFragment$1;-><init>(Lcom/narvii/chat/invite/StartGroupChatFragment;)V

    iput-object p1, v1, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    :cond_5
    return-void

    .line 43
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f1123

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "bubble"

    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatBubble;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    iput-object v0, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stickerCollectionId"

    .line 29
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
