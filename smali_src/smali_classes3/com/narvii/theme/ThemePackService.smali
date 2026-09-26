.class public Lcom/narvii/theme/ThemePackService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/theme/ThemePackService$ThemeObject;,
        Lcom/narvii/theme/ThemePackService$Worker;,
        Lcom/narvii/theme/ThemePackService$UploadTask;,
        Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;
    }
.end annotation


# static fields
.field public static final ACTION_PROGRESS_CHANGED:Ljava/lang/String; = "com.narvii.action.THEME_PACK_PROGRESS"

.field public static final ACTION_STATUS_CHANGED:Ljava/lang/String; = "com.narvii.action.THEME_PACK_CHANGED"

.field public static final ACTION_THEME_DOWNLOAD_FINISH:Ljava/lang/String; = "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_READY:I = 0x5


# instance fields
.field private cacheDir:Ljava/io/File;

.field private context:Lcom/narvii/app/NVContext;

.field private dir:Ljava/io/File;

.field private downloadThemeNdcIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final errors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field logging:Lcom/narvii/util/logging/LoggingService;

.field private final rawObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final revs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/theme/ThemePackService$Worker;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Lcom/narvii/util/http/ProxyStack;

.field private final themes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/theme/ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uploadDir:Ljava/io/File;

.field private final uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/theme/ThemePackService$UploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/Hashtable;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 32
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashSet;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    new-instance v0, Ljava/io/File;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    const-string/jumbo v2, "themepack"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 76
    .line 77
    new-instance v0, Ljava/io/File;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    .line 80
    .line 81
    const-string v3, "publish"

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 90
    .line 91
    new-instance v0, Ljava/io/File;

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 118
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/theme/ThemePackService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/theme/ThemePackService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/theme/ThemePackService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    const-class v1, [Lcom/narvii/theme/ThemeImage;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, [Lcom/narvii/theme/ThemeImage;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static setThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;Lcom/narvii/theme/ThemeImage;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 13
    return-void
.end method


# virtual methods
.method public addToDownLoadList(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public cancel(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/theme/ThemePackService$Worker;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService$Worker;->a(Lcom/narvii/theme/ThemePackService$Worker;)V

    .line 27
    .line 28
    new-instance v1, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v2, "com.narvii.action.THEME_PACK_CHANGED"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    const-string v2, "cid"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    const-string p1, "rev"

    .line 41
    .line 42
    iget v0, v0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/theme/ThemePackService$Worker;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/theme/ThemePackService$Worker;->a(Lcom/narvii/theme/ThemePackService$Worker;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 45
    .line 46
    new-instance v0, Landroid/content/Intent;

    .line 47
    .line 48
    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 57
    :cond_1
    return-void
.end method

.method public cancelUpload(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/theme/ThemePackService$UploadTask;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/theme/ThemePackService$UploadTask;->cancelUpload()V

    .line 18
    :cond_0
    return-void
.end method

.method changeThemeImage(ZLcom/narvii/theme/ThemeImage;Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    const-string v1, "/"

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/narvii/theme/ThemePackService;->getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    array-length v2, p1

    .line 16
    .line 17
    :goto_0
    if-ge v0, v2, :cond_2

    .line 18
    .line 19
    aget-object v3, p1, v0

    .line 20
    .line 21
    new-instance v4, Ljava/io/File;

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p4, "/img.png"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    new-instance p4, Ljava/io/File;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    .line 95
    move-result-object p5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    move-result-object p5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p5

    .line 113
    .line 114
    .line 115
    invoke-direct {p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 119
    move-result-object p5

    .line 120
    .line 121
    .line 122
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2}, Lcom/narvii/theme/ThemePackService;->changeToFilePath(Lcom/narvii/theme/ThemeImage;)V

    .line 126
    .line 127
    new-instance p5, Ljava/io/File;

    .line 128
    .line 129
    iget-object v0, p2, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p5, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 136
    .line 137
    iput-object p1, p2, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    invoke-static {p3, p2}, Lcom/narvii/theme/ThemePackService;->setThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;Lcom/narvii/theme/ThemeImage;)V

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-static {p3}, Lcom/narvii/theme/ThemePackService;->getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    if-eqz p2, :cond_6

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    array-length p1, p2

    .line 151
    .line 152
    :goto_1
    if-ge v0, p1, :cond_5

    .line 153
    .line 154
    aget-object p4, p2, v0

    .line 155
    .line 156
    new-instance v2, Ljava/io/File;

    .line 157
    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    iget-object p4, p4, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p4

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 191
    move-result p4

    .line 192
    .line 193
    if-eqz p4, :cond_4

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 197
    .line 198
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 199
    goto :goto_1

    .line 200
    .line 201
    .line 202
    :cond_5
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 203
    :cond_6
    :goto_2
    return-void
.end method

.method changeToFilePath(Lcom/narvii/theme/ThemeImage;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const-string v1, "photo"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p1, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public cleanCache()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    const-wide/32 v3, 0xa4cb800

    .line 17
    sub-long/2addr v1, v3

    .line 18
    array-length v3, v0

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v4, v3, :cond_3

    .line 22
    .line 23
    aget-object v5, v0, v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 27
    move-result v6

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    const-string v7, ".d"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    const-string v7, ".w"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 57
    move-result-wide v6

    .line 58
    .line 59
    cmp-long v6, v6, v1

    .line 60
    .line 61
    if-gez v6, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 65
    .line 66
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/theme/ThemePackService;->cancelAll()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteContents(Ljava/io/File;)V

    .line 19
    return-void
.end method

.method public clearErrors()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public deleteThemePack(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    .line 36
    const-string v0, "delete"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    return-void
.end method

.method public extract(IILjava/lang/String;)Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/theme/ThemePackService;->getDownloadedFile(II)Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v3, "assets://"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    move-object v3, v2

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    :catch_0
    move-exception p2

    .line 43
    move-object v3, v2

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 49
    move-result-wide v3

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    cmp-long v3, v3, v5

    .line 54
    .line 55
    if-lez v3, :cond_4

    .line 56
    .line 57
    new-instance v3, Ljava/io/FileInputStream;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    new-instance v5, Ljava/io/File;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 70
    move-result-object v6

    .line 71
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v8, ".tmp"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    .line 94
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v5}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 101
    move-result v6

    .line 102
    .line 103
    if-eqz v6, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 107
    .line 108
    iget-object v6, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    sget-object v6, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 127
    .line 128
    new-instance v7, Ljava/io/File;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v8, "theme_info.json"

    .line 132
    .line 133
    .line 134
    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .line 136
    const-class v8, Lcom/narvii/theme/ThemeInfo;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v7, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    check-cast v6, Lcom/narvii/theme/ThemeInfo;

    .line 143
    .line 144
    iget v6, v6, Lcom/narvii/theme/ThemeInfo;->revision:I

    .line 145
    .line 146
    if-eq v6, p2, :cond_1

    .line 147
    .line 148
    .line 149
    const-string/jumbo v6, "theme pack revision doesn\'t match"

    .line 150
    .line 151
    .line 152
    invoke-static {v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception p2

    .line 155
    move-object v10, v3

    .line 156
    move-object v3, v2

    .line 157
    move-object v2, v10

    .line 158
    .line 159
    goto/16 :goto_4

    .line 160
    :catch_1
    move-exception p2

    .line 161
    move-object v10, v3

    .line 162
    move-object v3, v2

    .line 163
    move-object v2, v10

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    .line 168
    :cond_1
    :goto_1
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 169
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .line 171
    const-string v7, "rev"

    .line 172
    .line 173
    const-string v8, "cid"

    .line 174
    .line 175
    const-string v9, "com.narvii.action.THEME_PACK_CHANGED"

    .line 176
    .line 177
    if-eqz v6, :cond_2

    .line 178
    .line 179
    .line 180
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 185
    move-result-object v5

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 189
    .line 190
    new-instance v4, Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    .line 201
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    .line 206
    .line 207
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 211
    .line 212
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    .line 214
    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 p1, 0x1

    .line 221
    return p1

    .line 222
    .line 223
    .line 224
    :cond_2
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v4}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 228
    .line 229
    const-string v2, "Unable to move file"

    .line 230
    .line 231
    .line 232
    const-string/jumbo v4, "unable to move file"

    .line 233
    .line 234
    .line 235
    invoke-static {v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 236
    .line 237
    new-instance v4, Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    .line 248
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    .line 253
    .line 254
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 258
    .line 259
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return v1

    .line 268
    .line 269
    .line 270
    :cond_3
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 271
    .line 272
    const-string v2, "Unable to unzip file"

    .line 273
    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string/jumbo v4, "unable to unzip file from "

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object p2

    .line 291
    .line 292
    .line 293
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    .line 295
    .line 296
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 300
    .line 301
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 302
    .line 303
    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    move-result-object p1

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return v1

    .line 310
    .line 311
    .line 312
    :cond_4
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 316
    .line 317
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 318
    .line 319
    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return v1

    .line 326
    .line 327
    .line 328
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 329
    move-result-object v3

    .line 330
    .line 331
    if-nez v3, :cond_5

    .line 332
    .line 333
    const-string v3, "Fail to load theme pack"

    .line 334
    goto :goto_3

    .line 335
    :catchall_2
    move-exception p2

    .line 336
    goto :goto_4

    .line 337
    .line 338
    :cond_5
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    const-string v5, "fail to load them pack from "

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object p3

    .line 354
    .line 355
    .line 356
    invoke-static {p3, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 357
    .line 358
    .line 359
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 363
    .line 364
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 365
    .line 366
    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object p1

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return v1

    .line 373
    .line 374
    .line 375
    :goto_4
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 379
    .line 380
    if-nez v3, :cond_6

    .line 381
    .line 382
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 383
    .line 384
    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    move-result-object p1

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    goto :goto_5

    .line 391
    .line 392
    :cond_6
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 393
    .line 394
    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object p1

    .line 397
    .line 398
    .line 399
    invoke-virtual {p3, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :goto_5
    throw p2
.end method

.method getDir(I)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "x"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    return-object v0
.end method

.method getDownloadedFile(II)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "x"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "-r"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p1, ".d"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p5

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 3
    :cond_0
    sget-object v5, Lcom/narvii/theme/ThemePackService$1;->$SwitchMap$com$narvii$theme$ThemePackService$ThemeObject:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    move-object v5, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v5, v3, Lcom/narvii/theme/ThemeInfo;->oldTitlebar:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, v3, Lcom/narvii/theme/ThemeInfo;->titlebar:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_3
    iget-object v5, v3, Lcom/narvii/theme/ThemeInfo;->logo:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_4
    iget-object v5, v3, Lcom/narvii/theme/ThemeInfo;->icon:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_5
    iget-object v5, v3, Lcom/narvii/theme/ThemeInfo;->background:Ljava/util/List;

    :goto_0
    if-eqz v5, :cond_16

    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_a

    .line 10
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    move-object v7, v6

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/theme/ThemeImage;

    .line 11
    iget v9, v8, Lcom/narvii/theme/ThemeImage;->width:F

    iget v10, v8, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float v11, v9, v10

    if-nez v7, :cond_8

    goto :goto_2

    .line 12
    :cond_8
    iget v12, v7, Lcom/narvii/theme/ThemeImage;->width:F

    iget v13, v7, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_9

    :goto_2
    move/from16 v12, p3

    move-object v7, v8

    goto :goto_3

    :cond_9
    move/from16 v12, p3

    :goto_3
    int-to-float v13, v12

    cmpl-float v9, v9, v13

    if-ltz v9, :cond_b

    move/from16 v9, p4

    int-to-float v13, v9

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_7

    if-nez v6, :cond_a

    goto :goto_4

    .line 13
    :cond_a
    iget v10, v6, Lcom/narvii/theme/ThemeImage;->width:F

    iget v13, v6, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float/2addr v10, v13

    cmpg-float v10, v11, v10

    if-gez v10, :cond_7

    :goto_4
    move-object v6, v8

    goto :goto_1

    :cond_b
    move/from16 v9, p4

    goto :goto_1

    :cond_c
    if-nez v6, :cond_d

    move-object v6, v7

    .line 14
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-r"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/narvii/theme/ThemeInfo;->revision:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_e

    move-object v5, v4

    goto :goto_5

    .line 16
    :cond_e
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    :goto_5
    if-nez v5, :cond_10

    .line 17
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, v6, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    :try_start_0
    iget-object v6, v6, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 19
    new-instance v6, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v6, v5}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    move-object v5, v6

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    .line 20
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    .line 21
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 22
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemory when read theme resource "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    return-object v4

    .line 24
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to read theme resource "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 25
    :cond_10
    :goto_9
    instance-of v3, v5, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_13

    .line 26
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne v0, v3, :cond_11

    .line 27
    new-instance v0, Lcom/narvii/theme/ThemeBackgroundDrawable;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v2}, Lcom/narvii/theme/ThemeBackgroundDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0

    .line 28
    :cond_11
    sget-object v2, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne v0, v2, :cond_12

    .line 29
    new-instance v0, Lcom/narvii/theme/TitlebarDrawable;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/narvii/theme/TitlebarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 30
    :cond_12
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v1, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 31
    :cond_13
    instance-of v3, v5, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v3, :cond_16

    .line 32
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne v0, v3, :cond_14

    .line 33
    new-instance v0, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    check-cast v5, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v0, v5, v2}, Lcom/narvii/theme/ThemeBackgroundGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;Z)V

    return-object v0

    .line 34
    :cond_14
    sget-object v2, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne v0, v2, :cond_15

    .line 35
    new-instance v0, Lcom/narvii/theme/TitlebarGifDrawable;

    check-cast v5, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v0, v5}, Lcom/narvii/theme/TitlebarGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object v0

    .line 36
    :cond_15
    new-instance v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    check-cast v5, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v0, v5}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object v0

    :cond_16
    :goto_a
    return-object v4
.end method

.method public getError(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method

.method public getProgress(I)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/theme/ThemePackService$Worker;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget v1, p1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    .line 19
    .line 20
    if-gtz v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget p1, p1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    .line 24
    int-to-float p1, p1

    .line 25
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    mul-float/2addr p1, v0

    .line 28
    int-to-float v0, v1

    .line 29
    .line 30
    div-float v0, p1, v0

    .line 31
    :goto_0
    return v0
.end method

.method getRevFile(I)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v1, ".rev"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 16
    return-object v0
.end method

.method public getStatus(I)I
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result p1

    return p1
.end method

.method public getStatus(II)I
    .locals 6

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService$Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-nez p2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    if-ne v0, p2, :cond_4

    :cond_3
    const/4 p1, 0x5

    return p1

    :cond_4
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_2
    return v1

    :cond_6
    if-eqz p2, :cond_7

    .line 10
    iget p1, v0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    if-ne p1, p2, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getThemeColor(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$color;->color_default:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget p1, p1, Lcom/narvii/theme/ThemeInfo;->themeColor:I

    .line 26
    :goto_0
    return p1
.end method

.method public getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/theme/ThemeInfo;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "theme_info.json"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 40
    .line 41
    const-class v3, Lcom/narvii/theme/ThemeInfo;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/theme/ThemeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .line 52
    const-string v2, "fail to open theme pack"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    return-object v0
.end method

.method public getThemeJsonInfo(I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "theme_info.json"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long p1, v1, v3

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    .line 34
    const-string v0, "fail to open theme pack"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method getUploadDir(I)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "/x"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "/files"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_0
    return-object v0
.end method

.method getUploadJsonFile(I)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "theme_info.json"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_0
    :goto_0
    return-object v0
.end method

.method getWritingFile(II)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "x"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "-r"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p1, ".w"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public removeUploadDir()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    .line 1
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public removeUploadDir(I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public require(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;Z)V

    return-void
.end method

.method public require(IILjava/lang/String;Z)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result v0

    if-lez v0, :cond_1

    if-nez p4, :cond_0

    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService$Worker;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extract themepack "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    const-string v0, "http://"

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "logging"

    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 10
    :cond_4
    new-instance v0, Lcom/narvii/theme/ThemePackService$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/theme/ThemePackService$Worker;-><init>(Lcom/narvii/theme/ThemePackService;IILjava/lang/String;)V

    iput-boolean p4, v0, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    const/4 p3, 0x1

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "cid"

    .line 15
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "rev"

    .line 16
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    invoke-virtual {p1, p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method rm(Ljava/io/File;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 26
    return-void
.end method

.method public touchThemePack(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 18
    :cond_0
    return-void
.end method

.method public trim(IIJ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v0, p1

    .line 5
    .line 6
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 7
    .line 8
    const/16 v3, 0x64

    .line 9
    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string v3, "account"

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iget-object v3, v1, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string v4, "affiliations"

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/community/AffiliationsService;

    .line 32
    .line 33
    if-eqz v2, :cond_8

    .line 34
    .line 35
    if-eqz v3, :cond_8

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz v2, :cond_8

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    return-void

    .line 61
    :cond_1
    array-length v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v7, 0x0

    .line 63
    move v8, v7

    .line 64
    move v9, v8

    .line 65
    .line 66
    .line 67
    :goto_0
    const-string/jumbo v10, "x"

    .line 68
    .line 69
    if-ge v8, v6, :cond_3

    .line 70
    .line 71
    :try_start_1
    aget-object v11, v2, v8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 75
    move-result v12

    .line 76
    .line 77
    if-eqz v12, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    move-result-object v11

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    move-result v10

    .line 86
    .line 87
    if-eqz v10, :cond_2

    .line 88
    .line 89
    add-int/lit8 v9, v9, 0x1

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_3
    if-gt v9, v0, :cond_4

    .line 99
    return-void

    .line 100
    :cond_4
    sub-int/2addr v9, v0

    .line 101
    .line 102
    move/from16 v0, p2

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result v0

    .line 107
    array-length v6, v2

    .line 108
    move v8, v7

    .line 109
    .line 110
    :goto_2
    if-ge v7, v6, :cond_7

    .line 111
    .line 112
    aget-object v9, v2, v7

    .line 113
    .line 114
    if-lt v8, v0, :cond_5

    .line 115
    goto :goto_3

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 119
    move-result v11

    .line 120
    .line 121
    if-eqz v11, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 125
    move-result-object v11

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    move-result v12

    .line 130
    .line 131
    if-eqz v12, :cond_6

    .line 132
    const/4 v12, 0x1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 136
    move-result-object v11

    .line 137
    const/4 v12, -0x1

    .line 138
    .line 139
    .line 140
    invoke-static {v11, v12}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    .line 141
    move-result v11

    .line 142
    .line 143
    if-lez v11, :cond_6

    .line 144
    .line 145
    iget-object v12, v1, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 146
    .line 147
    .line 148
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v13

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    .line 153
    move-result v12

    .line 154
    .line 155
    if-nez v12, :cond_6

    .line 156
    .line 157
    iget-object v12, v1, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 158
    .line 159
    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v13

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    .line 165
    move-result v12

    .line 166
    .line 167
    if-nez v12, :cond_6

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v11}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 171
    move-result v12

    .line 172
    .line 173
    if-nez v12, :cond_6

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 177
    move-result-wide v12

    .line 178
    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    move-result-wide v14

    .line 182
    .line 183
    sub-long v14, v14, p3

    .line 184
    .line 185
    cmp-long v12, v12, v14

    .line 186
    .line 187
    if-gez v12, :cond_6

    .line 188
    .line 189
    add-int/lit8 v8, v8, 0x1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v11}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    .line 193
    move-result-object v11

    .line 194
    .line 195
    .line 196
    invoke-static {v11}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 197
    .line 198
    .line 199
    invoke-static {v9}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 200
    .line 201
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 202
    goto :goto_2

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    move-result-wide v2

    .line 207
    .line 208
    .line 209
    const-string/jumbo v0, "themePack"

    .line 210
    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v7, "trim "

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v7, " theme pack spent "

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    sub-long/2addr v2, v4

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v2, "ms"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    goto :goto_5

    .line 246
    .line 247
    .line 248
    :goto_4
    const-string/jumbo v2, "trim"

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_8
    :goto_5
    return-void
.end method

.method public upload(Lcom/narvii/theme/ThemePackUploadSpec;Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/theme/ThemePackUploadSpec;->cid:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/theme/ThemePackService;->cancelUpload(I)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/theme/ThemePackService$UploadTask;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/theme/ThemePackService$UploadTask;-><init>(Lcom/narvii/theme/ThemePackService;Lcom/narvii/theme/ThemePackUploadSpec;Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iget p1, p1, Lcom/narvii/theme/ThemePackUploadSpec;->cid:I

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    new-array p1, p1, [Ljava/lang/Void;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    return-void
.end method
