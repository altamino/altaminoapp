.class public final Lcom/narvii/util/fileloader/FileLoader$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/fileloader/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileLoader.kt\ncom/narvii/util/fileloader/FileLoader$Session\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,365:1\n1#2:366\n*E\n"
.end annotation


# instance fields
.field private aborted:Z

.field private final callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callbackWrapper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentLength:I

.field private volatile dispatched:Z

.field private downloadedByte:I

.field private file:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final request:Lcom/narvii/util/fileloader/FileLoaderRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I

.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader;

.field private writingFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/util/fileloader/FileLoader;Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 4
    .param p1    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/fileloader/FileLoaderRequest;",
            "Lcom/narvii/util/fileloader/IFileDownloadCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;-><init>(Lcom/narvii/util/fileloader/FileLoader$Session;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbackWrapper$delegate:Lw7/m;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile(Ljava/io/File;)Ljava/io/File;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p1, ".w"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    move-object p1, v1

    .line 84
    .line 85
    :goto_0
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    .line 86
    .line 87
    if-eqz p3, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult$lambda$5(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/narvii/util/fileloader/FileLoader$Session;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    return-object p0
.end method

.method private final dispatchResult(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    :goto_0
    iget v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    cmp-long v3, v0, v4

    .line 21
    .line 22
    if-gtz v3, :cond_2

    .line 23
    :cond_1
    const/4 v3, -0x1

    .line 24
    .line 25
    if-ne v2, v3, :cond_4

    .line 26
    .line 27
    cmp-long v2, v0, v4

    .line 28
    .line 29
    if-gtz v2, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoader;->dispatchToMainThread()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/util/fileloader/g;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/narvii/util/fileloader/g;-><init>(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-direct {p0, v0, v1, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->innerDispatchResult(JLjava/lang/Exception;)V

    .line 50
    :cond_4
    :goto_1
    return-void
.end method

.method private static final dispatchResult$lambda$5(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/fileloader/FileLoader$Session;->innerDispatchResult(JLjava/lang/Exception;)V

    .line 10
    return-void
.end method

.method private final extract(Ljava/io/File;)V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Exception;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Failed to extract "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v7, ".tmp"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    iput v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v2}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    move-object v2, v3

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    move-exception p1

    .line 92
    move-object v2, v3

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 97
    .line 98
    iput v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 106
    .line 107
    iput v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_3

    .line 117
    :catch_1
    move-exception p1

    .line 118
    .line 119
    :goto_1
    :try_start_2
    iput v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 126
    :goto_2
    return-void

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 130
    throw p1
.end method

.method private final getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbackWrapper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    .line 9
    return-object v0
.end method

.method private final getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getStatus$annotations()V
    .locals 0

    return-void
.end method

.method private final getWritingFile(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".w"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final innerDispatchResult(JLjava/lang/Exception;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    cmp-long v2, p1, v2

    .line 59
    .line 60
    if-lez v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    iget-object v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2, p3}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method public final abort(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 2
    .param p1    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public final addCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 4
    .param p1    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    const-string v0, "callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    :goto_0
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-lez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0, v1}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public final containsRealCallback(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->getRealCallback()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_2
    return v0
.end method

.method public final getAborted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    return v0
.end method

.method public final getContentLength()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->contentLength:I

    return v0
.end method

.method public final getDispatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    return v0
.end method

.method public final getDownloadedByte()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->downloadedByte:I

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    return v0
.end method

.method public final getWritingFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    return-object v0
.end method

.method public final removeCallbackByTag(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tag"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->getTag()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyCache()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v5, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v6}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v6}, Lcom/narvii/util/fileloader/INVFileCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 45
    move-result-wide v6

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-wide v6, v3

    .line 48
    .line 49
    :goto_0
    cmp-long v0, v6, v1

    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v0}, Lcom/narvii/util/fileloader/FileLoader;->validateCacheFile(Ljava/io/File;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x2

    .line 64
    .line 65
    iput v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 66
    const/4 v0, 0x0

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    .line 70
    return-void

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getSessionMap(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getKey()Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader;->access$getDownloader(Lcom/narvii/util/fileloader/FileLoader;)Lcom/narvii/util/fileloader/FileDownloader;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iget-object v5, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    iget-object v7, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->this$0:Lcom/narvii/util/fileloader/FileLoader;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/narvii/util/fileloader/FileLoader;->dispatchToMainThread()Z

    .line 110
    move-result v7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0, v5, v6, v7}, Lcom/narvii/util/fileloader/FileDownloader;->execute(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;Lcom/narvii/util/fileloader/IFileDownloadCallback;Z)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->request:Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyZipExtract()Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 129
    move-result-wide v3

    .line 130
    .line 131
    :cond_4
    cmp-long v0, v3, v1

    .line 132
    .line 133
    if-gtz v0, :cond_5

    .line 134
    const/4 v0, -0x1

    .line 135
    .line 136
    iput v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    .line 137
    .line 138
    new-instance v0, Ljava/lang/Exception;

    .line 139
    .line 140
    const-string v1, "Invalid file"

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V

    .line 147
    return-void

    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->extract(Ljava/io/File;)V

    .line 155
    :cond_6
    return-void
.end method

.method public final setAborted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->aborted:Z

    return-void
.end method

.method public final setContentLength(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->contentLength:I

    return-void
.end method

.method public final setDispatched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->dispatched:Z

    return-void
.end method

.method public final setDownloadedByte(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->downloadedByte:I

    return-void
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->file:Ljava/io/File;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->status:I

    return-void
.end method

.method public final setWritingFile(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session;->writingFile:Ljava/io/File;

    return-void
.end method
