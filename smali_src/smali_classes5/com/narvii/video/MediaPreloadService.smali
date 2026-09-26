.class public Lcom/narvii/video/MediaPreloadService;
.super Lcom/narvii/video/EmbedHttpServer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/MediaPreloadService$PreloadTask;,
        Lcom/narvii/video/MediaPreloadService$FileStub;
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/video/MediaPreloadService;->RID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/EmbedHttpServer;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->cleanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/video/MediaPreloadService;->keep:I

    .line 15
    .line 16
    .line 17
    const-wide/32 v0, 0x5265c00

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    const-string v1, "media-preload"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 40
    .line 41
    new-instance p2, Lcom/narvii/util/http/ProxyStack;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 47
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public clean(IJZ)V
    .locals 10

    .line 1
    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->cleanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    move-result v0

    .line 9
    .line 10
    rem-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    if-nez v0, :cond_6

    .line 13
    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v2, p2, v0

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    move-wide v2, v0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v2, p2

    .line 26
    .line 27
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    iget-object p3, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    if-eqz p3, :cond_5

    .line 39
    array-length v4, p3

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    :goto_1
    if-ge v5, v4, :cond_5

    .line 43
    .line 44
    aget-object v6, p3, v5

    .line 45
    .line 46
    new-instance v7, Lcom/narvii/video/MediaPreloadService$FileStub;

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, v6}, Lcom/narvii/video/MediaPreloadService$FileStub;-><init>(Ljava/io/File;)V

    .line 50
    .line 51
    cmp-long v8, v2, v0

    .line 52
    .line 53
    if-eqz v8, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    .line 57
    move-result-wide v8

    .line 58
    .line 59
    cmp-long v8, v8, v2

    .line 60
    .line 61
    if-gez v8, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    const-string v9, ".w"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    move-result v8

    .line 76
    .line 77
    if-eqz v8, :cond_3

    .line 78
    .line 79
    if-eqz p4, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 83
    goto :goto_2

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p3

    .line 94
    .line 95
    if-le p3, p1, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result p3

    .line 103
    sub-int/2addr p3, p1

    .line 104
    .line 105
    add-int/lit8 p3, p3, -0x1

    .line 106
    .line 107
    :goto_3
    if-ltz p3, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Lcom/narvii/video/MediaPreloadService$FileStub;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 119
    .line 120
    add-int/lit8 p3, p3, -0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    .line 8
    return-void
.end method

