.class public final Lcom/narvii/chat/util/ChatRequestHelper;
.super Ljava/lang/Object;
.source "ChatRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatRequestHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatRequestHelper.kt\ncom/narvii/chat/util/ChatRequestHelper\n*L\n1#1,461:1\n*E\n"
.end annotation


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 40
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/chat/util/ChatRequestHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method public static synthetic delete$default(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 421
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->delete(ILcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method public static synthetic sendDeleteThreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 316
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendDeleteThreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 308
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendKickUserRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    .line 281
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/util/ChatRequestHelper;->sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendMarkAsReadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic sendMarkAsUnreadRequest$default(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public final delete(ILcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "joinThread"

    .line 425
    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 430
    :cond_1
    new-instance v1, Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-direct {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 431
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 432
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getBriefContent()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "thread"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ndcId"

    .line 434
    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 437
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 438
    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->leaveConversation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    .line 347
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 350
    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "chat"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ctx.getService(\"chat\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/chat/core/ChatService;

    const-string v3, "configService"

    .line 351
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v2, v1, p2}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_8

    .line 354
    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 356
    iget-object p3, p2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 357
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    const/4 v2, 0x0

    .line 358
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 360
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 362
    iget v2, v3, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    .line 367
    iget p1, p2, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 369
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p3, "notification"

    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ctx.getService(\"notification\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    if-eqz v0, :cond_6

    .line 371
    iput v1, p2, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 372
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 373
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 374
    invoke-static {p2, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    goto :goto_1

    .line 376
    :cond_6
    new-instance p3, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p3, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 377
    invoke-virtual {p1, p3}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_1

    .line 354
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    return-void
.end method

.method public final markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 3

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    const-class v1, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0, p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 208
    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 209
    iget-object p3, p3, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper$markAsread$1;

    invoke-direct {v2, v0, p2}, Lcom/narvii/chat/util/ChatRequestHelper$markAsread$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V

    .line 208
    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 2

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    const-class v1, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0, p2, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 194
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$markUnread$1;

    invoke-direct {v1, v0, p2}, Lcom/narvii/chat/util/ChatRequestHelper$markUnread$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V

    invoke-virtual {p0, p1, p3, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 447
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;

    invoke-direct {v1, p2, v0}, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;-><init>(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {p0, p1, p3, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendTogglePinRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_6

    .line 108
    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "chat"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/core/ChatService;

    .line 109
    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 110
    iget p1, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v2, p1}, Lcom/narvii/chat/core/ChatService;->recallMessage(I)Z

    goto :goto_2

    .line 112
    :cond_5
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 118
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 120
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/message/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 10
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 318
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_8

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 321
    :cond_4
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_5

    iget-object v1, p4, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/chat/thread/"

    if-eqz v0, :cond_6

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getCurrentChatType(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_7

    .line 327
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 329
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;

    const-class v9, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 6
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

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final sendInviteMemberToExistedChatRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 384
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 387
    :cond_2
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 389
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/chat/thread"

    .line 390
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "q"

    .line 393
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "ApiRequest.builder().cha\u2026         .param(\"q\", uid)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 395
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p1, "inviteeUids"

    .line 396
    invoke-virtual {v0, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 397
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, p0, v1, p2, v3}, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 11
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_5

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 69
    :cond_4
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 71
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v10, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;

    const-class v9, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v10

    move-object v3, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 8
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_6

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    .line 285
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p3, :cond_5

    xor-int/lit8 p3, p4, 0x1

    .line 287
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "allowRejoin"

    invoke-virtual {v0, p4, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 289
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    .line 290
    iget-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v7, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;

    const-class v6, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {p4, p3, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 7

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 139
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    iget-object p2, p3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    :cond_3
    move-object v7, p2

    if-eqz v7, :cond_4

    .line 140
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    return-void

    .line 143
    :cond_6
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "chat"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/narvii/chat/core/ChatService;

    .line 144
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mark-as-read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 145
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "messageId"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 146
    iget-object v0, p3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createdTime"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 148
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 150
    :cond_7
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;

    const-class v9, Lcom/narvii/chat/core/MarkAsReadResponse;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move v6, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final sendMarkAsReadRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V
    .locals 2
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

    .line 127
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "configService"

    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final sendMarkAsUnReadRequest(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "configService"

    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;)V
    .locals 6

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

    .line 219
    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mark-as-unread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v8, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;

    const-class v7, Lcom/narvii/chat/ThreadResponse;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendThreadDetailRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 50
    :cond_2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendThreadDetailRequest$1;

    const-class v2, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v1, p2, v2}, Lcom/narvii/chat/util/ChatRequestHelper$sendThreadDetailRequest$1;-><init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final sendTogglePinRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    if-eqz p2, :cond_1

    const-string/jumbo p2, "unpin"

    goto :goto_0

    :cond_1
    const-string p2, "pin"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 253
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 255
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper$sendTogglePinRequest$1;

    const-class v2, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v1, p0, p1, p3, v2}, Lcom/narvii/chat/util/ChatRequestHelper$sendTogglePinRequest$1;-><init>(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final sendVVChatPermissionRequest(Ljava/lang/String;I)V
    .locals 3

    .line 456
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/vvchat-permission"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvChatJoinType"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 457
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper$sendVVChatPermissionRequest$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper$sendVVChatPermissionRequest$1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
