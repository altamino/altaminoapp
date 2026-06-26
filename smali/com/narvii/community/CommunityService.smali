.class public Lcom/narvii/community/CommunityService;
.super Ljava/lang/Object;
.source "CommunityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityService$UpdateStub;
    }
.end annotation


# static fields
.field public static final ACTION_COMMUNITY_CHANGED:Ljava/lang/String; = "com.narvii.action.COMMUNITY_CHANGED"


# instance fields
.field private final cache:Lcom/narvii/util/WeakLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private dir:Ljava/io/File;

.field private final executeUpdate:Ljava/lang/Runnable;

.field private ignoreContents:Z

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final liteCommunityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final timestampCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final updates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/CommunityService$UpdateStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 8

    const-string/jumbo v0, "x"

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v1, Lcom/narvii/community/CommunityService$2;

    invoke-direct {v1, p0}, Lcom/narvii/community/CommunityService$2;-><init>(Lcom/narvii/community/CommunityService;)V

    iput-object v1, p0, Lcom/narvii/community/CommunityService;->executeUpdate:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/narvii/community/CommunityService;->context:Lcom/narvii/app/NVContext;

    .line 91
    iput-boolean p2, p0, Lcom/narvii/community/CommunityService;->ignoreContents:Z

    .line 92
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 93
    new-instance p2, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "community"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 94
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 95
    new-instance p2, Lcom/narvii/util/WeakLruCache;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 96
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    .line 97
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    .line 98
    new-instance p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 101
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_4

    .line 102
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 103
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    const/4 p2, 0x0

    .line 106
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x78

    if-ge v3, v4, :cond_3

    const-string/jumbo v3, "x(\\d+)"

    .line 109
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 112
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 113
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v4, Lcom/narvii/community/CommunityService$UpdateStub;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 122
    iput-object v3, v4, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-interface {p1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 124
    iget-object v2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    invoke-virtual {v4, v2}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    const-string v0, "fail to upgrade community"

    .line 129
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/community/CommunityService;)Ljava/io/File;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    return-object p0
.end method

