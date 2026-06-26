.class public Lcom/narvii/chat/util/GlobalChatService;
.super Ljava/lang/Object;
.source "GlobalChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;,
        Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;
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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 62
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    const-string v0, "prefs"

    .line 63
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "account"

    .line 64
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "chat"

    .line 65
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 66
    new-instance v0, Lcom/narvii/chat/util/-$$Lambda$GlobalChatService$r36Op79os3myKbMcaywEtAtAmuE;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/-$$Lambda$GlobalChatService$r36Op79os3myKbMcaywEtAtAmuE;-><init>(Lcom/narvii/chat/util/GlobalChatService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 67
    new-instance v0, Lcom/narvii/chat/util/GlobalChatService$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/GlobalChatService$1;-><init>(Lcom/narvii/chat/util/GlobalChatService;)V

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyRedDotChanges()V

    return-void
.end method

.method private getPrefKey()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "globalRecentChatList_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$r36Op79os3myKbMcaywEtAtAmuE(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
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

    .line 216
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 228
    :cond_2
    const-class v1, Lcom/narvii/chat/global/GlobalChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/global/GlobalChatThread;

    .line 233
    iget-object v2, v1, Lcom/narvii/chat/global/GlobalChatThread;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    iget v4, v1, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    .line 237
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 236
    invoke-static {v2, v4, v5}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_2
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private notifyChanges()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;->onRecentChatListChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyRedDotChanges()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;

    if-eqz v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;->onRedDotChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recordRecentChatList()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 251
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/util/GlobalChatService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    :cond_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateChatThreadUnread()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

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

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    iget-object v2, v2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/chat/thread"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string v3, "exist-multi"

    .line 332
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "q"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/util/GlobalChatService$2;

    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/util/GlobalChatService$2;-><init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 349
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    :cond_4
    :goto_1
    return-void
.end method

.method private updateThreadUnreadStatus()V
    .locals 7

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    .line 307
    iget-object v4, p0, Lcom/narvii/chat/util/GlobalChatService;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v5, v3, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/narvii/chat/core/ChatService;->isCurThreadUnread(ILjava/lang/String;)Z

    move-result v4

    .line 308
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v2, :cond_3

    xor-int v2, v5, v4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 310
    :goto_3
    iget-object v5, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 313
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 109
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 110
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/global/GlobalChatThread;

    if-nez v5, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v5}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return-void

    :cond_4
    if-lez v2, :cond_5

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 124
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_6

    const/16 v0, 0x13

    .line 125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    :cond_6
    :goto_3
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 132
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    :cond_8
    :goto_4
    return-void
.end method

.method public addRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public flush()Z
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lcom/narvii/chat/util/GlobalChatService;->flush(Z)Z

    move-result v0

    return v0
.end method

.method public flush(Z)Z
    .locals 7

    .line 267
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->recordRecentChatList()V

    .line 270
    iput-wide v0, p0, Lcom/narvii/chat/util/GlobalChatService;->lastRecentChatFlushTime:J

    return v2

    .line 273
    :cond_0
    iget-wide v3, p0, Lcom/narvii/chat/util/GlobalChatService;->lastRecentChatFlushTime:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xea60

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->recordRecentChatList()V

    .line 275
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

    .line 87
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

    .line 359
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatList:Ljava/util/ArrayList;

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

    .line 370
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    iget-object v2, v2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/chat/thread"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string v3, "exist-multi"

    .line 376
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "q"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/util/GlobalChatService$3;

    const-class v3, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/util/GlobalChatService$3;-><init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 410
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    return-void

    .line 360
    :cond_4
    :goto_1
    new-instance v0, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-direct {v0}, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;-><init>()V

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    .line 362
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public isThreadUnread(Ljava/lang/String;)Z
    .locals 2

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->unreadRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public removeCommunity(I)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    if-nez v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget v4, v3, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    if-ne v4, p1, :cond_2

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    .line 154
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 157
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    return-void
.end method

.method public removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 161
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->loadRecentChatList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/global/GlobalChatThread;

    if-nez v3, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_2
    if-ne v2, v4, :cond_4

    return-void

    .line 180
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lcom/narvii/chat/util/GlobalChatService;->flush()Z

    .line 183
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->notifyChanges()V

    :cond_5
    :goto_3
    return-void
.end method

.method public removeRecentChatChangedListener(Lcom/narvii/chat/util/GlobalChatService$RecentChatListChangedListener;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService;->recentChatListListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public tryUpdateChatThreadUnread(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 291
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 292
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService;->lastThreadUnreadRecordUpdateTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->updateThreadUnreadStatus()V

    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/util/GlobalChatService;->updateChatThreadUnread()V

    return-void
.end method
