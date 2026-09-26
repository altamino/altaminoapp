.class public Lcom/narvii/chat/video/utils/VVChatInviteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ADD_MEMBER:I = 0x12c


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field channelType:I

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field chatThread:Lcom/narvii/model/ChatThread;

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    iput p3, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->channelType:I

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 31
    return-void
.end method

.method private openChannelInvitePage()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "channel_type"

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->channelType:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "thread"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const-string v2, "id"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method private openMemberInvitePage()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v1

    .line 17
    .line 18
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    aput-object v0, v3, v4

    .line 50
    .line 51
    .line 52
    const v0, 0x7f12027e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const v0, 0x104000a

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    const-class v1, Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 79
    .line 80
    const-string v4, "exists"

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    const-string v2, "maxMember"

    .line 90
    .line 91
    iget v4, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    .line 96
    const-string v2, "threadId"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    const-string v0, "showSearchBar"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 111
    .line 112
    instance-of v2, v0, Lcom/narvii/app/NVFragment;

    .line 113
    .line 114
    const/16 v3, 0x12c

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_2
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    .line 125
    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 132
    :cond_3
    :goto_0
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private shareChatThread()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 12
    return-void
.end method

.method private showJoinPrivateChatDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d01c9

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0247

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a002d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    check-cast v4, Lcom/narvii/model/User;

    .line 36
    .line 37
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v5

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    check-cast v4, Lcom/narvii/model/User;

    .line 61
    const/4 v5, 0x2

    .line 62
    .line 63
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    new-instance v4, Lcom/narvii/chat/video/utils/VVChatInviteHelper$3;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, p0, v0, v2, v1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$3;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/model/ChatThread;Ljava/util/List;Ljava/util/List;)V

    .line 84
    .line 85
    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v4, "/chat/thread/"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "/member/invite"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    const-string v1, "uids"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 141
    .line 142
    const-string v2, "api"

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 154
    return-void
.end method

.method public handleAddMemberOnActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x12c

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const-string p1, "users"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class p2, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result p2

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->addMembers(Ljava/util/List;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onInviteButtonClicked()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 30
    :goto_0
    return-void

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_8

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->notJoined()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->openChannelInvitePage()V

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->openMemberInvitePage()V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    const v1, 0x7f1201dd

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 110
    .line 111
    .line 112
    const v1, 0x7f1212a7

    .line 113
    const/4 v2, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    .line 124
    :cond_8
    :goto_1
    return-void
.end method
