.class public Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;
.super Landroid/os/AsyncTask;
.source "BubbleDownloadTask.java"


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
.field private static final TAG:Ljava/lang/String;


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
    .locals 1

    .line 34
    const-class v0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 42
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 47
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->context:Lcom/narvii/app/NVContext;

    const-string v0, "bubble"

    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 49
    iput-object p2, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    .line 50
    iput-object p3, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    return-void
.end method

.method private getBubbleEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 3

    .line 240
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v2, v2, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private getDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 2

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 1

    .line 232
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1
.end method

.method private getEditDownloadedFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 3

    .line 253
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEditWritingFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;
    .locals 3

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".w"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 63
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 64
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 67
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 68
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

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

    .line 76
    :try_start_0
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {v1, v0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditWritingFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v0

    .line 77
    iget-object v3, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {v1, v3}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getEditDownloadedFile(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v3

    .line 78
    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    iget-object v5, v5, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->check()Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    const-string v3, "something wrong happened"

    invoke-interface {v0, v3}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v5, v8

    if-lez v12, :cond_4

    .line 92
    iget-object v12, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v12, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0x1a0

    if-ne v12, v13, :cond_2

    const-string v5, "gif download range not satisfiable (416)"

    .line 96
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :catch_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v12, "Content-Range"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    const-string v12, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 107
    invoke-static {v12, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 108
    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 110
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x3

    .line 111
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v13, v12

    cmp-long v15, v13, v5

    if-nez v15, :cond_4

    .line 115
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 120
    :goto_1
    sget-object v5, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->TAG:Ljava/lang/String;

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

    .line 121
    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->check()Z

    move-result v5

    if-nez v5, :cond_5

    return-object v2

    .line 125
    :cond_5
    iget-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    if-nez v5, :cond_6

    .line 127
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 129
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    const/4 v12, 0x0

    :cond_6
    const/16 v5, 0x1000

    new-array v5, v5, [B

    move-wide v13, v8

    .line 134
    :goto_2
    iget-object v6, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_9

    .line 135
    iget-object v15, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    if-nez v15, :cond_7

    return-object v2

    .line 138
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 139
    iget-object v8, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    invoke-virtual {v8, v5, v11, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v12, v6

    new-array v6, v7, [Ljava/lang/Integer;

    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-virtual {v1, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v8, 0x14

    add-long/2addr v8, v13

    cmp-long v6, v15, v8

    if-lez v6, :cond_8

    move-wide v13, v15

    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 146
    :cond_9
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 147
    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->os:Ljava/io/OutputStream;

    .line 148
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 149
    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->ins:Ljava/io/InputStream;

    .line 150
    iget-object v4, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    iput-object v2, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    .line 152
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to move downloaded bubble Source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 156
    :cond_a
    iget-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {v1, v0}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->getBubbleEditDir(Lcom/narvii/model/ChatBubble;)Ljava/io/File;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_3
    if-ge v11, v5, :cond_b

    aget-object v6, v4, v11

    .line 159
    invoke-static {v6}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 163
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

    .line 164
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_e

    .line 167
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 171
    invoke-static {v5, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 172
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 173
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v0

    .line 176
    :cond_c
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 177
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to rename bubble dir"

    .line 178
    iput-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->error:Ljava/lang/String;

    goto :goto_4

    .line 181
    :cond_d
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to unzip file"

    .line 182
    iput-object v0, v1, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->error:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    return-object v2

    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_4
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected getProxyStack()Lcom/narvii/util/http/ProxyStack;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_1

    const-string v1, "Download file fail"

    .line 208
    invoke-interface {v0, v1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    invoke-interface {v0, v1, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadSuccess(Lcom/narvii/model/ChatBubble;Ljava/io/File;)V

    .line 215
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadListener:Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadProgressUpdate(II)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
