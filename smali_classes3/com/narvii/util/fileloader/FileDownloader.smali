.class public final Lcom/narvii/util/fileloader/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.kt"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileDownloader;->ctx:Lcom/narvii/app/NVContext;

    .line 17
    new-instance p1, Lcom/narvii/util/http/ProxyStack;

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;Lcom/narvii/util/fileloader/IFileDownloadCallback;Z)V
    .locals 11

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    .line 32
    new-instance v1, Lcom/narvii/util/fileloader/FileDownloader$execute$1;

    invoke-direct {v1, p3, p1, p2}, Lcom/narvii/util/fileloader/FileDownloader$execute$1;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 116
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    :cond_2
    const/4 p2, 0x1

    .line 38
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    long-to-int v5, v1

    .line 41
    invoke-virtual {p1, v5}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    .line 43
    :cond_3
    iget-object v5, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v6, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v6, "connection"

    cmp-long v7, v1, v3

    if-lez v7, :cond_6

    :try_start_2
    const-string v3, "Range"

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x1a0

    if-ne v3, v4, :cond_4

    const-string p2, "Download range not satisfiable (416)"

    .line 49
    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :catch_0
    :try_start_4
    iget-object p2, p0, Lcom/narvii/util/fileloader/FileDownloader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v5, p2

    goto :goto_2

    :cond_4
    :try_start_5
    const-string v3, "Content-Range"

    .line 58
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    const-string v4, "bytes (\\d+)-(\\d+)/(\\d+)"

    const/4 v7, 0x2

    .line 59
    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    invoke-virtual {v3, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x3

    .line 63
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v7, v4

    cmp-long v9, v7, v1

    if-nez v9, :cond_6

    .line 65
    invoke-virtual {p1, v3}, Lcom/narvii/util/fileloader/FileLoader$Session;->setContentLength(I)V

    .line 66
    invoke-virtual {p1, v4}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto/16 :goto_c

    :catch_1
    move-exception p2

    move-object v1, v0

    goto/16 :goto_8

    :cond_6
    :goto_2
    move-object v1, v0

    .line 72
    :goto_3
    :try_start_6
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 75
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/narvii/util/fileloader/FileLoader$Session;->setContentLength(I)V

    .line 76
    invoke-virtual {p1, v2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    .line 77
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    :cond_7
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 80
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_4
    const/4 v6, -0x1

    if-eq v4, v6, :cond_a

    .line 82
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getAborted()Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v6, :cond_8

    .line 115
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 116
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 117
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 85
    :cond_8
    :try_start_8
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lcom/narvii/util/fileloader/FileLoader$Session;->setDownloadedByte(I)V

    if-eqz p4, :cond_9

    .line 88
    new-instance v4, Lcom/narvii/util/fileloader/FileDownloader$execute$2;

    invoke-direct {v4, p3, p1}, Lcom/narvii/util/fileloader/FileDownloader$execute$2;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {v4}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 90
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result v4

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    move-result v6

    invoke-interface {p3, v4, v6}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onProgressUpdate(II)V

    .line 92
    :goto_5
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_4

    .line 95
    :cond_a
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getWritingFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p4, :cond_b

    .line 97
    new-instance v0, Lcom/narvii/util/fileloader/FileDownloader$execute$3;

    invoke-direct {v0, p3, p1}, Lcom/narvii/util/fileloader/FileDownloader$execute$3;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 99
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {p3, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    goto :goto_6

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_d
    if-eqz p4, :cond_e

    .line 103
    :try_start_9
    new-instance v0, Lcom/narvii/util/fileloader/FileDownloader$execute$4;

    invoke-direct {v0, p3, p1}, Lcom/narvii/util/fileloader/FileDownloader$execute$4;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 105
    :cond_e
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Fail to move downloaded file"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 115
    :goto_6
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 116
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 117
    :goto_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    :catchall_1
    move-exception p1

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, p2

    move-object p2, v10

    goto :goto_8

    :catch_3
    move-exception p2

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v5, p2

    goto :goto_c

    :catch_4
    move-exception p2

    move-object v1, v0

    move-object v5, v1

    :goto_8
    if-eqz p4, :cond_f

    .line 110
    :try_start_a
    new-instance p4, Lcom/narvii/util/fileloader/FileDownloader$execute$5;

    invoke-direct {p4, p3, p1, p2}, Lcom/narvii/util/fileloader/FileDownloader$execute$5;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    invoke-static {p4}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 112
    :cond_f
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 115
    :goto_9
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 116
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v5, :cond_10

    goto :goto_7

    :cond_10
    :goto_a
    return-void

    :catchall_3
    move-exception p1

    move-object p2, v0

    :goto_b
    move-object v0, v1

    .line 115
    :goto_c
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 116
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v5, :cond_11

    .line 117
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method
