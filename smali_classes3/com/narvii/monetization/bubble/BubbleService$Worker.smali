.class Lcom/narvii/monetization/bubble/BubbleService$Worker;
.super Ljava/lang/Thread;
.source "BubbleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field bubblId:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field current:I

.field downloadOnly:Z

.field private os:Ljava/io/OutputStream;

.field rev:I

.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleService;

.field total:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 581
    iput p3, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 582
    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V
    .locals 0

    .line 567
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 595
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    :catch_1
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    :cond_1
    return-void
.end method

.method private check()Z
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$300(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

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
    .locals 19

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    .line 609
    iput-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 610
    iput-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 612
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 613
    invoke-static {}, Lcom/narvii/monetization/bubble/BubbleService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v5, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-virtual {v0, v4, v5}, Lcom/narvii/monetization/bubble/BubbleService;->getWritingFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 615
    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v5, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-static {v4, v5, v6}, Lcom/narvii/monetization/bubble/BubbleService;->access$500(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 624
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 626
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v9}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8

    iput-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->check()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_1

    .line 725
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 729
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    .line 632
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_4

    .line 634
    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0x1a0

    if-ne v10, v11, :cond_2

    const-string v8, "gif download range not satisfiable (416)"

    .line 638
    invoke-static {v8}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 640
    :try_start_3
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 643
    :catch_1
    :try_start_4
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v8}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v8

    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8

    iput-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 646
    :cond_2
    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Content-Range"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v2

    :cond_3
    const-string v11, "bytes (\\d+)-(\\d+)/(\\d+)"

    const/4 v12, 0x2

    .line 649
    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 650
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 651
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    .line 652
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x3

    .line 653
    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v13, v12

    cmp-long v15, v13, v8

    if-nez v15, :cond_4

    .line 655
    iput v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 656
    iput v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 657
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 662
    :cond_4
    :goto_0
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 663
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->check()Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v9, :cond_6

    .line 725
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v8}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    .line 729
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_5
    return-void

    .line 666
    :cond_6
    :try_start_7
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    if-nez v9, :cond_7

    .line 668
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    iput v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 669
    iput v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 670
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    :cond_7
    const/16 v9, 0x1000

    new-array v9, v9, [B

    move-wide v10, v5

    .line 675
    :cond_8
    :goto_1
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-eq v12, v13, :cond_c

    .line 676
    iget-object v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v13, :cond_a

    .line 725
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v8}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 729
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_9
    return-void

    .line 678
    :cond_a
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 679
    iget-object v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-virtual {v13, v9, v7, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 680
    iget v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    add-int/2addr v13, v12

    iput v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    const-wide/16 v12, 0x14

    add-long/2addr v12, v10

    cmp-long v18, v16, v12

    if-lez v18, :cond_8

    .line 683
    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v11, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    iget v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    if-gtz v13, :cond_b

    goto :goto_2

    :cond_b
    iget v13, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    int-to-float v13, v13

    mul-float v13, v13, v15

    iget v14, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    int-to-float v14, v14

    div-float v14, v13, v14

    :goto_2
    invoke-static {v10, v11, v12, v14}, Lcom/narvii/monetization/bubble/BubbleService;->access$600(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V

    move-wide/from16 v10, v16

    goto :goto_1

    .line 687
    :cond_c
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 688
    iput-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 689
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 691
    :try_start_a
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 692
    iput-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 693
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    iget v11, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    if-gtz v11, :cond_d

    goto :goto_3

    :cond_d
    iget v11, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    int-to-float v11, v11

    mul-float v11, v11, v15

    iget v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    int-to-float v12, v12

    div-float v14, v11, v12

    :goto_3
    invoke-static {v8, v9, v10, v14}, Lcom/narvii/monetization/bubble/BubbleService;->access$600(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V

    .line 695
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "Fail to move downloaded file"

    .line 697
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to move downloaded themepack "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :cond_e
    move-object v8, v3

    .line 725
    :goto_4
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    .line 729
    :goto_5
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_a

    :catch_4
    nop

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v3, v8

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object v3, v8

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catch_6
    move-exception v0

    .line 703
    :goto_6
    :try_start_c
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-nez v8, :cond_f

    goto :goto_7

    :cond_f
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :catch_7
    nop

    :goto_7
    if-nez v7, :cond_13

    .line 707
    :try_start_d
    instance-of v7, v0, Lcom/android/volley/TimeoutError;

    if-eqz v7, :cond_10

    goto :goto_8

    .line 709
    :cond_10
    instance-of v7, v0, Lcom/android/volley/NoConnectionError;

    if-eqz v7, :cond_11

    goto :goto_8

    .line 711
    :cond_11
    instance-of v7, v0, Lcom/android/volley/NetworkError;

    if-eqz v7, :cond_12

    goto :goto_8

    .line 713
    :cond_12
    instance-of v7, v0, Ljava/net/UnknownHostException;

    .line 718
    :cond_13
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_14

    goto :goto_9

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    const-string v2, "Fail to download theme pack "

    :cond_15
    move-object v8, v2

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to download theme pack "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 725
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    goto/16 :goto_5

    .line 735
    :cond_16
    :goto_a
    iget-boolean v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    if-nez v0, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_17

    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->extract(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 736
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-static {v0, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->access$700(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V

    goto :goto_b

    .line 738
    :cond_17
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-static {v0, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->access$800(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V

    .line 741
    :goto_b
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$300(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez v8, :cond_18

    .line 743
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$900(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 745
    :cond_18
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$900(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_c
    return-void

    .line 725
    :goto_d
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 726
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 727
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1a

    .line 729
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 733
    :catch_8
    :cond_1a
    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method