.method private getCommunity(IZ)Lcom/narvii/model/Community;
    .locals 6

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityService;->safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v2, v1, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 148
    iget-object p1, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object p1, v1, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    return-object p1

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {v1, v0}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    if-eqz v1, :cond_2

    return-object v1

    .line 157
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".c"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    :try_start_0
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/Community;

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 164
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method private safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService$UpdateStub;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public batchUpdateCommunity(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;J)V"
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/narvii/community/CommunityService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/community/CommunityService$3;-><init>(Lcom/narvii/community/CommunityService;Ljava/util/List;J)V

    const-wide/16 p1, 0x2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method doBatchUpdate(Ljava/util/List;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;J)V"
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Community;

    .line 385
    iget v5, v4, Lcom/narvii/model/Community;->id:I

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/narvii/community/CommunityService;->getCommunityTimestamp(I)J

    move-result-wide v5

    invoke-static {p2, p3, v5, v6}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    new-instance v5, Lcom/narvii/community/CommunityService$UpdateStub;

    iget v6, v4, Lcom/narvii/model/Community;->id:I

    invoke-direct {v5, v6}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 389
    iput-wide p2, v5, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 390
    iget v6, v4, Lcom/narvii/model/Community;->id:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/narvii/community/CommunityService;->getCommunity(IZ)Lcom/narvii/model/Community;

    move-result-object v6

    .line 391
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Community;

    const/4 v9, 0x0

    .line 392
    iput-object v9, v8, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 393
    iget-object v10, v8, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_2
    if-nez v6, :cond_3

    move-object v10, v9

    goto :goto_1

    .line 394
    :cond_3
    iget-object v10, v6, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    iput-object v10, v8, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_4
    if-eqz v6, :cond_8

    if-nez v6, :cond_5

    move-object v10, v9

    goto :goto_2

    .line 397
    :cond_5
    iget-object v10, v6, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    :goto_2
    iput-object v10, v8, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    if-nez v6, :cond_6

    move-object v10, v9

    goto :goto_3

    .line 398
    :cond_6
    iget-object v10, v6, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    :goto_3
    iput-object v10, v8, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    if-nez v6, :cond_7

    move-object v10, v9

    goto :goto_4

    .line 399
    :cond_7
    iget-object v10, v6, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :goto_4
    iput-object v10, v8, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 402
    :cond_8
    iput-object v9, v8, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 403
    iput-object v9, v8, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 404
    iput-object v9, v8, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 405
    iput-object v9, v8, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    const/4 v10, 0x0

    .line 406
    iput v10, v8, Lcom/narvii/model/Community;->communityHeat:F

    .line 407
    iput-boolean v2, v8, Lcom/narvii/model/Community;->searchable:Z

    if-eqz v6, :cond_9

    .line 408
    invoke-virtual {v6, v8}, Lcom/narvii/model/Community;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_a

    .line 411
    iput-object v8, v5, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    .line 412
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    .line 413
    iget-object v6, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    iget v8, v4, Lcom/narvii/model/Community;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_a
    iget-object v6, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V

    if-nez v7, :cond_0

    .line 419
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    iget v4, v4, Lcom/narvii/model/Community;->id:I

    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "community"

    .line 421
    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v4, p0, Lcom/narvii/community/CommunityService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    const-string p1, "batch update, no community changed"

    .line 428
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_6

    .line 430
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "batch update "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " changed community in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public fetchLiteCommunity(ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "community/min-info"

    .line 330
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 331
    iget-object p1, p0, Lcom/narvii/community/CommunityService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 332
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/community/CommunityService$1;

    const-class v2, Lcom/narvii/model/api/CommunityResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/community/CommunityService$1;-><init>(Lcom/narvii/community/CommunityService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getCommunity(I)Lcom/narvii/model/Community;
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(IZ)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getCommunityTimestamp(I)J
    .locals 6

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityService;->safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-wide v0, v1, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    return-wide v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 191
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".t"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 194
    :try_start_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 196
    iget-object p1, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    return-wide v4
.end method

.method public getLiteCommunity(I)Lcom/narvii/model/Community;
    .locals 1

    .line 316
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZ)V

    return-void
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 205
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    return-void
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJZZ)V
    .locals 3

    .line 217
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, v0}, Lcom/narvii/community/CommunityService;->getCommunityTimestamp(I)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityService$UpdateStub;

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 221
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 222
    iput-wide p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 223
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    const/4 p4, 0x0

    .line 224
    iput-object p4, p3, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    if-nez p2, :cond_3

    .line 225
    iget-object v2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-nez v1, :cond_2

    move-object v2, p4

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    iput-object v2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_3
    if-nez p2, :cond_6

    if-nez v1, :cond_4

    move-object v2, p4

    goto :goto_1

    .line 229
    :cond_4
    iget-object v2, v1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    :goto_1
    iput-object v2, p3, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    if-nez v1, :cond_5

    move-object v2, p4

    goto :goto_2

    .line 230
    :cond_5
    iget-object v2, v1, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    :goto_2
    iput-object v2, p3, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    :cond_6
    if-nez p5, :cond_8

    if-nez v1, :cond_7

    move-object p5, p4

    goto :goto_3

    .line 233
    :cond_7
    iget-object p5, v1, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :goto_3
    iput-object p5, p3, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :cond_8
    if-nez p6, :cond_a

    .line 236
    iget-object p5, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    if-nez p5, :cond_a

    if-nez v1, :cond_9

    move-object p5, p4

    goto :goto_4

    .line 237
    :cond_9
    iget-object p5, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :goto_4
    iput-object p5, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :cond_a
    if-eqz v1, :cond_c

    .line 242
    iget-object p5, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    if-nez p5, :cond_b

    .line 243
    iget-object p5, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    iput-object p5, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 245
    :cond_b
    iget p5, p3, Lcom/narvii/model/Community;->membersCount:I

    if-nez p5, :cond_c

    .line 246
    iget p5, v1, Lcom/narvii/model/Community;->membersCount:I

    iput p5, p3, Lcom/narvii/model/Community;->membersCount:I

    .line 249
    :cond_c
    iget-boolean p5, p0, Lcom/narvii/community/CommunityService;->ignoreContents:Z

    if-eqz p5, :cond_d

    .line 250
    iput-object p4, p3, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 252
    iput-object p4, p3, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    const/4 p2, 0x0

    .line 254
    iput p2, p3, Lcom/narvii/model/Community;->communityHeat:F

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    if-eqz v1, :cond_e

    .line 257
    iget-object p2, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    iput-object p2, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 258
    iget-object p2, v1, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    iput-object p2, p3, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 259
    iget-object p2, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    iput-object p2, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 260
    iget-object p2, v1, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    iput-object p2, p3, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 261
    iget p2, v1, Lcom/narvii/model/Community;->membersCount:I

    iput p2, p3, Lcom/narvii/model/Community;->membersCount:I

    .line 262
    iget p2, v1, Lcom/narvii/model/Community;->communityHeat:F

    iput p2, p3, Lcom/narvii/model/Community;->communityHeat:F

    .line 263
    iget-boolean p2, v1, Lcom/narvii/model/Community;->searchable:Z

    iput-boolean p2, p3, Lcom/narvii/model/Community;->searchable:Z

    .line 265
    :cond_e
    :goto_5
    iget p2, p1, Lcom/narvii/model/Community;->id:I

    if-nez p2, :cond_f

    .line 266
    iget-object p2, p1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 268
    :cond_f
    invoke-virtual {p3, v1}, Lcom/narvii/model/Community;->checkEqual(Ljava/lang/Object;)I

    move-result p2

    const/4 p4, 0x2

    const/4 p5, 0x0

    if-eq p2, p4, :cond_10

    const/4 p2, 0x1

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    .line 271
    :goto_6
    iput-object p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    .line 272
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    .line 273
    iget-object p4, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    iget p6, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object p4, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    monitor-enter p4

    .line 276
    :try_start_0
    iget-object p6, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p6, p0, Lcom/narvii/community/CommunityService;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p6, :cond_11

    .line 278
    iget-object p6, p0, Lcom/narvii/community/CommunityService;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p6, p5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 280
    :cond_11
    iget-object p5, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object p6, p0, Lcom/narvii/community/CommunityService;->executeUpdate:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, p6, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p5

    iput-object p5, p0, Lcom/narvii/community/CommunityService;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 281
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_12

    .line 284
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_13

    .line 285
    :cond_12
    new-instance p2, Landroid/content/Intent;

    const-string p4, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    iget p4, p1, Lcom/narvii/model/Community;->id:I

    const-string p5, "id"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "community"

    .line 287
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object p3, p0, Lcom/narvii/community/CommunityService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p3, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " community info changed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_13
    return-void

    :catchall_0
    move-exception p1

    .line 281
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V
    .locals 2

    .line 295
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    return-void
.end method

.method public updateLiteCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