.method protected handle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;)V
    .locals 29
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

    .line 1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url="

    add-int/2addr v4, v5

    .line 3
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x4

    const-string v7, "&"

    .line 4
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-gez v7, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_25

    :cond_3
    const-string v4, "Range"

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v7, "range"

    .line 8
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    :cond_4
    if-eqz v7, :cond_6

    const-string v9, "\\s*bytes\\s*=\\s*(\\d+)-(\\d*)\\s*"

    const/4 v10, 0x2

    .line 9
    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 11
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 12
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 13
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 14
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

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

    :goto_1
    sget-object v10, Lcom/narvii/video/MediaPreloadService;->RID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    .line 16
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

    .line 17
    new-instance v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    invoke-direct {v12, v1, v6, v0}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 18
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    const/16 v16, 0x0

    if-lez v5, :cond_8

    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    add-int/lit16 v5, v11, 0x4000

    move/from16 p3, v9

    int-to-long v8, v5

    cmp-long v5, v20, v8

    if-lez v5, :cond_9

    .line 19
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_3

    :cond_8
    move/from16 p3, v9

    :cond_9
    iget-object v5, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 20
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-object/from16 v5, v16

    :goto_3
    if-nez v11, :cond_a

    iget-object v8, v12, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 21
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v18

    if-nez v8, :cond_a

    :try_start_0
    iget-object v8, v1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 22
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 23
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

    .line 24
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-virtual {v9, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_0
    move-object/from16 v2, v16

    goto :goto_4

    :catch_1
    :cond_a
    move-object/from16 v17, v14

    :catch_2
    move-object/from16 v2, v16

    move-object v8, v2

    :catch_3
    :goto_4
    const/16 v9, 0x3c0

    new-array v14, v9, [B

    const/16 v9, 0xce

    if-eqz v7, :cond_b

    .line 26
    :try_start_4
    invoke-virtual {v3, v9}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v26, v2

    move-object v3, v6

    move-object/from16 v21, v8

    move-object v6, v12

    :goto_5
    move-object/from16 v2, v16

    const/16 v22, 0x0

    goto/16 :goto_24

    :cond_b
    const/16 v9, 0xc8

    .line 27
    :try_start_5
    invoke-virtual {v3, v9}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_15

    :goto_6
    if-eqz v5, :cond_c

    .line 28
    :try_start_6
    invoke-virtual {v1, v5}, Lcom/narvii/video/MediaPreloadService;->readPreloadHeader(Ljava/io/InputStream;)I

    move-result v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v23, v6

    :goto_7
    const/16 v22, 0x0

    goto :goto_8

    .line 29
    :catch_4
    :try_start_7
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v23, v6

    move-object/from16 v5, v16

    const/4 v9, 0x0

    const/16 v22, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v23, v6

    const/4 v9, 0x0

    goto :goto_7

    :goto_8
    const-string v6, "-"

    move-object/from16 v24, v12

    const-string v12, "Content-Range"

    if-lez v9, :cond_d

    .line 30
    :try_start_8
    invoke-virtual {v3, v9}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentLength(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v7, :cond_d

    move-object/from16 v25, v8

    .line 31
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v26, v2

    :try_start_a
    const-string v2, "bytes "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, -0x1

    move-object/from16 v27, v7

    add-int/lit8 v7, v9, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    :goto_9
    move-object/from16 v2, v16

    :goto_a
    move-object/from16 v3, v23

    move-object/from16 v6, v24

    :goto_b
    move-object/from16 v21, v25

    goto/16 :goto_24

    :catchall_2
    move-exception v0

    move-object/from16 v26, v2

    goto :goto_9

    :cond_d
    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v25, v8

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v25, v8

    goto :goto_9

    :goto_c
    :try_start_b
    const-string v2, "Content-Transfer-Encoding"

    const-string v7, "binary"

    .line 32
    invoke-virtual {v3, v2, v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "video/mp4"

    .line 33
    invoke-virtual {v3, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    const/4 v2, -0x1

    if-lez v9, :cond_f

    if-eqz v5, :cond_f

    int-to-long v7, v11

    .line 34
    :try_start_c
    invoke-virtual {v5, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v7

    long-to-int v7, v7

    if-ne v7, v11, :cond_e

    .line 35
    :goto_d
    invoke-virtual {v5, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-eq v8, v2, :cond_10

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v3, v14, v2, v8}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->write([BII)V

    add-int/2addr v7, v8

    const/4 v2, -0x1

    goto :goto_d

    :cond_e
    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_e

    :cond_f
    const/4 v7, 0x0

    :cond_10
    :goto_e
    if-eqz v5, :cond_11

    .line 37
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v5, v16

    :cond_11
    if-lez v7, :cond_12

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] return preloaded "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_12
    :try_start_d
    iget-object v2, v1, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 39
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_13

    :try_start_e
    const-string v0, "User-Agent"

    const-string v8, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"

    .line 40
    invoke-virtual {v2, v0, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    if-lez v7, :cond_15

    .line 41
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    const v6, 0x7fffffff

    if-ge v8, v6, :cond_13

    add-int/lit8 v28, v8, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    :goto_f
    move-object/from16 v6, v28

    goto :goto_10

    :catchall_4
    move-exception v0

    goto/16 :goto_a

    :cond_13
    const-string v28, ""

    goto :goto_f

    :goto_10
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, v27

    goto :goto_11

    :cond_15
    move/from16 v8, p3

    if-eqz v27, :cond_14

    move-object/from16 v0, v27

    .line 42
    invoke-virtual {v2, v4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 43
    :goto_11
    :try_start_10
    invoke-static {v2}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    if-lez v7, :cond_1b

    .line 44
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move/from16 p3, v8

    const/16 v8, 0xce

    if-eq v6, v8, :cond_1a

    .line 45
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const/16 v3, 0x1a0

    if-ne v0, v3, :cond_19

    if-eqz v4, :cond_16

    .line 46
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 47
    :cond_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v26, :cond_17

    .line 48
    invoke-static/range {v26 .. v26}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 49
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    iget v0, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    :cond_17
    if-eqz v5, :cond_18

    .line 51
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    move-object/from16 v6, v24

    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 52
    invoke-virtual {v1, v0}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    goto :goto_12

    :cond_18
    move-object/from16 v6, v24

    :goto_12
    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v8, v23

    .line 54
    invoke-virtual {v0, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_19
    move-object/from16 v8, v23

    move-object/from16 v6, v24

    .line 55
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Not Partial Content!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    :goto_13
    move-object/from16 v16, v4

    move-object v3, v8

    goto/16 :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v8, v23

    move-object/from16 v6, v24

    goto :goto_13

    :cond_1a
    :goto_14
    move-object/from16 v8, v23

    move-object/from16 v6, v24

    goto :goto_15

    :cond_1b
    move/from16 p3, v8

    goto :goto_14

    :goto_15
    if-lez v9, :cond_1e

    .line 56
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    add-int/2addr v0, v7

    if-ne v0, v9, :cond_1d

    :cond_1c
    move/from16 v0, p3

    goto :goto_16

    .line 57
    :cond_1d
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v3, "preload length not match"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception v0

    move-object/from16 v16, v4

    move-object v3, v8

    move-object/from16 v21, v25

    const/16 v22, 0x1

    goto/16 :goto_24

    .line 58
    :cond_1e
    :try_start_14
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentLength(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    if-eqz v0, :cond_1c

    .line 59
    :try_start_15
    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v3, v12, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x2f

    .line 61
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const v0, 0x7fffffff

    :goto_16
    if-eqz v26, :cond_1f

    move-object/from16 v12, v26

    .line 62
    :try_start_16
    invoke-virtual {v1, v12, v9}, Lcom/narvii/video/MediaPreloadService;->writePreloadHeader(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception v0

    move-object/from16 v16, v4

    move-object v3, v8

    move-object/from16 v26, v12

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v12, v26

    :goto_17
    if-lez v7, :cond_20

    move v11, v7

    :cond_20
    move-object/from16 v23, v8

    const/4 v7, 0x0

    :goto_18
    sub-int v8, v0, v11

    move/from16 p1, v0

    const/16 v0, 0x3c0

    .line 63
    :try_start_17
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object/from16 p3, v5

    const/4 v5, 0x0

    :try_start_18
    invoke-virtual {v4, v14, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    const/4 v0, -0x1

    if-eq v8, v0, :cond_24

    .line 64
    :try_start_19
    invoke-virtual {v3, v14, v5, v8}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    if-eqz v12, :cond_22

    .line 65
    :try_start_1a
    invoke-virtual {v12, v14, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    add-int/2addr v7, v8

    const v5, 0xc8000

    if-lt v7, v5, :cond_22

    .line 66
    :try_start_1b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    iget-object v5, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    move-object/from16 v7, v25

    .line 67
    :try_start_1c
    invoke-virtual {v7, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 68
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v5, :cond_21

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] preload data saved!"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v21, v7

    move-object/from16 v26, v16

    move-object/from16 v3, v23

    :goto_19
    move-object/from16 v16, v4

    goto/16 :goto_24

    :cond_21
    :goto_1a
    move-object/from16 v21, v7

    move-object/from16 v12, v16

    const/4 v7, 0x0

    goto :goto_1e

    :catchall_a
    move-exception v0

    :goto_1b
    move-object/from16 v5, p3

    move-object/from16 v16, v4

    move-object/from16 v21, v7

    :goto_1c
    move-object/from16 v26, v12

    move-object/from16 v3, v23

    goto/16 :goto_24

    :catchall_b
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_1b

    :cond_22
    move-object/from16 v21, v25

    goto :goto_1e

    :catchall_c
    move-exception v0

    move-object/from16 v21, v25

    :goto_1d
    move-object/from16 v5, p3

    move-object/from16 v16, v4

    goto :goto_1c

    :goto_1e
    add-int/2addr v11, v8

    int-to-long v0, v11

    const-wide/16 v24, 0x64

    mul-long v0, v0, v24

    move/from16 p4, v7

    int-to-long v7, v9

    .line 70
    :try_start_1e
    div-long/2addr v0, v7

    cmp-long v5, v0, v18

    if-eqz v5, :cond_23

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    move-wide/from16 v18, v0

    goto :goto_20

    :catchall_d
    move-exception v0

    :goto_1f
    move-object/from16 v1, p0

    goto :goto_1d

    :cond_23
    move-object/from16 v7, v17

    :goto_20
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v5, p3

    move-object/from16 v17, v7

    move-object/from16 v25, v21

    move/from16 v7, p4

    goto/16 :goto_18

    :catchall_e
    move-exception v0

    move-object/from16 v21, v25

    goto :goto_1f

    :cond_24
    move-object/from16 v21, v25

    .line 72
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 73
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v12, :cond_25

    .line 74
    invoke-static {v12}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 75
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-object/from16 v1, p0

    iget v0, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    goto :goto_21

    :cond_25
    move-object/from16 v1, p0

    :goto_21
    if-eqz p3, :cond_26

    .line 77
    invoke-static/range {p3 .. p3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 78
    invoke-virtual {v1, v0}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    :cond_26
    if-eqz v22, :cond_27

    iget-object v0, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_27
    iget-object v0, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v3, v23

    .line 80
    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_f
    move-exception v0

    move-object/from16 v3, v23

    move-object/from16 v21, v25

    move-object/from16 v5, p3

    :goto_22
    move-object/from16 v16, v4

    move-object/from16 v26, v12

    goto :goto_24

    :catchall_10
    move-exception v0

    move-object/from16 p3, v5

    move-object/from16 v3, v23

    move-object/from16 v21, v25

    goto :goto_22

    :catchall_11
    move-exception v0

    move-object/from16 p3, v5

    move-object v3, v8

    move-object/from16 v21, v25

    move-object/from16 v12, v26

    goto/16 :goto_19

    :catchall_12
    move-exception v0

    move-object/from16 p3, v5

    move-object/from16 v3, v23

    move-object/from16 v6, v24

    move-object/from16 v21, v25

    move-object/from16 v12, v26

    goto :goto_24

    :catchall_13
    move-exception v0

    move-object/from16 p3, v5

    :goto_23
    move-object/from16 v3, v23

    move-object/from16 v6, v24

    move-object/from16 v21, v25

    move-object/from16 v12, v26

    move-object/from16 v2, v16

    goto :goto_24

    :catchall_14
    move-exception v0

    goto :goto_23

    :catchall_15
    move-exception v0

    move-object v3, v6

    move-object/from16 v21, v8

    move-object v6, v12

    move-object v12, v2

    move-object/from16 v26, v12

    goto/16 :goto_5

    :goto_24
    if-eqz v16, :cond_28

    .line 81
    invoke-static/range {v16 .. v16}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :cond_28
    if-eqz v2, :cond_29

    .line 82
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_29
    if-eqz v26, :cond_2a

    .line 83
    invoke-static/range {v26 .. v26}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 84
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    iget v2, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v7, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    const/4 v4, 0x0

    .line 85
    invoke-virtual {v1, v2, v7, v8, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    :cond_2a
    if-eqz v5, :cond_2b

    .line 86
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v2, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 87
    invoke-virtual {v1, v2}, Lcom/narvii/video/MediaPreloadService;->touch(Ljava/io/File;)V

    :cond_2b
    if-eqz v22, :cond_2c

    iget-object v2, v6, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2c
    iget-object v2, v1, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    throw v0

    :cond_2d
    :goto_25
    const/16 v0, 0x193

    .line 91
    invoke-virtual {v3, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    return-void
.end method

.method public preload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object p2, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long p2, v1, v3

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x4d

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x31

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    if-ltz v1, :cond_0

    .line 37
    .line 38
    if-ltz v2, :cond_0

    .line 39
    .line 40
    if-ltz p1, :cond_0

    .line 41
    .line 42
    shl-int/lit8 v0, v0, 0x18

    .line 43
    .line 44
    shl-int/lit8 v1, v1, 0x10

    .line 45
    or-int/2addr v0, v1

    .line 46
    .line 47
    shl-int/lit8 v1, v2, 0x8

    .line 48
    or-int/2addr v0, v1

    .line 49
    or-int/2addr p1, v0

    .line 50
    return p1

    .line 51
    .line 52
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 53
    .line 54
    const-string v0, "malformed (magic eof)"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    .line 60
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 61
    .line 62
    const-string v0, "malformed (magic number)"

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1
.end method

.method public revoke(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    return-void
.end method

.method public size()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    array-length v3, v0

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v4, v3, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 20
    move-result-wide v5

    .line 21
    add-long/2addr v1, v5

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v1
.end method

.method public startPreload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/video/MediaPreloadService$PreloadTask;-><init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object p2, v0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long p2, v1, v3

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadExecutor:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/video/MediaPreloadService;->preloadRunning:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method touch(Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 8
    return-void
.end method

.method public translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->isStarted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "http://127.0.0.1:"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/video/EmbedHttpServer;->getPort()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 v1, 0x2f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, "?url="

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
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

    .line 1
    .line 2
    const/16 v0, 0x4d

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    const/16 v0, 0x31

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    .line 12
    ushr-int/lit8 v0, p2, 0x18

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 18
    .line 19
    ushr-int/lit8 v0, p2, 0x10

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    ushr-int/lit8 v0, p2, 0x8

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 32
    .line 33
    and-int/lit16 p2, p2, 0xff

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 37
    return-void
.end method
