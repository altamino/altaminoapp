.class public final Lcom/narvii/chat/invite/ChatInvitationFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/ThreadInfoHost;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private config:Lcom/narvii/config/ConfigService;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private invitationContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;


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

.method public static final synthetic access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$onChatJoined(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onChatJoined(Lcom/narvii/model/ChatThread;)V

    .line 4
    return-void
.end method

.method private static final doRequestToJoinChat$lambda$6(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onChatJoined(Lcom/narvii/model/ChatThread;)V

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a0059

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object p1, p2

    .line 32
    .line 33
    :goto_0
    if-nez p1, :cond_2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :goto_1
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a0b8a

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    :cond_3
    if-nez p2, :cond_4

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_4
    const/16 p0, 0x8

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_2
    return-void
.end method

.method public static synthetic n(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onClick$lambda$5(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/invite/ChatInvitationFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onThreadChanged$lambda$1(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    return-void
.end method

.method private final onChatJoined(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0a0059

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    .line 16
    :goto_0
    const/16 v2, 0x8

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0b8a

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    :cond_2
    if-nez v1, :cond_3

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    iput v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 56
    .line 57
    const-string v1, "update"

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->recordRecentChat()V

    .line 67
    return-void
.end method

.method private static final onClick$lambda$5(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$chatThread"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V

    .line 22
    :cond_0
    return-void
.end method

.method private static final onThreadChanged$lambda$1(Lcom/narvii/chat/invite/ChatInvitationFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->show()V

    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat$lambda$6(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final recordRecentChat()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "globalChat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 9
    .line 10
    const-string v1, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v1, v3}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final checkCommunityAvailability(ZZ)Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "globalChatHelper"

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    :cond_0
    xor-int/lit8 v2, p1, 0x1

    .line 25
    .line 26
    new-instance v3, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    xor-int/lit8 p1, p1, 0x1

    .line 36
    return p1
.end method

.method public final doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V
    .locals 5
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0059

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v0, v1

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_2
    const/16 v2, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0a0b8a

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move-object v0, v1

    .line 39
    .line 40
    :goto_2
    if-nez v0, :cond_4

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    :goto_3
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThreadId()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    if-nez v3, :cond_5

    .line 59
    .line 60
    const-string v3, "accountService"

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 64
    goto :goto_4

    .line 65
    :cond_5
    move-object v1, v3

    .line 66
    .line 67
    .line 68
    :goto_4
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    new-instance v4, Lcom/narvii/chat/invite/b;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/invite/b;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 82
    return-void
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    .line 8
    const-string v1, "getStringParam(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final hide()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f010039

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    :cond_1
    return-void
.end method

.method public final isReadyToShow(Lcom/narvii/model/ChatThread;)Z
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/ChatThread;->condition:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/model/ChatThread;->status:I

    .line 23
    .line 24
    const/16 v0, 0x9

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

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
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a073c

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "id"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThreadId()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "prefetch"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    const-string v0, "customFinishAnimIn"

    .line 49
    .line 50
    .line 51
    const v1, 0x7f010010

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    .line 56
    const-string v0, "customFinishAnimOut"

    .line 57
    .line 58
    .line 59
    const v1, 0x7f010011

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    const-string v0, "__fromGlobalChat"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    .line 73
    const-string v0, "__community"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-static {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f01000e

    .line 94
    .line 95
    .line 96
    const v1, 0x7f01000f

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 100
    return-void

    .line 101
    .line 102
    :cond_1
    const-string v1, "Others"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const-string v2, "statistics"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    const-string v3, "Join Chat Thread"

    .line 119
    .line 120
    .line 121
    invoke-interface {v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    const-string v3, "Join Chat Thread Total"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    const-string v3, "Type"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    const-string v2, "AcceptButton"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 151
    .line 152
    const-string v1, "config"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 162
    move-result v1

    .line 163
    .line 164
    const-string v2, "community"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    const-string v3, "affiliations"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    check-cast v3, Lcom/narvii/community/AffiliationsService;

    .line 183
    .line 184
    if-eqz v2, :cond_3

    .line 185
    .line 186
    iget v2, v2, Lcom/narvii/model/Community;->joinType:I

    .line 187
    .line 188
    if-eqz v2, :cond_3

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 192
    move-result v2

    .line 193
    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    new-instance p1, Lcom/narvii/community/request/CommunityRequestHelper;

    .line 197
    .line 198
    .line 199
    invoke-direct {p1, p0}, Lcom/narvii/community/request/CommunityRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 200
    .line 201
    new-instance v2, Lcom/narvii/chat/invite/c;

    .line 202
    .line 203
    .line 204
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/invite/c;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1, v2}, Lcom/narvii/community/request/CommunityRequestHelper;->checkWhetherUserIsJoined(ILcom/narvii/util/Callback;)V

    .line 208
    return-void

    .line 209
    :cond_3
    const/4 v1, 0x1

    .line 210
    const/4 v2, 0x0

    .line 211
    .line 212
    if-eqz p1, :cond_4

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 216
    move-result p1

    .line 217
    .line 218
    .line 219
    const v3, 0x7f0a0059

    .line 220
    .line 221
    if-ne p1, v3, :cond_4

    .line 222
    move p1, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_4
    move p1, v2

    .line 225
    :goto_0
    xor-int/2addr p1, v1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v2, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->checkCommunityAvailability(ZZ)Z

    .line 229
    move-result p1

    .line 230
    .line 231
    if-nez p1, :cond_5

    .line 232
    return-void

    .line 233
    .line 234
    .line 235
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V

    .line 236
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 11
    .line 12
    const-string p1, "config"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->config:Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    const-string p1, "account"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    new-instance p1, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02b9

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    const-string v1, "requireAccountReceiver"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 35
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->isReadyToShow(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/chat/invite/a;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/a;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    .line 16
    .line 17
    const-wide/16 v0, 0x1f4

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->hide()V

    .line 25
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p2, 0x7f0a073c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a0059

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    const-string p2, "requireAccountReceiver"

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 56
    const/4 p2, 0x0

    .line 57
    .line 58
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    return-void
.end method

.method public final show()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_b

    .line 11
    .line 12
    if-eqz v0, :cond_b

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->isReadyToShow(Lcom/narvii/model/ChatThread;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    .line 40
    const v4, 0x7f0a0285

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v2, v3

    .line 47
    .line 48
    :goto_0
    const-string v4, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView"

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/chat/MultiAvatarView;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    .line 60
    const v5, 0x7f0a0297

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v4

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v4, v3

    .line 67
    .line 68
    :goto_1
    const-string v5, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    .line 80
    const v6, 0x7f0a0dea

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v5

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move-object v5, v3

    .line 87
    .line 88
    :goto_2
    const-string v6, "null cannot be cast to non-null type android.widget.TextView"

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v5, Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 96
    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    .line 100
    const v7, 0x7f0a0059

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v6

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    move-object v6, v3

    .line 107
    .line 108
    :goto_3
    const-string v7, "null cannot be cast to non-null type android.widget.Button"

    .line 109
    .line 110
    .line 111
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    check-cast v6, Landroid/widget/Button;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    .line 121
    .line 122
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 126
    .line 127
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 128
    .line 129
    const/16 v7, 0x8

    .line 130
    const/4 v8, 0x0

    .line 131
    .line 132
    if-nez v1, :cond_5

    .line 133
    move v1, v7

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    move v1, v8

    .line 136
    .line 137
    .line 138
    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v1, :cond_6

    .line 143
    move v7, v8

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 161
    .line 162
    if-nez v2, :cond_8

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    iget-object v3, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    :cond_7
    const v0, 0x7f12025b

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v2, " "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    goto :goto_5

    .line 199
    :cond_8
    const/4 v1, 0x1

    .line 200
    .line 201
    if-ne v2, v1, :cond_9

    .line 202
    .line 203
    .line 204
    const v0, 0x7f120259

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    goto :goto_5

    .line 210
    :cond_9
    const/4 v1, 0x2

    .line 211
    .line 212
    if-ne v2, v1, :cond_a

    .line 213
    .line 214
    .line 215
    const v0, 0x7f12025a

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    goto :goto_5

    .line 221
    .line 222
    :cond_a
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lcom/narvii/util/text/NVText;->removeTags(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    const v0, 0x7f120222

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 236
    .line 237
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 238
    .line 239
    if-eqz v0, :cond_b

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 243
    move-result v1

    .line 244
    .line 245
    if-eqz v1, :cond_b

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    const v2, 0x7f010037

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 259
    move-result-object v1

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    :cond_b
    :goto_6
    return-void
.end method
