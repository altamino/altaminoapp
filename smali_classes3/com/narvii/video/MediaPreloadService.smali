.class public Lcom/narvii/video/MediaPreloadService;
.super Lcom/narvii/video/EmbedHttpServer;
.source "MediaPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/MediaPreloadService$FileStub;,
        Lcom/narvii/video/MediaPreloadService$PreloadTask;
    }
.end annotation


# static fields
.field private static final MAGIC1:C = 'M'

.field private static final MAGIC2:C = '1'

.field static final PRELOAD_SIZE:I = 0xc8000

.field private static final RID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TAG:Ljava/lang/String; = "mediapreload"


# instance fields
.field final cleanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field context:Lcom/narvii/app/NVContext;

.field dir:Ljava/io/File;

.field public keep:I

.field public maxAge:J

.field private final preloadExecutor:Ljava/util/concurrent/Executor;

.field private final preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/MediaPreloadService$PreloadTask;",
            ">;"
        }
    .end annotation
.end field

.field stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/narvii/video/MediaPreloadService;->RID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/narvii/video/EmbedHttpServer;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->cleanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x20

    .line 45
    iput v0, p0, Lcom/narvii/video/MediaPreloadService;->keep:I

    const-wide/32 v0, 0x5265c00

    .line 46
    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v0, 0x2

    const-string v1, "media-preload"

    .line 295
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    .line 296
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService;->context:Lcom/narvii/app/NVContext;

    .line 50
    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 51
    new-instance p2, Lcom/narvii/util/http/ProxyStack;

    invoke-direct {p2, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public clean(IJZ)V
    .locals 11

    if-nez p4, :cond_0

    .line 426
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->cleanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    move-wide p2, v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p2, v2, p2

    .line 428
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v3, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 431
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 432
    new-instance v7, Lcom/narvii/video/MediaPreloadService$FileStub;

    invoke-direct {v7, v6}, Lcom/narvii/video/MediaPreloadService$FileStub;-><init>(Ljava/io/File;)V

    cmp-long v8, p2, v0

    if-eqz v8, :cond_2

    .line 433
    invoke-virtual {v7}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-gez v10, :cond_2

    .line 434
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 435
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".w"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p4, :cond_4

    .line 437
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 440
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 445
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_6

    .line 446
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 447
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_6

    .line 448
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/MediaPreloadService$FileStub;

    iget-object p1, p1, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    .line 459
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    return-void
.end method

.method protected handle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "?"

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    const-string v7, "url="

    .line 61
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x4

    const-string v7, "&"

    .line 65
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-gez v7, :cond_2

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1e

    :cond_3
    const-string v4, "Range"

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v7, "range"

    .line 75
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    :cond_4
    if-eqz v7, :cond_6

    const/4 v9, 0x2

    const-string v10, "\\s*bytes\\s*=\\s*(\\d+)-(\\d*)\\s*"

    .line 80
    invoke-static {v10, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 81
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 82
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 83
    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 84
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 85
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v5

    goto :goto_1

    :cond_5
    const v9, 0x7fffffff

    goto :goto_1

    :cond_6
    const v9, 0x7fffffff

    const/4 v11, 0x0

    .line 90
    :goto_1
    sget-object v10, Lcom/narvii/video/MediaPreloadService;->RID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    .line 91
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_7

    const-string v15, "all"

    goto :goto_2

    :cond_7
    move-object v15, v7

    :goto_2
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "mediapreload"

    invoke-static {v15, v12}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    invoke-direct {v12, v1, v6, v0}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v20, v16, v18

    if-lez v20, :cond_8

    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    add-int/lit16 v5, v11, 0x4000

    move/from16 p4, v9

    int-to-long v8, v5

    cmp-long v5, v16, v8

    if-lez v5, :cond_9

    .line 97
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_3

    :cond_8
    move/from16 p4, v9

    .line 98
    :cond_9
    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    const/4 v5, 0x0

    :goto_3
    if-nez v11, :cond_a

    .line 108
    iget-object v8, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v16, v8, v18

    if-nez v16, :cond_a

    .line 110
    :try_start_0
    iget-object v8, v1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 111
    new-instance v8, Ljava/io/File;

    iget-object v9, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v14

    :try_start_1
    iget-object v14, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "2"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :try_start_3
    iget-object v9, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_0
    const/4 v2, 0x0

    goto :goto_4

    :catch_1
    :cond_a
    move-object/from16 v17, v14

    :catch_2
    const/4 v2, 0x0

    const/4 v8, 0x0

    :catch_3
    :goto_4
    const/16 v9, 0x3c0

    new-array v9, v9, [B

    const/16 v14, 0xce

    if-eqz v7, :cond_b

    .line 123
    :try_start_4
    invoke-virtual {v3, v14}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v25, v2

    move-object v3, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v21, 0x0

    move-object v12, v8

    goto/16 :goto_1d

    :cond_b
    const/16 v14, 0xc8

    .line 125
    :try_start_5
    invoke-virtual {v3, v14}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    :goto_5
    if-eqz v5, :cond_c

    .line 130
    :try_start_6
    invoke-virtual {v1, v5}, Lcom/narvii/video/MediaPreloadService;->readPreloadHeader(Ljava/io/InputStream;)I

    move-result v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v22, v6

    goto :goto_6

    .line 133
    :catch_4
    :try_start_7
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v22, v6

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v22, v6

    const/4 v14, 0x0

    :goto_6
    const/16 v21, 0x0

    :goto_7
    const-string v6, "-"

    move-object/from16 v23, v12

    const-string v12, "Content-Range"

    if-lez v14, :cond_d

    .line 139
    :try_start_8
    invoke-virtual {v3, v14}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentLength(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v7, :cond_d

    move-object/from16 v24, v8

    .line 141
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v25, v2

    :try_start_a
    const-string v2, "bytes "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p4, -0x1

    move-object/from16 v26, v7

    add-int/lit8 v7, v14, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v25, v2

    :goto_8
    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v12, v24

    goto/16 :goto_1b

    :catchall_3
    move-exception v0

    move-object/from16 v25, v2

    move-object v12, v8

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    goto/16 :goto_1b

    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    :goto_9
    :try_start_b
    const-string v2, "Content-Transfer-Encoding"

    const-string v7, "binary"

    .line 144
    invoke-virtual {v3, v2, v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "video/mp4"

    .line 145
    invoke-virtual {v3, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_13

    const/4 v2, -0x1

    if-lez v14, :cond_f

    if-eqz v5, :cond_f

    int-to-long v7, v11

    .line 147
    :try_start_c
    invoke-virtual {v5, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v7

    long-to-int v8, v7

    if-ne v8, v11, :cond_e

    .line 149
    :goto_a
    invoke-virtual {v5, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v2, :cond_10

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v3, v9, v2, v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->write([BII)V

    add-int/2addr v8, v7

    const/4 v2, -0x1

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    const/4 v14, 0x0

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_b
    if-eqz v5, :cond_11

    .line 159
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 v5, 0x0

    :cond_11
    if-lez v8, :cond_12

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] return preloaded "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 166
    :cond_12
    :try_start_d
    iget-object v2, v1, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    :try_start_e
    const-string v0, "User-Agent"

    const-string v7, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"

    .line 167
    invoke-virtual {v2, v0, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_11

    if-lez v8, :cond_14

    .line 169
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    const v7, 0x7fffffff

    if-ge v6, v7, :cond_13

    add-int/lit8 v16, v6, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_c

    :cond_13
    const-string v16, ""

    :goto_c
    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v12, v24

    goto/16 :goto_1c

    :cond_14
    move/from16 v6, p4

    if-eqz v26, :cond_15

    move-object/from16 v7, v26

    .line 171
    invoke-virtual {v2, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_e

    :cond_15
    :goto_d
    move-object/from16 v7, v26

    .line 173
    :goto_e
    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    if-lez v8, :cond_1b

    .line 175
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move/from16 v16, v6

    const/16 v6, 0xce

    if-eq v0, v6, :cond_1c

    .line 176
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const/16 v3, 0x1a0

    if-ne v0, v3, :cond_1a

    if-eqz v4, :cond_16

    .line 230
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :cond_16
    if-eqz v2, :cond_17

    .line 234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    if-eqz v25, :cond_18

    .line 238
    invoke-static/range {v25 .. v25}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 239
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 240
    iget v0, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    :cond_18
    if-eqz v5, :cond_19

    .line 244
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    move-object/from16 v6, v23

    .line 245
    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    goto :goto_f

    :cond_19
    move-object/from16 v6, v23

    .line 249
    :goto_f
    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 253
    iget-object v0, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_1a
    move-object/from16 v3, v22

    move-object/from16 v6, v23

    .line 180
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Not Partial Content!"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v12, v24

    move-object/from16 v27, v6

    move-object v6, v3

    move-object/from16 v3, v27

    goto/16 :goto_1d

    :catchall_6
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    :goto_10
    move-object/from16 v12, v24

    goto/16 :goto_1d

    :cond_1b
    move/from16 v16, v6

    :cond_1c
    move v0, v11

    move-object/from16 v11, v22

    move-object/from16 v6, v23

    if-lez v14, :cond_1e

    .line 184
    :try_start_13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    add-int/2addr v7, v8

    if-ne v7, v14, :cond_1d

    goto :goto_12

    .line 187
    :cond_1d
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    const-string v3, "preload length not match"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v6

    move-object v6, v11

    move-object/from16 v12, v24

    const/16 v21, 0x1

    goto/16 :goto_1d

    :catchall_8
    move-exception v0

    move-object v3, v6

    :goto_11
    move-object v6, v11

    goto :goto_10

    .line 190
    :cond_1e
    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentLength(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    if-eqz v7, :cond_1f

    .line 192
    :try_start_16
    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v3, v12, v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x2f

    .line 194
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    const v16, 0x7fffffff

    :cond_1f
    :goto_12
    if-eqz v25, :cond_20

    move-object/from16 v7, v25

    .line 199
    :try_start_17
    invoke-virtual {v1, v7, v14}, Lcom/narvii/video/MediaPreloadService;->writePreloadHeader(Ljava/io/OutputStream;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object v3, v6

    move-object/from16 v25, v7

    goto :goto_11

    :cond_20
    move-object/from16 v7, v25

    :goto_13
    if-lez v8, :cond_21

    move v0, v8

    :cond_21
    const/4 v8, 0x0

    .line 204
    :goto_14
    :try_start_18
    array-length v12, v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    move-object/from16 v22, v11

    sub-int v11, v16, v0

    :try_start_19
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    move-object/from16 p1, v5

    const/4 v5, -0x1

    if-eq v11, v5, :cond_25

    .line 205
    :try_start_1a
    invoke-virtual {v3, v9, v12, v11}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->write([BII)V

    if-eqz v7, :cond_23

    .line 207
    invoke-virtual {v7, v9, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v8, v11

    const v12, 0xc8000

    if-lt v8, v12, :cond_23

    .line 210
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 211
    iget-object v8, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    move-object/from16 v12, v24

    :try_start_1b
    invoke-virtual {v12, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 214
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    if-eqz v7, :cond_22

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] preload data saved!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :cond_22
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object/from16 v5, p1

    move-object v3, v6

    move-object/from16 v6, v22

    const/16 v25, 0x0

    goto/16 :goto_1d

    :catchall_b
    move-exception v0

    goto :goto_17

    :cond_23
    move-object/from16 v12, v24

    :goto_15
    add-int/2addr v0, v11

    move-object/from16 v23, v6

    int-to-long v5, v0

    const-wide/16 v24, 0x64

    mul-long v5, v5, v24

    move-object/from16 p4, v7

    move v11, v8

    int-to-long v7, v14

    .line 221
    :try_start_1d
    div-long/2addr v5, v7

    cmp-long v7, v5, v18

    if-eqz v7, :cond_24

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v17

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v17, v0

    const-string v0, "%"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    move-wide/from16 v18, v5

    goto :goto_16

    :cond_24
    move-object/from16 v8, v17

    move/from16 v17, v0

    :goto_16
    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v24, v12

    move/from16 v0, v17

    move-object/from16 v6, v23

    move-object/from16 v17, v8

    move v8, v11

    move-object/from16 v11, v22

    goto/16 :goto_14

    :catchall_c
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v25, p4

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    goto/16 :goto_1d

    :catchall_d
    move-exception v0

    move-object/from16 v12, v24

    :goto_17
    move-object/from16 v5, p1

    move-object v3, v6

    move-object/from16 v25, v7

    move-object/from16 v6, v22

    goto/16 :goto_1d

    :cond_25
    move-object/from16 v23, v6

    move-object/from16 v12, v24

    if-eqz v4, :cond_26

    .line 230
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :cond_26
    if-eqz v2, :cond_27

    .line 234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    if-eqz v7, :cond_28

    .line 238
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 239
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    iget v0, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    :cond_28
    if-eqz p1, :cond_29

    .line 244
    invoke-static/range {p1 .. p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    move-object/from16 v3, v23

    .line 245
    iget-object v0, v3, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    goto :goto_18

    :cond_29
    move-object/from16 v3, v23

    :goto_18
    if-eqz v21, :cond_2a

    .line 249
    iget-object v0, v3, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 253
    :cond_2a
    iget-object v0, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v6, v22

    invoke-virtual {v0, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_e
    move-exception v0

    move-object/from16 p1, v5

    move-object v3, v6

    move-object/from16 v6, v22

    goto :goto_19

    :catchall_f
    move-exception v0

    move-object/from16 p1, v5

    move-object v3, v6

    move-object v6, v11

    :goto_19
    move-object/from16 v12, v24

    move-object/from16 v25, v7

    goto :goto_1d

    :catchall_10
    move-exception v0

    move-object/from16 p1, v5

    move-object v3, v6

    move-object v6, v11

    move-object/from16 v12, v24

    move-object/from16 v7, v25

    goto :goto_1d

    :catchall_11
    move-exception v0

    move-object/from16 p1, v5

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v12, v24

    move-object/from16 v7, v25

    goto :goto_1c

    :catchall_12
    move-exception v0

    move-object/from16 p1, v5

    goto :goto_1a

    :catchall_13
    move-exception v0

    :goto_1a
    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v12, v24

    move-object/from16 v7, v25

    :goto_1b
    const/4 v2, 0x0

    :goto_1c
    const/4 v4, 0x0

    goto :goto_1d

    :catchall_14
    move-exception v0

    move-object v7, v2

    move-object v3, v12

    move-object v12, v8

    move-object/from16 v25, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v21, 0x0

    :goto_1d
    if-eqz v4, :cond_2b

    .line 230
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :cond_2b
    if-eqz v2, :cond_2c

    .line 234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2c
    if-eqz v25, :cond_2d

    .line 238
    invoke-static/range {v25 .. v25}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 239
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 240
    iget v2, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v7, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v8, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    :cond_2d
    if-eqz v5, :cond_2e

    .line 244
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 245
    iget-object v2, v3, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    :cond_2e
    if-eqz v21, :cond_2f

    .line 249
    iget-object v2, v3, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 253
    :cond_2f
    iget-object v2, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    throw v0

    :cond_30
    :goto_1e
    const/16 v0, 0x193

    .line 69
    invoke-virtual {v3, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    return-void
.end method

.method public preload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p2, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 302
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 303
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method readPreloadHeader(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    .line 271
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 272
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 273
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 274
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-ltz p1, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    .line 276
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "malformed (magic eof)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "malformed (magic number)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public revoke(Ljava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p1, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public size()J
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 466
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 467
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public startPreload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p2, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 312
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 313
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method touch(Ljava/io/File;)V
    .locals 2

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method public translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?url="

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method writePreloadHeader(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4d

    .line 261
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x31

    .line 262
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 263
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 264
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
