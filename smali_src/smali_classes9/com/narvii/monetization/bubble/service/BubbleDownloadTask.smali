.class public Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleDownloadTask"


# instance fields
.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field protected conn:Ljava/net/HttpURLConnection;

.field context:Lcom/narvii/app/NVContext;

.field downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

.field protected downloadingBubble:Lcom/narvii/model/ChatBubble;

.field error:Ljava/lang/String;

.field protected ins:Ljava/io/InputStream;

.field protected os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "bubble"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    .line 25
    return-void
.end method

.method private getBubbleEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
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
    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    return-object v0
.end method

.method private getDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method private getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Ljava/io/File;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_0
    return-object p1
.end method

.method private getEditDownloadedFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, ".zip"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method private getEditWritingFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, ".w"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 33
    :cond_2
    return-void
.end method

.method protected check()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 2
    invoke-direct {v1, v0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditWritingFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v0

    iget-object v3, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 3
    invoke-direct {v1, v3}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDownloadedFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    iget-object v5, v5, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->check()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_0

    const-string v3, "something wrong happened"

    .line 7
    invoke-interface {v0, v3}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    return-object v2

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v9, :cond_4

    iget-object v9, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v13, "Range"

    .line 9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 10
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v13, 0x1a0

    if-ne v9, v13, :cond_2

    const-string v5, "gif download range not satisfiable (416)"

    .line 11
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 12
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 13
    :catch_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v9, "Content-Range"

    .line 14
    invoke-virtual {v4, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    const-string v9, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 15
    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 16
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 18
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x3

    .line 19
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v13, v9

    cmp-long v5, v13, v5

    if-nez v5, :cond_4

    .line 20
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v12

    move v9, v4

    :goto_2
    sget-object v5, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->TAG:Ljava/lang/String;

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "download bubble resource "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    iget-object v13, v13, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 22
    invoke-static {v5}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->check()Z

    move-result v5

    if-nez v5, :cond_5

    return-object v2

    :cond_5
    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    if-nez v5, :cond_6

    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 24
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 25
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    move v9, v12

    :cond_6
    const/16 v5, 0x1000

    new-array v5, v5, [B

    move-wide v13, v7

    :goto_3
    iget-object v6, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 26
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_9

    iget-object v15, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    if-nez v15, :cond_7

    return-object v2

    .line 27
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-object v7, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 28
    invoke-virtual {v7, v5, v12, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v9, v6

    new-array v6, v10, [Ljava/lang/Integer;

    .line 29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v1, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v6, 0x14

    add-long/2addr v6, v13

    cmp-long v6, v15, v6

    if-lez v6, :cond_8

    move-wide v13, v15

    :cond_8
    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_9
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 30
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 31
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 32
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to move downloaded bubble Source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 35
    invoke-direct {v1, v0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getBubbleEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_4
    if-ge v12, v5, :cond_b

    aget-object v6, v4, v12

    .line 38
    invoke-static {v6}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 39
    :cond_b
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_e

    .line 42
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    invoke-static {v5, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 44
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 45
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v0

    .line 46
    :cond_c
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 47
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to rename bubble dir"

    iput-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->error:Ljava/lang/String;

    goto :goto_8

    .line 48
    :cond_d
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to unzip file"

    iput-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->error:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_e
    return-object v2

    .line 49
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 50
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 51
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected getProxyStack()Lcom/narvii/util/http/ProxyStack;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_1

    const-string v1, "Download file fail"

    .line 2
    invoke-interface {v0, v1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadSuccess(Lcom/narvii/model/ChatBubble;Ljava/io/File;)V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadProgressUpdate(II)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
