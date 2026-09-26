.class public Lcom/narvii/chat/invite/JoinThreadFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# instance fields
.field currentDialog:Lcom/narvii/util/dialog/AlertDialog;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$leaveConversation$0(Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/invite/JoinThreadFragment;->sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/invite/JoinThreadFragment;->lambda$leaveConversation$0(Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/chat/invite/JoinThreadFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method private sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 10

    .line 1
    .line 2
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    new-instance v6, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v6, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    const-string v0, "ndcId"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    const-string v1, "config"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    move-object v5, v1

    .line 31
    .line 32
    check-cast v5, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 38
    move-result v0

    .line 39
    :cond_0
    move v7, v0

    .line 40
    .line 41
    iget-object v8, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v9, Lcom/narvii/chat/invite/JoinThreadFragment$2;

    .line 44
    move-object v0, v9

    .line 45
    move-object v1, p0

    .line 46
    move-object v3, p1

    .line 47
    move v4, v7

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/JoinThreadFragment$2;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;ILcom/narvii/config/ConfigService;)V

    .line 51
    move-object v3, v6

    .line 52
    move-object v5, p2

    .line 53
    move-object v6, v8

    .line 54
    move-object v7, p1

    .line 55
    move-object v8, v9

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
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

    .line 1
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

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3
    iget v0, v6, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "account"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 7
    new-instance v8, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v9, Lcom/narvii/chat/invite/JoinThreadFragment$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/JoinThreadFragment$1;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    iput-object v9, v8, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 9
    invoke-virtual {v8}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 10
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

    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, v8, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const-string p1, "statistics"

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v0, "Join Chat Thread"

    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Join Chat Thread Total"

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Type"

    const-string v1, "Public"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public leaveConversation()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    new-instance v4, Lcom/narvii/chat/invite/d;

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, p0, v0, v1}, Lcom/narvii/chat/invite/d;-><init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v0, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 11
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->showJoinHangoutPanel()V

    .line 11
    return-void
.end method

.method public showJoinHangoutPanel()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-ne v1, v2, :cond_4

    .line 14
    .line 15
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 16
    const/4 v3, 0x2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    :cond_1
    iget v1, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_4

    .line 29
    .line 30
    iget v0, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 31
    .line 32
    const/16 v1, 0x9

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-string v1, "chatInvitation"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->show()V

    .line 55
    :cond_3
    return-void

    .line 56
    .line 57
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 71
    const/4 v0, 0x0

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment;->currentDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 74
    :cond_5
    return-void
.end method
