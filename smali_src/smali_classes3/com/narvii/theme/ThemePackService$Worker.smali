.class Lcom/narvii/theme/ThemePackService$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/theme/ThemePackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field cid:I

.field private conn:Ljava/net/HttpURLConnection;

.field current:I

.field downloadOnly:Z

.field private os:Ljava/io/OutputStream;

.field rev:I

.field final synthetic this$0:Lcom/narvii/theme/ThemePackService;

.field total:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/theme/ThemePackService;IILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/theme/ThemePackService$Worker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/theme/ThemePackService$Worker;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    :catch_0
    iput-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    iput-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 20
    :cond_1
    return-void
.end method

.method private check()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->f(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-ne v0, p0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v1, p0

    const-string v2, "rev"

    const-string v3, "cid"

    const-string v4, ""

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 1
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->a(Lcom/narvii/theme/ThemePackService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    iget v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 2
    invoke-virtual {v0, v6, v7}, Lcom/narvii/theme/ThemePackService;->getWritingFile(II)Ljava/io/File;

    move-result-object v0

    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    iget v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 3
    invoke-virtual {v6, v7, v8}, Lcom/narvii/theme/ThemePackService;->getDownloadedFile(II)Ljava/io/File;

    move-result-object v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    :try_start_0
    const-string v14, "ThemePack GET"

    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 4
    invoke-static {v14, v15}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v14, Ljava/net/URL;

    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 6
    iget-object v15, v15, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v15, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :catch_0
    move-object/from16 v16, v5

    :catch_1
    :goto_0
    move-wide/from16 v17, v11

    goto :goto_1

    :catch_2
    :cond_0
    move-object v15, v5

    move-object/from16 v16, v15

    goto :goto_0

    :goto_1
    :try_start_4
    iget-object v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 9
    invoke-virtual {v7}, Lcom/narvii/theme/ThemePackService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v7

    iput-object v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/narvii/theme/ThemePackService$Worker;->check()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v7, :cond_2

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 12
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 13
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    return-void

    :cond_2
    move-object v7, v6

    .line 14
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    cmp-long v20, v5, v11

    if-lez v20, :cond_5

    :try_start_7
    iget-object v14, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    .line 15
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v11, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 16
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0x1a0

    if-ne v11, v12, :cond_3

    const-string v5, "gif download range not satisfiable (416)"

    .line 17
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 18
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_18

    :catch_4
    :goto_2
    :try_start_9
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 19
    invoke-virtual {v5}, Lcom/narvii/theme/ThemePackService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v6, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_3
    const/16 v22, 0x0

    goto/16 :goto_10

    :cond_3
    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v12, "Content-Range"

    .line 20
    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v11, v4

    :cond_4
    const-string v12, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 21
    invoke-static {v12, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 22
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 23
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 24
    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 25
    invoke-virtual {v11, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v13, v12

    cmp-long v5, v13, v5

    if-nez v5, :cond_5

    iput v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    iput v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    .line 26
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_4
    :try_start_a
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 27
    invoke-static {v5}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 28
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/narvii/theme/ThemePackService$Worker;->check()Z

    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v6, :cond_7

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 29
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 30
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    .line 31
    :try_start_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_6
    :cond_6
    return-void

    :cond_7
    :try_start_d
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 32
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    iput v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    const/4 v6, 0x0

    iput v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    .line 33
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v6, v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    :goto_5
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 34
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.narvii.action.THEME_PACK_PROGRESS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 35
    invoke-virtual {v11, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 36
    invoke-virtual {v11, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-wide/16 v12, 0x0

    const/16 v22, 0x0

    .line 37
    :goto_6
    :try_start_e
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v8, -0x1

    if-eq v14, v8, :cond_d

    iget-object v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v8, :cond_a

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 38
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 39
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 40
    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :catch_8
    :cond_9
    return-void

    .line 41
    :cond_a
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    iget-object v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    const/4 v9, 0x0

    .line 42
    invoke-virtual {v8, v6, v9, v14}, Ljava/io/OutputStream;->write([BII)V

    iget v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    add-int/2addr v8, v14

    iput v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    add-int v22, v22, v14

    const-wide/16 v25, 0x14

    add-long v25, v12, v25

    cmp-long v9, v23, v25

    if-lez v9, :cond_c

    const-string v9, "progress"

    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    if-gtz v12, :cond_b

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    int-to-float v8, v8

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v8, v13

    int-to-float v12, v12

    div-float/2addr v8, v12

    .line 43
    :goto_7
    invoke-virtual {v11, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 44
    invoke-static {v8}, Lcom/narvii/theme/ThemePackService;->e(Lcom/narvii/theme/ThemePackService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    move-wide/from16 v12, v23

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_8
    move-object v6, v0

    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_c
    :goto_9
    const/4 v8, 0x3

    const/4 v9, 0x2

    goto :goto_6

    :cond_d
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 45
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 46
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 47
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 48
    invoke-static {v5}, Lcom/narvii/theme/ThemePackService;->e(Lcom/narvii/theme/ThemePackService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 49
    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-nez v5, :cond_e

    :try_start_13
    const-string v20, "Fail to move downloaded file"

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to move downloaded themepack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    const/16 v5, -0x9

    :try_start_14
    const-string v0, "Move"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v6, v0

    move v0, v5

    :goto_a
    const/4 v5, 0x0

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v6, v0

    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_b
    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 51
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    const/4 v6, 0x0

    .line 52
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_f

    .line 53
    :try_start_15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    :catch_c
    :cond_f
    :goto_c
    move-object/from16 v4, v20

    const-wide/16 v8, 0x0

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    :goto_d
    move-object v5, v6

    goto/16 :goto_18

    :catch_d
    move-exception v0

    const/4 v6, 0x0

    :goto_e
    move-object v5, v6

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    goto :goto_e

    :catch_f
    move-exception v0

    const/4 v6, 0x0

    move-object v5, v6

    :goto_f
    const/16 v22, 0x0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v5

    goto/16 :goto_18

    :catch_10
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    goto :goto_f

    :catch_11
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    move-object v15, v5

    move-object/from16 v16, v15

    const-wide/16 v17, 0x0

    goto :goto_f

    :goto_10
    :try_start_16
    iget-object v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-nez v8, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    .line 54
    :cond_10
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catch_12
    :goto_11
    if-nez v0, :cond_15

    .line 55
    :try_start_17
    instance-of v0, v6, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_11

    const/4 v0, -0x2

    goto :goto_12

    .line 56
    :cond_11
    instance-of v0, v6, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_12

    const/4 v0, -0x3

    goto :goto_12

    .line 57
    :cond_12
    instance-of v0, v6, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_13

    const/4 v0, -0x4

    goto :goto_12

    .line 58
    :cond_13
    instance-of v0, v6, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_14

    const/4 v0, -0x5

    goto :goto_12

    :cond_14
    const/4 v0, -0x1

    .line 59
    :cond_15
    :goto_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_16

    goto :goto_13

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_17

    const-string v8, "Fail to download theme pack "

    :cond_17
    move-object/from16 v20, v8

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to download theme pack "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 62
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 63
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_18

    .line 64
    :try_start_18
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13

    :catch_13
    :cond_18
    move v5, v0

    move-object v0, v4

    goto/16 :goto_c

    :goto_14
    cmp-long v6, v17, v8

    if-eqz v6, :cond_19

    if-eqz v16, :cond_19

    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 65
    iget-object v6, v6, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    if-eqz v6, :cond_19

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v17

    const-string v6, "duration"

    const-string v13, "size"

    const/16 v17, 0x5

    const-string v18, "cdnIp"

    const/16 v19, 0x4

    const-string v20, "host"

    const/16 v11, 0xc

    const-string v12, "CdnDownload"

    const-string v14, "https"

    if-nez v5, :cond_1a

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 67
    iget-object v0, v0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v14, v5, v11

    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 68
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    aput-object v20, v5, v10

    const/4 v10, 0x3

    aput-object v15, v5, v10

    aput-object v18, v5, v19

    aput-object v16, v5, v17

    const/4 v10, 0x6

    aput-object v13, v5, v10

    .line 69
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v5, v11

    const/16 v10, 0x8

    aput-object v6, v5, v10

    const/16 v6, 0x9

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/16 v6, 0xa

    const-string v8, "fails"

    aput-object v8, v5, v6

    const/16 v6, 0xb

    const/16 v21, 0x0

    .line 71
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    .line 72
    invoke-interface {v0, v12, v5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v21, v4

    goto :goto_15

    :cond_1a
    const/16 v21, 0x0

    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 73
    iget-object v11, v11, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    const/16 v10, 0x12

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v14, v10, v21

    move-object/from16 v21, v4

    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 74
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v14, 0x1

    aput-object v4, v10, v14

    const-string/jumbo v4, "url"

    const/4 v14, 0x2

    aput-object v4, v10, v14

    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v4, v10, v14

    aput-object v20, v10, v19

    aput-object v15, v10, v17

    const/4 v4, 0x6

    aput-object v18, v10, v4

    const/4 v4, 0x7

    aput-object v16, v10, v4

    const/16 v4, 0x8

    aput-object v13, v10, v4

    const/16 v4, 0x9

    .line 75
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v4

    const/16 v4, 0xa

    aput-object v6, v10, v4

    const/16 v4, 0xb

    .line 76
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v4

    const-string v4, "code"

    const/16 v6, 0xc

    aput-object v4, v10, v6

    const/16 v4, 0xd

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    const/16 v4, 0xe

    const-string v5, "message"

    aput-object v5, v10, v4

    const/16 v4, 0xf

    aput-object v0, v10, v4

    const/16 v0, 0x10

    const-string v4, "fails"

    aput-object v4, v10, v0

    const/16 v0, 0x11

    const/4 v4, 0x1

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    .line 79
    invoke-interface {v11, v12, v10}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    iget-boolean v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    if-nez v0, :cond_1b

    .line 80
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1b

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    iget v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_16

    .line 81
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 82
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 84
    invoke-static {v2}, Lcom/narvii/theme/ThemePackService;->e(Lcom/narvii/theme/ThemePackService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    :goto_16
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 85
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->f(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez v21, :cond_1c

    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 86
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->d(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_1c
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 87
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->d(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1d
    :goto_17
    new-instance v0, Lcom/narvii/theme/ThemePackService$Worker$1;

    invoke-direct {v0, v1}, Lcom/narvii/theme/ThemePackService$Worker$1;-><init>(Lcom/narvii/theme/ThemePackService$Worker;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :goto_18
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 89
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 90
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1e

    .line 91
    :try_start_19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14

    .line 92
    :catch_14
    :cond_1e
    throw v0
.end method
