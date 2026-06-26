.class public final Lcom/tonyodev/fetch/Fetch;
.super Ljava/lang/Object;
.source "Fetch.java"

# interfaces
.implements Lcom/tonyodev/fetch/FetchConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch/Fetch$Settings;
    }
.end annotation


# static fields
.field private static final callsCallback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

.field private static final callsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/tonyodev/fetch/request/Request;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final context:Landroid/content/Context;

.field private final dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

.field private volatile isReleased:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/listener/FetchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final networkReceiver:Landroid/content/BroadcastReceiver;

.field private final updateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->mainHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 158
    new-instance v0, Lcom/tonyodev/fetch/Fetch$1;

    invoke-direct {v0}, Lcom/tonyodev/fetch/Fetch$1;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->callsCallback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    .line 954
    new-instance v0, Lcom/tonyodev/fetch/Fetch$4;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch$4;-><init>(Lcom/tonyodev/fetch/Fetch;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    .line 991
    new-instance v0, Lcom/tonyodev/fetch/Fetch$5;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch$5;-><init>(Lcom/tonyodev/fetch/Fetch;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 74
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tonyodev/fetch/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 75
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    .line 77
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-static {}, Lcom/tonyodev/fetch/FetchService;->getEventUpdateFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tonyodev/fetch/Fetch;->startService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tonyodev/fetch/Fetch;)Ljava/util/Iterator;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->getListenerIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tonyodev/fetch/Fetch;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/tonyodev/fetch/Fetch;->newInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;

    move-result-object p0

    return-object p0
.end method

.method private getListenerIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tonyodev/fetch/listener/FetchListener;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private isLoggingEnabled()Z
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;
    .locals 1

    if-eqz p0, :cond_0

    .line 123
    new-instance v0, Lcom/tonyodev/fetch/Fetch;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setReleased(Z)V
    .locals 0

    .line 1003
    iput-boolean p1, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/tonyodev/fetch/FetchService;->processPendingRequests(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addFetchListener(Lcom/tonyodev/fetch/listener/FetchListener;)V
    .locals 1

    .line 216
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    if-eqz p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "fetchListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enqueue(Lcom/tonyodev/fetch/request/Request;)J
    .locals 17

    move-object/from16 v1, p0

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    if-eqz p1, :cond_3

    .line 276
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v15

    .line 280
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getPriority()I

    move-result v13

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/tonyodev/fetch/Utils;->headerListToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v11, 0x0

    const-wide/16 v2, 0x0

    .line 287
    invoke-static {v6}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    :cond_0
    move-wide v9, v2

    .line 293
    iget-object v2, v1, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    const/16 v7, 0x384

    const/4 v14, -0x1

    move-wide v3, v15

    invoke-virtual/range {v2 .. v14}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, v1, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/Fetch;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Lcom/tonyodev/fetch/exception/EnqueueException;

    const-string v2, "could not insert request"

    const/16 v3, -0x75

    invoke-direct {v0, v2, v3}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_2
    const-wide/16 v15, -0x1

    :goto_0
    return-wide v15

    .line 273
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Request cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized get(J)Lcom/tonyodev/fetch/request/RequestInfo;
    .locals 1

    monitor-enter p0

    .line 589
    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 591
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x1

    .line 593
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDownloadedFile(J)Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 690
    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 692
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x1

    .line 693
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 695
    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/RequestInfo;->getStatus()I

    move-result v0

    const/16 v1, 0x387

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 702
    monitor-exit p0

    return-object p1

    .line 704
    :cond_1
    monitor-exit p0

    return-object p2

    .line 696
    :cond_2
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isReleased()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 951
    invoke-virtual {p0}, Lcom/tonyodev/fetch/Fetch;->isReleased()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pause(J)V
    .locals 3

    .line 490
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x137

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.tonyodev.fetch.extra_id"

    .line 494
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 496
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/tonyodev/fetch/Fetch;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch/Fetch;->setReleased(Z)V

    .line 199
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 3

    .line 439
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x13f

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public resume(J)V
    .locals 3

    .line 509
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x138

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.tonyodev.fetch.extra_id"

    .line 513
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 515
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public retry(J)V
    .locals 3

    .line 568
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x13e

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.tonyodev.fetch.extra_id"

    .line 572
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 574
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
