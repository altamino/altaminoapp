.class public final Lcom/narvii/util/fileloader/FileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stack:Lcom/narvii/util/http/ProxyStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

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
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileDownloader;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/fileloader/FileDownloader;->execute$lambda$2(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/fileloader/FileDownloader;->execute$lambda$1(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/fileloader/FileDownloader;->execute$lambda$4(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/fileloader/FileDownloader;->execute$lambda$0(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/fileloader/FileDownloader;->execute$lambda$3(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    return-void
.end method

.method private static final execute$lambda$0(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$session"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$dir"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "Cache dir "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, " not available"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p1, v0}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    return-void
.end method

.method private static final execute$lambda$1(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$session"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0, p1}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onProgressUpdate(II)V

    .line 22
    return-void
.end method

.method private static final execute$lambda$2(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$session"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    .line 21
    return-void
.end method

.method private static final execute$lambda$3(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$session"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Exception;

    .line 21
    .line 22
    const-string v1, "Fail to move downloaded file"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, v0}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method private static final execute$lambda$4(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$session"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$e"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final execute(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;Lcom/narvii/util/fileloader/IFileDownloadCallback;Z)V
    .locals 8
    .param p1    # Lcom/narvii/util/fileloader/FileLoader$Session;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    .line 3
    new-instance v1, Lcom/narvii/util/fileloader/a;

    invoke-direct {v1, p3, p1, p2}, Lcom/narvii/util/fileloader/a;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    move-object v4, p2

    goto/16 :goto_b

    :catch_0
    move-exception p2

    move-object v1, v0

    move-object v4, v1

    goto/16 :goto_8

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not available"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 6
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    :cond_2
    const/4 p2, 0x1

    .line 7
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    long-to-int v4, v1

    .line 9
    invoke-virtual {p1, v4}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    :cond_3
    iget-object v4, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 10
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_4

    :try_start_2
    const-string v3, "Range"

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_5

    const-string p2, "Download range not satisfiable (416)"

    .line 13
    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto/16 :goto_b

    :catch_1
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 15
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v1, v0

    goto/16 :goto_8

    :cond_5
    :try_start_5
    const-string v3, "Content-Range"

    .line 16
    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    const-string v5, "bytes (\\d+)-(\\d+)/(\\d+)"

    const/4 v6, 0x2

    .line 17
    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-virtual {v3, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 21
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v5

    cmp-long v1, v6, v1

    if-nez v1, :cond_4

    .line 22
    invoke-virtual {p1, v3}, Lcom/narvii/util/fileloader/FileLoader$Session;->setContentLength(I)V

    .line 23
    invoke-virtual {p1, v5}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    .line 24
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 25
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 p2, 0x0

    if-nez v1, :cond_7

    .line 26
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setContentLength(I)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    .line 28
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto/16 :goto_b

    :catch_3
    move-exception p2

    goto/16 :goto_8

    :cond_7
    :goto_3
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 29
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_4
    const/4 v5, -0x1

    if-eq v3, v5, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getAborted()Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_8

    .line 31
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 32
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 33
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 34
    :cond_8
    :try_start_7
    invoke-virtual {v1, v2, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    if-eqz p4, :cond_9

    .line 36
    new-instance v3, Lcom/narvii/util/fileloader/b;

    invoke-direct {v3, p3, p1}, Lcom/narvii/util/fileloader/b;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 37
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result v3

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    move-result v5

    invoke-interface {p3, v3, v5}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onProgressUpdate(II)V

    .line 38
    :goto_5
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz p4, :cond_b

    .line 40
    new-instance p2, Lcom/narvii/util/fileloader/c;

    invoke-direct {p2, p3, p1}, Lcom/narvii/util/fileloader/c;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-interface {p3, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    goto :goto_6

    :cond_c
    if-eqz p4, :cond_d

    .line 42
    new-instance p2, Lcom/narvii/util/fileloader/d;

    invoke-direct {p2, p3, p1}, Lcom/narvii/util/fileloader/d;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 43
    :cond_d
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Fail to move downloaded file"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 44
    :goto_6
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 45
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 46
    :goto_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    :goto_8
    if-eqz p4, :cond_e

    .line 47
    :try_start_8
    new-instance p4, Lcom/narvii/util/fileloader/e;

    invoke-direct {p4, p3, p1, p2}, Lcom/narvii/util/fileloader/e;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    invoke-static {p4}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 48
    :cond_e
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 49
    :goto_9
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 50
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    :goto_a
    return-void

    .line 51
    :goto_b
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 52
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v4, :cond_10

    .line 53
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw p1
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method
