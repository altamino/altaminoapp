.class public Lcom/narvii/chat/video/utils/VVChatInviteHelper;
.super Ljava/lang/Object;
.source "VVChatInviteHelper.java"


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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 57
    iput p3, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->channelType:I

    .line 58
    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 59
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method private openChannelInvitePage()V
    .locals 3

    .line 132
    const-class v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->channelType:I

    const-string v2, "channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openMemberInvitePage()V
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 141
    iget v1, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 142
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    :cond_0
    iget v2, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 147
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 148
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f023b

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 148
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v1, v0, v5, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 152
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 154
    :cond_1
    const-class v1, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 156
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "exists"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget v2, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    const-string v4, "maxMember"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    const-string v2, "threadId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showSearchBar"

    .line 159
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v0, Lcom/narvii/app/NVFragment;

    const/16 v3, 0x12c

    if-eqz v2, :cond_2

    .line 161
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 162
    :cond_2
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_3

    .line 163
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v1, v3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shareChatThread()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    return-void
.end method

.method private showJoinPrivateChatDialog()V
    .locals 3

    .line 100
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01a8

    .line 101
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090193

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090020

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

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

    .line 180
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 188
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 193
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    const/4 v5, 0x2

    .line 194
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 195
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v4, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v4, Lcom/narvii/chat/video/utils/VVChatInviteHelper$3;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$3;-><init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/model/ChatThread;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 225
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 228
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member/invite"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "uids"

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 230
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public handleAddMemberOnActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo p1, "users"

    .line 171
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    const-class p2, Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->addMembers(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onInviteButtonClicked()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->notJoined()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    goto :goto_1

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->openChannelInvitePage()V

    goto :goto_1

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->openMemberInvitePage()V

    goto :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f018e

    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f119f

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 89
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 91
    :cond_7
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->shareChatThread()V

    :cond_8
    :goto_1
    return-void
.end method
