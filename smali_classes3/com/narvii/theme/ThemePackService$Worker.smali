.class Lcom/narvii/theme/ThemePackService$Worker;
.super Ljava/lang/Thread;
.source "ThemePackService.java"


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

    .line 605
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 606
    iput p2, p0, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 607
    iput p3, p0, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    .line 608
    iput-object p4, p0, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/theme/ThemePackService$Worker;)V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/narvii/theme/ThemePackService$Worker;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 614
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :catch_0
    iput-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 621
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    :catch_1
    iput-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    :cond_1
    return-void
.end method

.method private check()Z
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$100(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "rev"

    const-string v3, "cid"

    const-string v4, ""

    const/4 v5, 0x0

    .line 635
    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 636
    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 638
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$200(Lcom/narvii/theme/ThemePackService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 639
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    iget v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    invoke-virtual {v0, v6, v7}, Lcom/narvii/theme/ThemePackService;->getWritingFile(II)Ljava/io/File;

    move-result-object v0

    .line 640
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    iget v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    invoke-virtual {v6, v7, v8}, Lcom/narvii/theme/ThemePackService;->getDownloadedFile(II)Ljava/io/File;

    move-result-object v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    :try_start_0
    const-string v14, "ThemePack GET"

    .line 649
    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v14, Ljava/net/URL;

    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 651
    iget-object v15, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-object v15, v15, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v15, :cond_0

    .line 653
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 654
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_1

    :catch_0
    move-object/from16 v16, v5

    goto :goto_0

    :catch_1
    :cond_0
    move-object v15, v5

    move-object/from16 v16, v15

    :catch_2
    :goto_0
    move-wide/from16 v17, v11

    .line 659
    :goto_1
    :try_start_4
    iget-object v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {v7}, Lcom/narvii/theme/ThemePackService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v7

    iput-object v7, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 661
    invoke-direct/range {p0 .. p0}, Lcom/narvii/theme/ThemePackService$Worker;->check()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v7, :cond_2

    .line 762
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 763
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 766
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    return-void

    :cond_2
    move-object v7, v6

    .line 665
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    cmp-long v20, v5, v11

    if-lez v20, :cond_5

    .line 667
    :try_start_7
    iget-object v14, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0x1a0

    if-ne v11, v12, :cond_3

    const-string v5, "gif download range not satisfiable (416)"

    .line 671
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 673
    :try_start_8
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 676
    :catch_4
    :try_start_9
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {v5}, Lcom/narvii/theme/ThemePackService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 679
    :cond_3
    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v12, "Content-Range"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v11, v4

    :cond_4
    const-string v12, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 682
    invoke-static {v12, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 683
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 684
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 685
    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 686
    invoke-virtual {v11, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v13, v12

    cmp-long v22, v13, v5

    if-nez v22, :cond_5

    .line 688
    iput v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    .line 689
    iput v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    .line 690
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_14

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 695
    :cond_5
    :goto_2
    :try_start_a
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 696
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/narvii/theme/ThemePackService$Worker;->check()Z

    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v6, :cond_7

    .line 762
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 763
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    .line 766
    :try_start_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_6
    :cond_6
    return-void

    .line 699
    :cond_7
    :try_start_d
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    if-nez v6, :cond_8

    .line 701
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    const/4 v6, 0x0

    .line 702
    iput v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    .line 703
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    :cond_8
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 707
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.narvii.action.THEME_PACK_PROGRESS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-virtual {v11, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    invoke-virtual {v11, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v13, 0x0

    const-wide/16 v22, 0x0

    .line 711
    :goto_3
    :try_start_e
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_d

    .line 712
    iget-object v14, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-nez v14, :cond_a

    .line 762
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 763
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 766
    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :catch_7
    :cond_9
    return-void

    .line 714
    :cond_a
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 715
    iget-object v14, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    const/4 v8, 0x0

    invoke-virtual {v14, v6, v8, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 716
    iget v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    add-int/2addr v8, v12

    iput v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    add-int/2addr v13, v12

    const-wide/16 v26, 0x14

    add-long v26, v22, v26

    cmp-long v8, v24, v26

    if-lez v8, :cond_c

    const-string v8, "progress"

    .line 719
    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    if-gtz v12, :cond_b

    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    const/high16 v12, 0x3f800000    # 1.0f

    iget v14, v1, Lcom/narvii/theme/ThemePackService$Worker;->current:I

    int-to-float v14, v14

    mul-float v14, v14, v12

    iget v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->total:I

    int-to-float v12, v12

    div-float v12, v14, v12

    :goto_4
    invoke-virtual {v11, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 720
    iget-object v8, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v8}, Lcom/narvii/theme/ThemePackService;->access$300(Lcom/narvii/theme/ThemePackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-wide/from16 v22, v24

    :cond_c
    const/4 v8, 0x3

    goto :goto_3

    .line 724
    :cond_d
    iget-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/4 v6, 0x0

    .line 725
    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    .line 726
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 728
    :try_start_11
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 729
    iput-object v6, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const/4 v6, -0x1

    .line 730
    :try_start_12
    iget-object v5, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v5}, Lcom/narvii/theme/ThemePackService;->access$300(Lcom/narvii/theme/ThemePackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 732
    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-nez v5, :cond_e

    :try_start_13
    const-string v5, "Fail to move downloaded file"

    .line 734
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to move downloaded themepack "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/16 v8, -0x9

    :try_start_14
    const-string v0, "Move"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_5

    :catch_8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_b

    :catch_9
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 762
    :goto_5
    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    const/16 v20, 0x0

    .line 763
    invoke-static/range {v20 .. v20}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_18

    .line 766
    :try_start_15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    goto/16 :goto_f

    :catch_a
    move-exception v0

    const/16 v20, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v20, v6

    goto :goto_8

    :catch_b
    move-exception v0

    move-object/from16 v20, v6

    const/4 v6, -0x1

    :goto_6
    move-object/from16 v5, v20

    goto :goto_7

    :catch_c
    move-exception v0

    const/4 v6, -0x1

    :goto_7
    const/4 v8, 0x0

    goto :goto_b

    :catch_d
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v5, v20

    goto/16 :goto_14

    :catch_e
    move-exception v0

    const/4 v6, -0x1

    const/16 v20, 0x0

    move-object/from16 v5, v20

    goto :goto_a

    :catch_f
    move-exception v0

    move-object/from16 v20, v5

    move-object v7, v6

    :goto_9
    const/4 v6, -0x1

    :goto_a
    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_14

    :catch_10
    move-exception v0

    move-object/from16 v20, v5

    move-object v7, v6

    const/4 v6, -0x1

    move-object v15, v5

    move-object/from16 v16, v15

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-wide/16 v17, 0x0

    .line 740
    :goto_b
    :try_start_16
    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-nez v11, :cond_f

    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    iget-object v11, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    goto/16 :goto_14

    :catch_11
    nop

    :goto_c
    if-nez v8, :cond_14

    .line 744
    :try_start_17
    instance-of v8, v0, Lcom/android/volley/TimeoutError;

    if-eqz v8, :cond_10

    const/4 v6, -0x2

    const/4 v8, -0x2

    goto :goto_d

    .line 746
    :cond_10
    instance-of v8, v0, Lcom/android/volley/NoConnectionError;

    if-eqz v8, :cond_11

    const/4 v6, -0x3

    const/4 v8, -0x3

    goto :goto_d

    .line 748
    :cond_11
    instance-of v8, v0, Lcom/android/volley/NetworkError;

    if-eqz v8, :cond_12

    const/4 v6, -0x4

    const/4 v8, -0x4

    goto :goto_d

    .line 750
    :cond_12
    instance-of v8, v0, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_13

    const/4 v6, -0x5

    const/4 v8, -0x5

    goto :goto_d

    :cond_13
    const/4 v8, -0x1

    .line 755
    :cond_14
    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_15

    goto :goto_e

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ": "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    const-string v6, "Fail to download theme pack "

    .line 760
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to download theme pack "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 762
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 763
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    .line 766
    :try_start_18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    :catch_12
    :cond_17
    move-object v0, v4

    move-object v5, v6

    :catch_13
    :cond_18
    :goto_f
    const-wide/16 v11, 0x0

    cmp-long v4, v17, v11

    if-eqz v4, :cond_1a

    if-eqz v16, :cond_1a

    .line 772
    iget-object v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-object v4, v4, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    if-eqz v4, :cond_1a

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v11, v17

    const-string v6, "host"

    const-string v4, "CdnDownload"

    const-string v14, "https"

    if-nez v8, :cond_19

    .line 775
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-object v0, v0, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v14, v8, v19

    iget-object v9, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 776
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v6, 0x3

    aput-object v15, v8, v6

    const-string v6, "cdnIp"

    const/4 v9, 0x4

    aput-object v6, v8, v9

    const/4 v6, 0x5

    aput-object v16, v8, v6

    const/4 v6, 0x6

    const-string v9, "size"

    aput-object v9, v8, v6

    const/4 v6, 0x7

    .line 779
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v6, 0x8

    const-string v9, "duration"

    aput-object v9, v8, v6

    const/16 v6, 0x9

    .line 780
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v6, 0xa

    const-string v9, "fails"

    aput-object v9, v8, v6

    const/16 v6, 0xb

    const/4 v9, 0x0

    .line 781
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 775
    invoke-interface {v0, v4, v8}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_19
    const/4 v9, 0x0

    .line 783
    iget-object v10, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-object v10, v10, Lcom/narvii/theme/ThemePackService;->logging:Lcom/narvii/util/logging/LoggingService;

    move-object/from16 v21, v5

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v14, v5, v9

    iget-object v9, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    .line 784
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v5, v14

    const-string v9, "url"

    const/4 v14, 0x2

    aput-object v9, v5, v14

    iget-object v9, v1, Lcom/narvii/theme/ThemePackService$Worker;->url:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v9, v5, v14

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const/4 v6, 0x5

    aput-object v15, v5, v6

    const/4 v6, 0x6

    const-string v9, "cdnIp"

    aput-object v9, v5, v6

    const/4 v6, 0x7

    aput-object v16, v5, v6

    const/16 v6, 0x8

    const-string v9, "size"

    aput-object v9, v5, v6

    const/16 v6, 0x9

    .line 788
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xa

    const-string v9, "duration"

    aput-object v9, v5, v6

    const/16 v6, 0xb

    .line 789
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xc

    const-string v9, "code"

    aput-object v9, v5, v6

    const/16 v6, 0xd

    .line 790
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/16 v6, 0xe

    const-string v8, "message"

    aput-object v8, v5, v6

    const/16 v6, 0xf

    aput-object v0, v5, v6

    const/16 v0, 0x10

    const-string v6, "fails"

    aput-object v6, v5, v0

    const/16 v0, 0x11

    const/4 v6, 0x1

    .line 792
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 783
    invoke-interface {v10, v4, v5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_1a
    :goto_10
    move-object/from16 v21, v5

    .line 796
    :goto_11
    iget-boolean v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->downloadOnly:Z

    if-nez v0, :cond_1b

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

    goto :goto_12

    .line 798
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    iget v4, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    iget v3, v1, Lcom/narvii/theme/ThemePackService$Worker;->rev:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v2}, Lcom/narvii/theme/ThemePackService;->access$300(Lcom/narvii/theme/ThemePackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 804
    :goto_12
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$100(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez v21, :cond_1c

    .line 806
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$400(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 808
    :cond_1c
    iget-object v0, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$400(Lcom/narvii/theme/ThemePackService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v21

    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :cond_1d
    :goto_13
    new-instance v0, Lcom/narvii/theme/ThemePackService$Worker$1;

    invoke-direct {v0, v1}, Lcom/narvii/theme/ThemePackService$Worker$1;-><init>(Lcom/narvii/theme/ThemePackService$Worker;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 762
    :goto_14
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 763
    invoke-static {v5}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 764
    iget-object v2, v1, Lcom/narvii/theme/ThemePackService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1e

    .line 766
    :try_start_19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14

    .line 770
    :catch_14
    :cond_1e
    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method
