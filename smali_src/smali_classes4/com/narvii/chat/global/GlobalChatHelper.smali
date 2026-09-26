.class public final Lcom/narvii/chat/global/GlobalChatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatHelper.kt\ncom/narvii/chat/global/GlobalChatHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,270:1\n1#2:271\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private community:Lcom/narvii/model/Community;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationService:Lcom/narvii/notification/NotificationCenter;

.field private source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

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
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "account"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    const-string v0, "affiliations"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 31
    .line 32
    const-string v0, "api"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 41
    .line 42
    const-string v0, "notification"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->notificationService:Lcom/narvii/notification/NotificationCenter;

    .line 51
    .line 52
    const-string v0, "Global Chats"

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    .line 55
    .line 56
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 57
    .line 58
    const-string v1, "__community"

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 p1, 0x0

    .line 80
    .line 81
    :goto_0
    if-eqz p1, :cond_2

    .line 82
    .line 83
    const-class v0, Lcom/narvii/model/Community;

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Lcom/narvii/model/Community;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->community:Lcom/narvii/model/Community;

    .line 92
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined$lambda$10(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getNotificationService$p(Lcom/narvii/chat/global/GlobalChatHelper;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->notificationService:Lcom/narvii/notification/NotificationCenter;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation$lambda$11(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method private static final checkCommunityJoined$lambda$10(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method private static final checkGlobalChatAminoPlusOperation$lambda$11(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity$lambda$4(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity$lambda$7(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity$lambda$7$lambda$6(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatHelper;->isInVisitorMode()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPreJoinCommunity(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/chat/global/h;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/narvii/chat/global/h;-><init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 41
    const/4 p2, 0x0

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    .line 46
    :cond_1
    return-void
.end method

.method private static final innerJoinCommunity$lambda$7(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Boolean;)V
    .locals 9

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$progress"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p4

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p4, :cond_2

    .line 21
    .line 22
    new-instance p4, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "getContext(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p4, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x3

    .line 38
    .line 39
    new-array v1, v1, [Lw7/u;

    .line 40
    .line 41
    const-string v2, "type"

    .line 42
    .line 43
    const-string v3, "join"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    const-string v0, "source"

    .line 52
    .line 53
    const-string v2, "global_chats"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 57
    move-result-object v0

    .line 58
    const/4 v2, 0x1

    .line 59
    .line 60
    aput-object v0, v1, v2

    .line 61
    .line 62
    const-string v0, "community_id"

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 70
    move-result-object v0

    .line 71
    const/4 v3, 0x2

    .line 72
    .line 73
    aput-object v0, v1, v3

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/collections/p0;->n([Lw7/u;)Ljava/util/Map;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v1, "community_join"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, v1, v0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    .line 84
    new-instance v8, Lkotlin/jvm/internal/p0;

    .line 85
    .line 86
    .line 87
    invoke-direct {v8}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 88
    .line 89
    if-eqz p2, :cond_0

    .line 90
    .line 91
    .line 92
    invoke-interface {p2}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->followingChatToJoin()Lcom/narvii/model/ChatThread;

    .line 93
    move-result-object p4

    .line 94
    .line 95
    iput-object p4, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 96
    .line 97
    :cond_0
    iget-object p4, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 98
    .line 99
    if-nez p4, :cond_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 112
    .line 113
    check-cast p4, Lcom/narvii/model/ChatThread;

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/chat/global/d;

    .line 116
    move-object v3, v0

    .line 117
    move-object v4, p3

    .line 118
    move-object v5, p2

    .line 119
    move v6, p1

    .line 120
    move-object v7, p0

    .line 121
    .line 122
    .line 123
    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/global/d;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p4, v0}, Lcom/narvii/chat/global/GlobalChatHelper;->joinChat(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 127
    goto :goto_0

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 131
    .line 132
    if-eqz p2, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, p1, v0}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method private static final innerJoinCommunity$lambda$7$lambda$6(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;ILcom/narvii/chat/global/GlobalChatHelper;Lkotlin/jvm/internal/p0;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$progress"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$chatToJoin"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2, p0}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    .line 31
    .line 32
    :cond_0
    iget-object p0, p3, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string p1, "statistics"

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    const-string p1, "getService(...)"

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p0, Lcom/narvii/util/statistics/StatisticsService;

    .line 46
    .line 47
    const-string p1, "Join Chat Thread"

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    iget-object p1, p4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 56
    .line 57
    const-string p2, "Others"

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    const-string p2, "Type"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    const-string p1, "Global Chats"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    const-string p1, "Join Chat Thread Total"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    iget-object p1, p3, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 85
    return-void
.end method

.method private final isInVisitorMode()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method private final joinChat(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v4, "/chat/thread/"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "/member/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 58
    .line 59
    new-instance v2, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;

    .line 60
    .line 61
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p1, p0, p2, v3}, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;-><init>(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/global/GlobalChatHelper;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    const-string v2, "JoinCommunityDialog"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f120808

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "getString(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    const p2, 0x7f120809

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :goto_0
    move-object v1, p1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    const p2, 0x7f12080a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    const p2, 0x7f1201e2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    new-instance p2, Lcom/narvii/chat/global/e;

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v0}, Lcom/narvii/chat/global/e;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 92
    .line 93
    .line 94
    const v1, -0x444445

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 98
    .line 99
    new-instance p1, Lcom/narvii/chat/global/f;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v0, p3}, Lcom/narvii/chat/global/f;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 103
    .line 104
    .line 105
    const p2, 0x7f120b53

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 112
    return-void
.end method

.method private static final showJoinAminoFirstHint$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "Cancel"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    return-void
.end method

.method private static final showJoinAminoFirstHint$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "Join"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void
.end method

.method private static final tryJoinCommunity$lambda$4(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final checkCommunityJoined(ILcom/narvii/util/Callback;)Z
    .locals 0
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/chat/global/g;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Lcom/narvii/chat/global/g;-><init>(Lcom/narvii/util/Callback;)V

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p2, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    .line 16
    return p2

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z
    .locals 2
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "membership"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 50
    :goto_0
    return v1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/chat/global/i;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p3}, Lcom/narvii/chat/global/i;-><init>(Lcom/narvii/util/Callback;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1, v1, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    .line 65
    return v1

    .line 66
    :cond_2
    const/4 p1, 0x1

    .line 67
    return p1
.end method

.method public final communityDetailIntent(Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 26
    .line 27
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 37
    .line 38
    const-string p1, "Source"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string p1, "joinOnly"

    .line 44
    const/4 p2, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final isCommunityJoined(I)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public final launchChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V
    .locals 13
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "thread"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    const-string v2, "community"

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 18
    .line 19
    iget v2, p2, Lcom/narvii/model/Community;->id:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    .line 32
    .line 33
    :cond_0
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->hasLiveEvents()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    const-string v2, "__fromGlobalChat"

    .line 45
    .line 46
    const-string v3, "__hideDrawer"

    .line 47
    .line 48
    const-string v4, "__community"

    .line 49
    .line 50
    const-string v5, "__communityId"

    .line 51
    const/4 v6, 0x1

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    new-instance v7, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    .line 60
    invoke-direct {v7, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 61
    .line 62
    new-instance v12, Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    iget v0, p2, Lcom/narvii/model/Community;->id:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v12, v3, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 89
    move-result v9

    .line 90
    .line 91
    iget-object v10, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    .line 92
    const/4 v11, 0x1

    .line 93
    move-object v8, p1

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v7 .. v12}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_3
    const-class v1, Lcom/narvii/chat/ChatFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    const-string v7, "id"

    .line 106
    .line 107
    iget-object v8, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    iget v7, p2, Lcom/narvii/model/Community;->id:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    .line 139
    const-string p1, "Source"

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v1}, Lcom/narvii/chat/global/GlobalChatHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 150
    :goto_0
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    return-void
.end method

.method public final tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 1
    .param p3    # Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    return p1
.end method

.method public final tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 6
    .param p4    # Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    return p1
.end method

.method public final tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 3
    .param p5    # Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 4
    invoke-interface {p5}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onCheckLoginFailed()V

    :cond_0
    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 6
    invoke-interface {p5}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->getActionRTCType()I

    move-result v2

    .line 7
    :cond_3
    new-instance p3, Lcom/narvii/chat/global/c;

    invoke-direct {p3, p0, p1, p5}, Lcom/narvii/chat/global/c;-><init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    invoke-direct {p0, p2, v2, p3}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0, p1, p5}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    :cond_5
    :goto_0
    return v1
.end method
