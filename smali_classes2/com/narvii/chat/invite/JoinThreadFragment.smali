.class public Lcom/narvii/chat/invite/JoinThreadFragment;
.super Lcom/narvii/app/NVFragment;
.source "JoinThreadFragment.java"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# instance fields
.field currentDialog:Lcom/narvii/util/dialog/AlertDialog;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/invite/JoinThreadFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method private sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 10

    .line 205
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 208
    new-instance v6, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v6, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "ndcId"

    .line 209
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "config"

    .line 210
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/narvii/config/ConfigService;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    :cond_0
    move v7, v0

    .line 216
    iget-object v8, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    new-instance v9, Lcom/narvii/chat/invite/JoinThreadFragment$2;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/JoinThreadFragment$2;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;ILcom/narvii/config/ConfigService;)V

    move-object v3, v6

    move-object v5, p2

    move-object v6, v8

    move-object v7, p1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 62
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public joinConversation()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/chat/invite/JoinThreadFragment;->joinConversation(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public joinConversation(Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 109
    iget v0, v6, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "account"

    .line 112
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 113
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 119
    new-instance v8, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v9, Lcom/narvii/chat/invite/JoinThreadFragment$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/JoinThreadFragment$1;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    iput-object v9, v8, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 163
    invoke-virtual {v8}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 166
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 168
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 169
    iget-object v1, v8, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$leaveConversation$0$JoinThreadFragment(Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 195
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/invite/JoinThreadFragment;->sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public leaveConversation()V
    .locals 6

    .line 182
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "account"

    .line 186
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 187
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 192
    :cond_1
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 193
    invoke-virtual {v2, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/narvii/chat/invite/-$$Lambda$JoinThreadFragment$uqUDpVVokdbc63IjObmgf2THItA;

    invoke-direct {v5, p0, v0, v1}, Lcom/narvii/chat/invite/-$$Lambda$JoinThreadFragment$uqUDpVVokdbc63IjObmgf2THItA;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->showJoinHangoutPanel()V

    return-void
.end method

.method public showJoinHangoutPanel()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    iget v1, v0, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget v1, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-eq v1, v2, :cond_4

    iget v0, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "chatInvitation"

    .line 95
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInvitationFragment;

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->show()V

    :cond_3
    return-void

    .line 85
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    :cond_5
    return-void
.end method
