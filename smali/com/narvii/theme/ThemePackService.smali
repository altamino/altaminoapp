.class public Lcom/narvii/theme/ThemePackService;
.super Ljava/lang/Object;
.source "ThemePackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/theme/ThemePackService$UploadTask;,
        Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;,
        Lcom/narvii/theme/ThemePackService$Worker;,
        Lcom/narvii/theme/ThemePackService$ThemeObject;
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

.field private final lbm:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    .line 110
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "themepack"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    .line 112
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    const-string/jumbo v3, "publish"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    .line 114
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    .line 116
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 117
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/theme/ThemePackService;)Ljava/io/File;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/theme/ThemePackService;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/theme/ThemePackService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;
    .locals 2

    .line 906
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, [Lcom/narvii/theme/ThemeImage;

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/narvii/theme/ThemeImage;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 909
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;Lcom/narvii/theme/ThemeImage;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 919
    :cond_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-void
.end method


# virtual methods
.method public addToDownLoadList(I)V
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->downloadThemeNdcIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel(I)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService$Worker;

    if-eqz v0, :cond_0

    .line 460
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService$Worker;->access$000(Lcom/narvii/theme/ThemePackService$Worker;)V

    .line 462
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "cid"

    .line 463
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    iget p1, v0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    const-string/jumbo v0, "rev"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 479
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService$Worker;

    .line 481
    invoke-static {v1}, Lcom/narvii/theme/ThemePackService$Worker;->access$000(Lcom/narvii/theme/ThemePackService$Worker;)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public cancelUpload(I)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService$UploadTask;

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/narvii/theme/ThemePackService$UploadTask;->cancelUpload()V

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

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "/"

    if-eqz p2, :cond_3

    .line 871
    invoke-static {p3}, Lcom/narvii/theme/ThemePackService;->getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 873
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 874
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 876
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/img.png"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 882
    new-instance p4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 884
    invoke-virtual {p0, p2}, Lcom/narvii/theme/ThemePackService;->changeToFilePath(Lcom/narvii/theme/ThemeImage;)V

    .line 885
    new-instance p5, Ljava/io/File;

    iget-object v0, p2, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p5, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 886
    iput-object p1, p2, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 887
    invoke-static {p3, p2}, Lcom/narvii/theme/ThemePackService;->setThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;Lcom/narvii/theme/ThemeImage;)V

    goto :goto_2

    .line 889
    :cond_3
    invoke-static {p3}, Lcom/narvii/theme/ThemePackService;->getThemeImageList(Lcom/fasterxml/jackson/databind/node/ArrayNode;)[Lcom/narvii/theme/ThemeImage;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 892
    array-length p1, p2

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object p4, p2, v0

    .line 893
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 895
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 898
    :cond_5
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    :cond_6
    :goto_2
    return-void
.end method

.method changeToFilePath(Lcom/narvii/theme/ThemeImage;)V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "photo"

    .line 925
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 926
    iget-object v1, p1, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public cleanCache()V
    .locals 9

    .line 562
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb800

    sub-long/2addr v1, v3

    .line 567
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 568
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".w"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 569
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    .line 571
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

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

    .line 578
    invoke-virtual {p0}, Lcom/narvii/theme/ThemePackService;->cancelAll()V

    .line 579
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 580
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 581
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public clearErrors()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public deleteThemePack(I)V
    .locals 2

    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 545
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "delete"

    .line 549
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public extract(IILjava/lang/String;)Z
    .locals 11

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/narvii/theme/ThemePackService;->getDownloadedFile(II)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v3, "assets://"

    .line 349
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 352
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object v4

    .line 358
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 361
    invoke-static {v3, v5}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    invoke-virtual {p0, v4}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 363
    iget-object v6, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v6, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v6, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "theme_info.json"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-class v8, Lcom/narvii/theme/ThemeInfo;

    invoke-virtual {v6, v7, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/theme/ThemeInfo;

    .line 366
    iget v6, v6, Lcom/narvii/theme/ThemeInfo;->revision:I

    if-eq v6, p2, :cond_1

    const-string/jumbo v6, "theme pack revision doesn\'t match"

    .line 367
    invoke-static {v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 369
    :cond_1
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v7, "rev"

    const-string v8, "cid"

    const-string v9, "com.narvii.action.THEME_PACK_CHANGED"

    if-eqz v6, :cond_2

    .line 370
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 372
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p2, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x1

    .line 403
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 406
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    .line 378
    :cond_2
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    .line 379
    invoke-virtual {p0, v4}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    const-string v1, "Unable to move file"

    const-string/jumbo v4, "unable to move file"

    .line 381
    invoke-static {v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 383
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p2, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 408
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 390
    :cond_3
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    const-string v1, "Unable to unzip file"

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to unzip file from "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 408
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_1

    .line 403
    :cond_4
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 406
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :catchall_1
    move-exception p2

    move-object v3, v1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v1

    .line 396
    :goto_1
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "Fail to load theme pack"

    .line 400
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to load them pack from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 403
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-nez v3, :cond_6

    .line 406
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 408
    :cond_6
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return v2

    :catchall_2
    move-exception p2

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    .line 403
    :goto_3
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-nez v1, :cond_7

    .line 406
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 408
    :cond_7
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_4
    throw p2
.end method

.method getDir(I)Ljava/io/File;
    .locals 4

    .line 234
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDownloadedFile(II)Ljava/io/File;
    .locals 4

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-r"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

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

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 130
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    sget-object v2, Lcom/narvii/theme/ThemePackService$1;->$SwitchMap$com$narvii$theme$ThemePackService$ThemeObject:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, v0, Lcom/narvii/theme/ThemeInfo;->oldTitlebar:Ljava/util/List;

    goto :goto_0

    .line 146
    :cond_2
    iget-object v2, v0, Lcom/narvii/theme/ThemeInfo;->titlebar:Ljava/util/List;

    goto :goto_0

    .line 143
    :cond_3
    iget-object v2, v0, Lcom/narvii/theme/ThemeInfo;->logo:Ljava/util/List;

    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, v0, Lcom/narvii/theme/ThemeInfo;->icon:Ljava/util/List;

    goto :goto_0

    .line 137
    :cond_5
    iget-object v2, v0, Lcom/narvii/theme/ThemeInfo;->background:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_15

    .line 156
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_7

    .line 162
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/theme/ThemeImage;

    .line 163
    iget v6, v5, Lcom/narvii/theme/ThemeImage;->width:F

    iget v7, v5, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float v6, v6, v7

    if-nez v4, :cond_8

    goto :goto_2

    .line 166
    :cond_8
    iget v7, v4, Lcom/narvii/theme/ThemeImage;->width:F

    iget v8, v4, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float v7, v7, v8

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    :goto_2
    move-object v4, v5

    .line 169
    :cond_9
    iget v7, v5, Lcom/narvii/theme/ThemeImage;->width:F

    int-to-float v8, p3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    iget v7, v5, Lcom/narvii/theme/ThemeImage;->height:F

    int-to-float v8, p4

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    if-nez v3, :cond_a

    goto :goto_3

    .line 172
    :cond_a
    iget v7, v3, Lcom/narvii/theme/ThemeImage;->width:F

    iget v8, v3, Lcom/narvii/theme/ThemeImage;->height:F

    mul-float v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    :goto_3
    move-object v3, v5

    goto :goto_1

    :cond_b
    if-nez v3, :cond_c

    move-object v3, v4

    .line 179
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "-r"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/narvii/theme/ThemeInfo;->revision:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v3, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 180
    iget-object p4, p0, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-nez p4, :cond_d

    move-object p4, v1

    goto :goto_4

    .line 181
    :cond_d
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    :goto_4
    if-nez p4, :cond_f

    .line 183
    new-instance p4, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object p1

    iget-object v0, v3, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-direct {p4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    :try_start_0
    iget-object p1, v3, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 186
    new-instance p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p4}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    goto :goto_5

    .line 188
    :cond_e
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object p4, p1

    .line 198
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->rawObjects:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OutOfMemory when read theme resource "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail to read theme resource "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 200
    :cond_f
    :goto_6
    instance-of p1, p4, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    .line 201
    sget-object p1, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne p2, p1, :cond_10

    .line 202
    new-instance p1, Lcom/narvii/theme/ThemeBackgroundDrawable;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-direct {p1, p4, p5}, Lcom/narvii/theme/ThemeBackgroundDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object p1

    .line 203
    :cond_10
    sget-object p1, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne p2, p1, :cond_11

    .line 204
    new-instance p1, Lcom/narvii/theme/TitlebarDrawable;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-direct {p1, p4}, Lcom/narvii/theme/TitlebarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 206
    :cond_11
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-direct {p1, p2, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 208
    :cond_12
    instance-of p1, p4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz p1, :cond_15

    .line 209
    sget-object p1, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne p2, p1, :cond_13

    .line 210
    new-instance p1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    check-cast p4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p4, p5}, Lcom/narvii/theme/ThemeBackgroundGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;Z)V

    return-object p1

    .line 211
    :cond_13
    sget-object p1, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    if-ne p2, p1, :cond_14

    .line 212
    new-instance p1, Lcom/narvii/theme/TitlebarGifDrawable;

    check-cast p4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p4}, Lcom/narvii/theme/TitlebarGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object p1

    .line 214
    :cond_14
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    check-cast p4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p4}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object p1

    :cond_15
    :goto_7
    return-object v1
.end method

.method public getError(I)Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProgress(I)F
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService$Worker;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 304
    :cond_0
    iget v1, p1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget p1, p1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float v0, v1

    div-float v0, p1, v0

    :goto_0
    return v0
.end method

.method getRevFile(I)Ljava/io/File;
    .locals 2

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object p1

    const-string v1, ".rev"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object v0
.end method

.method public getStatus(I)I
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result p1

    return p1
.end method

.method public getStatus(II)I
    .locals 7

    .line 261
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService$Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 269
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v2, p0, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 279
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

    .line 284
    :cond_4
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 287
    iget p1, v0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    if-ne p1, p2, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getThemeColor(I)I
    .locals 1

    .line 229
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$color;->color_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/narvii/theme/ThemeInfo;->themeColor:I

    :goto_0
    return p1
.end method

.method public getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;
    .locals 7

    .line 309
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemeInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 315
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "theme_info.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 317
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/theme/ThemeInfo;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fail to open theme pack"

    .line 320
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 324
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getThemeJsonInfo(I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "theme_info.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 333
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "fail to open theme pack"

    .line 336
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getUploadDir(I)Ljava/io/File;
    .locals 3

    .line 839
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/files"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 841
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method getUploadJsonFile(I)Ljava/io/File;
    .locals 2

    .line 855
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "theme_info.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 858
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 860
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method getWritingFile(II)Ljava/io/File;
    .locals 4

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-r"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".w"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeUploadDir()V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->uploadDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public removeUploadDir(I)V
    .locals 0

    .line 851
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public require(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;Z)V

    return-void
.end method

.method public require(IILjava/lang/String;Z)V
    .locals 2

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result v0

    if-lez v0, :cond_1

    if-nez p4, :cond_0

    .line 428
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService$Worker;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 430
    iput-boolean p2, p1, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    :cond_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    .line 437
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
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

    .line 439
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    if-nez v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "logging"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    iput-object v0, p0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 443
    :cond_4
    new-instance v0, Lcom/narvii/theme/ThemePackService$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/theme/ThemePackService$Worker;-><init>(Lcom/narvii/theme/ThemePackService;IILjava/lang/String;)V

    .line 444
    iput-boolean p4, v0, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    const/4 p3, 0x1

    .line 445
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 446
    iget-object p3, p0, Lcom/narvii/theme/ThemePackService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 449
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "cid"

    .line 450
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "rev"

    .line 451
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, p3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method rm(Ljava/io/File;)V
    .locals 4

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 587
    invoke-virtual {p0, v3}, Lcom/narvii/theme/ThemePackService;->rm(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public touchThemePack(I)V
    .locals 2

    .line 222
    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return-void
.end method

.method public trim(IIJ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 491
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 496
    iget-object v3, v1, Lcom/narvii/theme/ThemePackService;->context:Lcom/narvii/app/NVContext;

    const-string v4, "affiliations"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/AffiliationsService;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 499
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 501
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 502
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 507
    :cond_1
    array-length v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string/jumbo v10, "x"

    if-ge v8, v6, :cond_3

    :try_start_1
    aget-object v11, v2, v8

    .line 508
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-gt v9, v0, :cond_4

    return-void

    :cond_4
    sub-int/2addr v9, v0

    move/from16 v0, p2

    .line 515
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 517
    array-length v6, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v9, v2, v7

    if-lt v8, v0, :cond_5

    goto :goto_2

    .line 521
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 522
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 523
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    .line 524
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    .line 525
    invoke-static {v11, v12}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v11

    if-lez v11, :cond_6

    .line 526
    iget-object v12, v1, Lcom/narvii/theme/ThemePackService;->revs:Ljava/util/Hashtable;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v1, Lcom/narvii/theme/ThemePackService;->themes:Ljava/util/Hashtable;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v3, v11}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, p3

    cmp-long v16, v12, v14

    if-gez v16, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 528
    invoke-virtual {v1, v11}, Lcom/narvii/theme/ThemePackService;->getRevFile(I)Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 529
    invoke-static {v9}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 534
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v0, "themePack"

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " theme pack spent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "trim"

    .line 537
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public upload(Lcom/narvii/theme/ThemePackUploadSpec;Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;)V
    .locals 1

    .line 933
    iget v0, p1, Lcom/narvii/theme/ThemePackUploadSpec;->cid:I

    invoke-virtual {p0, v0}, Lcom/narvii/theme/ThemePackService;->cancelUpload(I)V

    .line 934
    new-instance v0, Lcom/narvii/theme/ThemePackService$UploadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/theme/ThemePackService$UploadTask;-><init>(Lcom/narvii/theme/ThemePackService;Lcom/narvii/theme/ThemePackUploadSpec;Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;)V

    .line 935
    iget-object p2, p0, Lcom/narvii/theme/ThemePackService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/narvii/theme/ThemePackUploadSpec;->cid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 936
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
