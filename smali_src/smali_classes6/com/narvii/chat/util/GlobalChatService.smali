.class public Lcom/narvii/chat/util/GlobalChatService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;,
        Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;
    }
.end annotation


# static fields
.field private static final MAX_RECENT_CHAT_COUNT:I = 0x14

.field private static final PREF_KEY_RECENT_CHAT_LIST:Ljava/lang/String; = "globalRecentChatList_"

.field private static final RECENT_CHAT_FLUSH_INTERVAL:J = 0xea60L

.field private static final THREAD_UNREAD_UPDATE_INTERVAL:J = 0x927c0L


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private lastRecentChatFlushTime:J

.field private lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private prefs:Landroid/content/SharedPreferences;

.field private recentChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private recentChatListListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public recentChatThreadIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;

.field private unreadRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v0, "api"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 37
    .line 38
    const-string v0, "prefs"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Landroid/content/SharedPreferences;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    const-string v0, "account"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    const-string v0, "chat"

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/chat/util/m;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/m;-><init>(Lcom/narvii/chat/util/GlobalChatService;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/chat/util/GlobalChatService$1;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/GlobalChatService$1;-><init>(Lcom/narvii/chat/util/GlobalChatService;)V

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    .line 94
    .line 95
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    return-void
.end method

.method private getPrefKey()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "globalRecentChatList_"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyRedDotChanges()V

    return-void
.end method

.method private loadRecentChatList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->getPrefKey()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    const-class v1, Lcom/narvii/chat/global/GlobalChatThread;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Lcom/narvii/chat/global/GlobalChatThread;

    .line 74
    .line 75
    iget-object v2, v1, Lcom/narvii/chat/global/GlobalChatThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget v4, v1, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 88
    .line 89
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    .line 90
    .line 91
    .line 92
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v4, v5}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    :goto_2
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 111
    return-object v0
.end method

.method private notifyChanges()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;->onRecentChatListChanged(Ljava/util/ArrayList;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method private notifyRedDotChanges()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;->onRedDotChanged(Ljava/util/ArrayList;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method private recordRecentChatList()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->getPrefKey()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method

.method private updateChatThreadUnread()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 41
    move-result v3

    .line 42
    .line 43
    if-lez v3, :cond_2

    .line 44
    .line 45
    const-string v3, ","

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    :cond_2
    iget-object v2, v2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "/chat/thread"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "type"

    .line 71
    .line 72
    const-string v3, "exist-multi"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const-string v2, "q"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    new-instance v2, Lcom/narvii/chat/util/GlobalChatService$2;

    .line 95
    .line 96
    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/util/GlobalChatService$2;-><init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 103
    .line 104
    new-instance v0, Ljava/util/Date;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    .line 110
    :cond_4
    :goto_1
    return-void
.end method

.method private updateThreadUnreadStatus()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/chat/util/GlobalChatService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 34
    .line 35
    iget v5, v3, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 36
    .line 37
    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Lcom/narvii/chat/core/ChatService;->isCurThreadUnread(ILjava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    .line 43
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 44
    .line 45
    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    check-cast v5, Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    move-result v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v5, v1

    .line 68
    .line 69
    :goto_1
    if-nez v2, :cond_3

    .line 70
    .line 71
    xor-int v2, v5, v4

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v2, v1

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 78
    .line 79
    :goto_3
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_4
    if-eqz v2, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    .line 95
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_4

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ge v3, v4, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Lcom/narvii/chat/global/GlobalChatThread;

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v4}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v3, -0x1

    .line 52
    .line 53
    :goto_2
    if-nez v3, :cond_4

    .line 54
    return-void

    .line 55
    .line 56
    :cond_4
    if-lez v3, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    goto :goto_3

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v0

    .line 65
    .line 66
    const/16 v3, 0x14

    .line 67
    .line 68
    if-ne v0, v3, :cond_6

    .line 69
    .line 70
    const/16 v0, 0x13

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_6
    :goto_3
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    .line 100
    :cond_8
    :goto_4
    return-void
.end method

.method public addRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 31
    return-void
.end method

.method public flush()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/chat/util/GlobalChatService;->flush(Z)Z

    move-result v0

    return v0
.end method

.method public flush(Z)Z
    .locals 7

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->recordRecentChatList()V

    iput-wide v0, p0, Lcom/narvii/chat/util/GlobalChatService;->lastRecentChatFlushTime:J

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/narvii/chat/util/GlobalChatService;->lastRecentChatFlushTime:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xea60

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->recordRecentChatList()V

    iput-wide v0, p0, Lcom/narvii/chat/util/GlobalChatService;->lastRecentChatFlushTime:J

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getRecentChatList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRecentChatList(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/global/GlobalChatThread;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v2, v2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/chat/thread"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "exist-multi"

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/util/GlobalChatService$3;

    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/util/GlobalChatService$3;-><init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 11
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    return-void

    .line 12
    :cond_4
    :goto_1
    new-instance v0, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-direct {v0}, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    .line 14
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public isThreadUnread(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v1

    .line 24
    :goto_0
    return v1
.end method

.method public removeCommunity(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ge v2, v3, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    iget v4, v3, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 37
    .line 38
    if-ne v4, p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    goto :goto_2

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    .line 78
    return-void
.end method

.method public removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_3

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v2, v4

    .line 52
    .line 53
    :goto_2
    if-ne v2, v4, :cond_4

    .line 54
    return-void

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    .line 71
    :cond_5
    :goto_3
    return-void
.end method

.method public removeRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tryUpdateChatThreadUnread(Z)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v0, v2

    .line 23
    .line 24
    .line 25
    const-wide/32 v2, 0x927c0

    .line 26
    .line 27
    cmp-long p1, v0, v2

    .line 28
    .line 29
    if-gez p1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->updateThreadUnreadStatus()V

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->updateChatThreadUnread()V

    .line 37
    return-void
.end method
