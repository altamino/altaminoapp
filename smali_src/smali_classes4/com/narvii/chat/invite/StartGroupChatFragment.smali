.class public Lcom/narvii/chat/invite/StartGroupChatFragment;
.super Lcom/narvii/user/picker/MultiUserPickerFragment;
.source "SourceFile"


# instance fields
.field bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected onConfirmPick(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "chatInvite"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/model/User;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    move v0, v3

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    .line 54
    new-array v4, v2, [Ljava/lang/String;

    .line 55
    move v5, v0

    .line 56
    .line 57
    :goto_0
    if-ge v5, v2, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    check-cast v6, Lcom/narvii/model/User;

    .line 64
    .line 65
    iget-object v6, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 66
    .line 67
    aput-object v6, v4, v5

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    move v0, v3

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v1, v4, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V

    .line 79
    .line 80
    :goto_1
    new-instance p1, Lcom/narvii/chat/invite/StartGroupChatFragment$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/StartGroupChatFragment$1;-><init>(Lcom/narvii/chat/invite/StartGroupChatFragment;)V

    .line 84
    .line 85
    iput-object p1, v1, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    .line 86
    :cond_5
    return-void

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    const v1, 0x7f12122e

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "bubble"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/model/ChatBubble;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    const-string v1, "Source"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    const-string v1, "stickerCollectionId"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "chatInvite"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 70
    :cond_0
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
