.class public final Lcom/narvii/chat/util/ChatRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 18
    .line 19
    const-string v0, "api"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "getService(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest$lambda$1$lambda$0(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/chat/util/ChatRequestHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->processPin$lambda$4(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->markUnread$lambda$2(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->markAsread$lambda$3(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic delete$default(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->delete(ILcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    .line 9
    return-void
.end method

.method private static final markAsread$lambda$3(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    instance-of p0, p2, Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    check-cast p2, Ljava/lang/CharSequence;

    .line 15
    const/4 p0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    :cond_0
    return-void
.end method

.method private static final markUnread$lambda$2(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    instance-of p0, p2, Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    check-cast p2, Ljava/lang/CharSequence;

    .line 15
    const/4 p0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    :cond_0
    return-void
.end method

.method private static final processPin$lambda$4(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p2, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p2, Ljava/lang/CharSequence;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 23
    return-void
.end method

.method private static final sendDeleteChatMessageRequest$lambda$1$lambda$0(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 8
    .line 9
    const-string v0, "delete"

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v0, p0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 13
    .line 14
    iget-object p0, p1, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string p1, "notification"

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 26
    return-void
.end method

.method public static synthetic sendDeleteThreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendDeleteThreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendKickUserRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x4

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    move v3, p3

    .line 7
    .line 8
    and-int/lit8 p3, p7, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    const/4 p4, 0x1

    .line 12
    :cond_1
    move v4, p4

    .line 13
    .line 14
    and-int/lit8 p3, p7, 0x10

    .line 15
    .line 16
    if-eqz p3, :cond_2

    .line 17
    const/4 p5, 0x0

    .line 18
    :cond_2
    move-object v5, p5

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-object v6, p6

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/util/ChatRequestHelper;->sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method

.method public static synthetic sendMarkAsReadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method public static synthetic sendMarkAsUnreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final delete(ILcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V
    .locals 5
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    const-string v0, "joinThread"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 25
    .line 26
    :cond_1
    new-instance v1, Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 30
    .line 31
    new-instance v2, Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    const-string v3, "id"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    const-string v3, "thread"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    const-string p2, "ndcId"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->leaveConversation()V

    .line 82
    :cond_2
    :goto_0
    return-void
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    const-string v1, "getService(...)"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v3, "config"

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    const-string v4, "chat"

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast v3, Lcom/narvii/chat/core/ChatService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2, p2}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    .line 53
    .line 54
    :cond_0
    if-eqz p3, :cond_6

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    const-string p3, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 66
    .line 67
    iget-object p3, p2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 68
    const/4 v2, 0x0

    .line 69
    .line 70
    if-eqz p3, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p3

    .line 75
    :cond_1
    move v3, v2

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    check-cast v4, Lcom/narvii/model/User;

    .line 88
    .line 89
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-static {v5, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 99
    .line 100
    iget v3, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 101
    const/4 v4, 0x1

    .line 102
    .line 103
    if-ne v3, v4, :cond_1

    .line 104
    move v3, v4

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_3
    if-eqz v3, :cond_4

    .line 108
    .line 109
    iget p1, p2, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 110
    .line 111
    add-int/lit8 p1, p1, -0x1

    .line 112
    .line 113
    iput p1, p2, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    const-string p3, "notification"

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iput v2, p2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 131
    .line 132
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 133
    .line 134
    const-string v0, "delete"

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 138
    .line 139
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 146
    .line 147
    .line 148
    invoke-static {p2, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_5
    new-instance p3, Lcom/narvii/notification/Notification;

    .line 152
    .line 153
    const-string v0, "update"

    .line 154
    .line 155
    .line 156
    invoke-direct {p3, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p3}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 160
    :cond_6
    :goto_1
    return-void
.end method

.method public final markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 3
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/chat/ThreadResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 16
    .line 17
    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p3, p3, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/chat/util/l;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v0, p2}, Lcom/narvii/chat/util/l;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/chat/ThreadResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/chat/util/k;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0, p2}, Lcom/narvii/chat/util/k;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p3, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/chat/util/j;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p2, v0}, Lcom/narvii/chat/util/j;-><init>(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p3, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendTogglePinRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string v1, "chat"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 22
    .line 23
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/chat/util/i;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p2, p0}, Lcom/narvii/chat/util/i;-><init>(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;)V

    .line 49
    .line 50
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v3, "chat/thread/"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p1, "/message/"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 114
    move-result p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->recallMessage(I)Z

    .line 118
    :cond_3
    :goto_1
    return-void
.end method

.method public final sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_2

    iget-object v1, p4, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-virtual {v0, v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/chat/thread/"

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getCurrentChatType(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    const-class v9, Lcom/narvii/model/api/ApiResponse;

    .line 9
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final sendInviteMemberToExistedChatRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "/chat/thread"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    const-string v3, "type"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "q"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "param(...)"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 71
    .line 72
    const-string p1, "inviteeUids"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;

    .line 84
    .line 85
    const-class v3, Lcom/narvii/chat/ThreadResponse;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v0, p0, p2, v3}, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 92
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "/chat/thread/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "/member/"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-object v9, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 80
    .line 81
    const-class v8, Lcom/narvii/model/api/ApiResponse;

    .line 82
    .line 83
    new-instance v10, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;

    .line 84
    move-object v1, v10

    .line 85
    move-object v3, p3

    .line 86
    move-object v4, p0

    .line 87
    move-object v5, p1

    .line 88
    move-object v6, p2

    .line 89
    move-object v7, p4

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v1 .. v8}, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v0, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 96
    return-void

    .line 97
    .line 98
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 99
    .line 100
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 104
    :cond_3
    return-void
.end method

.method public final sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v2, "/chat/thread/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "/member/"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    xor-int/lit8 p3, p4, 0x1

    .line 64
    .line 65
    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    const-string p4, "allowRejoin"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p4, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    iget-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 79
    .line 80
    const-class v6, Lcom/narvii/model/api/ApiResponse;

    .line 81
    .line 82
    new-instance v7, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;

    .line 83
    move-object v0, v7

    .line 84
    move-object v1, p0

    .line 85
    move-object v2, p1

    .line 86
    move-object v3, p2

    .line 87
    move-object v4, p5

    .line 88
    move-object v5, p6

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, p3, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    :cond_3
    :goto_0
    return-void
.end method

.method public final sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatMessage;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, p2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_5

    .line 5
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "chat"

    .line 6
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/narvii/chat/core/ChatService;

    .line 7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mark-as-read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v0, "messageId"

    .line 8
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 9
    iget-object v0, p3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createdTime"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object v8, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    const-class v7, Lcom/narvii/chat/core/MarkAsReadResponse;

    .line 12
    new-instance v9, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;

    move-object v0, v9

    move-object v1, p3

    move v3, p1

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;-><init>(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v8, p2, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final sendMarkAsReadRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatMessage;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    .line 2
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final sendMarkAsUnReadRequest(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method public final sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;)V
    .locals 6
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 9
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mark-as-unread"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    const-class v7, Lcom/narvii/chat/ThreadResponse;

    .line 4
    new-instance v8, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendThreadDetailRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "/chat/thread/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendThreadDetailRequest$1;

    .line 48
    .line 49
    const-class v2, Lcom/narvii/chat/ThreadResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p2, v2}, Lcom/narvii/chat/util/ChatRequestHelper$sendThreadDetailRequest$1;-><init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendTogglePinRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 4
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean p2, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string p2, "unpin"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-string p2, "pin"

    .line 27
    .line 28
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "/chat/thread/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "/"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendTogglePinRequest$1;

    .line 69
    .line 70
    const-class v2, Lcom/narvii/chat/ThreadResponse;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p1, p0, p3, v2}, Lcom/narvii/chat/util/ChatRequestHelper$sendTogglePinRequest$1;-><init>(ILcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    return-void
.end method

.method public final sendVVChatPermissionRequest(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "/chat/thread/"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, "/vvchat-permission"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "vvChatJoinType"

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper$sendVVChatPermissionRequest$1;

    .line 54
    .line 55
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper$sendVVChatPermissionRequest$1;-><init>(Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 62
    return-void
.end method
