.class Lcom/narvii/util/http/ApiService$WrappedRequest;
.super Lcom/android/volley/Request;
.source "ApiService.java"

# interfaces
.implements Lcom/narvii/volley/HurlExtRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;",
        "Lcom/narvii/volley/HurlExtRequest;"
    }
.end annotation


# instance fields
.field callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

.field dataLen:I

.field elapse:J

.field error:Ljava/lang/Throwable;

.field execStackTrace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/narvii/util/http/ApiResponseListener;

.field private multiPartContentLength:I

.field networkResponse:Lcom/android/volley/NetworkResponse;

.field parseElapse:J

.field reqId:Ljava/lang/String;

.field request:Lcom/narvii/util/http/ApiRequest;

.field resend:Lcom/narvii/model/api/ApiResponse;

.field statusCode:I

.field final synthetic this$0:Lcom/narvii/util/http/ApiService;


# direct methods
.method public constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 3

    .line 375
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 376
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->method()I

    move-result v0

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiService;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 377
    iput-object p2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 378
    iput-object p3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    neg-long v0, v0

    iput-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 380
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->method()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 381
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->timeout()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, 0x1770

    goto :goto_1

    :cond_1
    const/16 v0, 0x3a98

    .line 386
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->retry()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->retry()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 391
    :goto_2
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p2, v0, p1, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 392
    invoke-virtual {p0, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 394
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 395
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 396
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    .line 397
    array-length p2, p1

    :goto_3
    if-ge p3, p2, :cond_5

    aget-object v0, p1, p3

    .line 398
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.narvii.util.http.ApiService"

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 400
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private convertHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 736
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->syncTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 741
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 742
    new-instance v2, Lcom/narvii/util/http/NameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 737
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;
    .locals 5

    .line 722
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 723
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "utf-8"

    .line 724
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v0

    .line 726
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 730
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private verifySig([BLjava/lang/String;)Z
    .locals 6

    const/4 p1, 0x1

    return p1
.end method

.method private writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 496
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/http/ApiRequest$MultiPart;

    .line 502
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$600()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 503
    iget-object v5, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v5, v5, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 504
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 505
    instance-of v5, v4, Lcom/narvii/util/http/ApiRequest$FormPart;

    const-string v6, "\""

    const-string v7, "Content-Disposition: form-data; name=\""

    if-eqz v5, :cond_2

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 507
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 508
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 509
    check-cast v4, Lcom/narvii/util/http/ApiRequest$FormPart;

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$FormPart;->getData()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 510
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 511
    :cond_2
    instance-of v5, v4, Lcom/narvii/util/http/ApiRequest$FilePart;

    if-eqz v5, :cond_1

    .line 512
    move-object v5, v4

    check-cast v5, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"; filename=\""

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$FilePart;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 513
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 515
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 516
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 517
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$FilePart;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 518
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_4

    int-to-long v5, v2

    .line 522
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_3

    :cond_4
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 526
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 528
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v4, v7, :cond_7

    .line 529
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 532
    :cond_6
    invoke-virtual {p1, v5, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    .line 534
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz v4, :cond_5

    .line 535
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {v4, v3, v8}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    goto :goto_1

    .line 538
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz v4, :cond_8

    .line 539
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {v4, v3, v8}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 545
    :goto_3
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 542
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 543
    throw p1

    .line 548
    :cond_9
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$600()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 549
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 550
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$600()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 551
    invoke-static {}, Lcom/narvii/util/http/ApiService;->access$700()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_a

    .line 553
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz p2, :cond_b

    .line 557
    instance-of p2, p1, Ljava/io/DataOutputStream;

    if-eqz p2, :cond_b

    .line 558
    check-cast p1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v2

    return p1

    :cond_b
    return v1
.end method


# virtual methods
.method public countMultiPartBytes()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 489
    invoke-direct {p0, v0, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5

    .line 808
    iget-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    :cond_0
    if-eqz p1, :cond_1

    .line 812
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "X-Request-Id"

    .line 813
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->reqId:Ljava/lang/String;

    .line 817
    :cond_1
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    :goto_0
    iput v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 819
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 820
    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    .line 821
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    array-length v1, v0

    :goto_2
    iput v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    .line 824
    iget v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_6

    .line 826
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->api_request_502:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    goto :goto_3

    :cond_6
    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_7

    .line 829
    new-instance p1, Lcom/android/volley/NetworkError;

    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    goto :goto_3

    .line 831
    :cond_7
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 832
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_8

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiResponseListener;->parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 837
    :catch_0
    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 842
    :cond_8
    :goto_3
    invoke-virtual {p0, v2}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method protected deliverResponse(Lcom/narvii/model/api/ApiResponse;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 847
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService$CallPostProgress;->cancel()V

    .line 849
    iput-object v10, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 853
    :cond_0
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend:Lcom/narvii/model/api/ApiResponse;

    if-nez v0, :cond_2

    if-eqz v9, :cond_2

    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v2, 0x69

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    sget-object v2, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    .line 856
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 859
    iput-object v9, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend:Lcom/narvii/model/api/ApiResponse;

    .line 860
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v3, v2, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-static {v2, v0}, Lcom/narvii/util/http/ApiService;->access$800(Lcom/narvii/util/http/ApiService;Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 863
    :cond_1
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 869
    :cond_2
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v11, " in context "

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "api"

    if-eqz v9, :cond_6

    .line 873
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-nez v0, :cond_6

    .line 875
    :try_start_0
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 878
    :cond_3
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2, v9}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 879
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 881
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 882
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-interface {v2, v3, v9}, Lcom/narvii/util/http/ApiSessionMonitor;->onRequestFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    move-object v2, v10

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish() throws "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 889
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 890
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    goto :goto_1

    .line 893
    :cond_5
    iput-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 895
    :goto_1
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    move-object v2, v10

    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v15, -0x1

    if-nez v0, :cond_17

    if-nez v2, :cond_7

    if-eqz v9, :cond_7

    .line 901
    iget-object v2, v9, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    :cond_7
    if-nez v2, :cond_8

    .line 905
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_8

    .line 906
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_timeout:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    .line 908
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_9

    .line 909
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_no_connection:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    .line 911
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_a

    .line 912
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_network:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 915
    :cond_a
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    if-nez v9, :cond_b

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_c

    .line 919
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 920
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_d

    .line 922
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_fail:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_d
    move-object/from16 v16, v2

    :goto_4
    const-string v0, "topActivity"

    if-eqz v9, :cond_f

    .line 926
    :try_start_1
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_f

    .line 929
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/volley/VolleyError;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/volley/VolleyError;

    iget-object v2, v2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_f

    .line 930
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/volley/VolleyError;

    iget-object v2, v2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 931
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/volley/VolleyError;

    iget-object v3, v3, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v2, :cond_e

    const-string v4, "NDC-MSG-SIG"

    .line 935
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v2, v10

    .line 938
    :goto_5
    invoke-direct {v1, v3, v2}, Lcom/narvii/util/http/ApiService$WrappedRequest;->verifySig([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 940
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    .line 941
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    .line 943
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_f

    .line 944
    move-object/from16 v17, v2

    check-cast v17, Lcom/narvii/app/NVActivity;

    iget-object v2, v9, Lcom/narvii/model/api/ApiResponse;->url:Ljava/lang/String;

    iget-object v3, v9, Lcom/narvii/model/api/ApiResponse;->deeplink:Ljava/lang/String;

    iget-object v4, v9, Lcom/narvii/model/api/ApiResponse;->title:Ljava/lang/String;

    iget-object v5, v9, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    iget-object v6, v9, Lcom/narvii/model/api/ApiResponse;->okButtonText:Ljava/lang/String;

    iget-object v7, v9, Lcom/narvii/model/api/ApiResponse;->cancelButtonText:Ljava/lang/String;

    iget-boolean v8, v9, Lcom/narvii/model/api/ApiResponse;->noCancelButton:Z

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    invoke-virtual/range {v17 .. v24}, Lcom/narvii/app/NVActivity;->handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_f
    :goto_6
    if-eqz v9, :cond_12

    .line 950
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v3, 0xe6

    if-ne v2, v3, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    const-string v3, "_error_230"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v2, v2, Lcom/narvii/util/http/ApiRequest;->silent:Z

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget v2, v2, Lcom/narvii/util/http/ApiRequest;->method:I

    if-eq v2, v12, :cond_10

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v2, v2, Lcom/narvii/util/http/ApiRequest;->userInteraction:Z

    if-eqz v2, :cond_12

    .line 951
    :cond_10
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getCid()I

    move-result v2

    if-ne v2, v15, :cond_11

    .line 953
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    :cond_11
    if-lez v2, :cond_12

    .line 957
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 958
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 960
    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_12

    .line 961
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->handleCommunityNotJoined(I)V

    .line 966
    :cond_12
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_13

    .line 967
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 969
    :cond_13
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v9, :cond_14

    iget v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    goto :goto_7

    :cond_14
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    :goto_7
    move v4, v0

    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    iget-object v8, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 972
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFail() throws "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    if-eqz v9, :cond_15

    .line 975
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v2, 0x1068

    if-ne v0, v2, :cond_15

    .line 976
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 978
    :cond_15
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 980
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 981
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v9, :cond_16

    iget v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    goto :goto_b

    :cond_16
    iget v4, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    :goto_b
    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    iget-object v8, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/narvii/util/http/ApiSessionMonitor;->onRequestFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 988
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    .line 990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    const/16 v3, 0x64

    if-eqz v2, :cond_18

    const-string v2, "error in "

    .line 992
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 993
    :cond_18
    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    if-ge v2, v3, :cond_19

    .line 994
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_19
    const-string v4, "kb in "

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_1a

    const-string v2, "0."

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 998
    :cond_1a
    div-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :goto_c
    iget-wide v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    const-wide/16 v6, 0xa

    const-string v2, "ms"

    cmp-long v8, v4, v6

    if-gez v8, :cond_1b

    .line 1001
    iget-wide v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1003
    :cond_1b
    iget-wide v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    if-eqz v9, :cond_1c

    .line 1007
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-lez v2, :cond_1c

    const-string v2, ", code="

    .line 1008
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v2, ") "

    .line 1011
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_1d

    const/16 v2, 0x20

    .line 1013
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1015
    :cond_1d
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    iget-object v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v4, v4, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v2, v2, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-eqz v2, :cond_1e

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1021
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :goto_f
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1f

    .line 1026
    :try_start_2
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "__debug"

    invoke-virtual {v0, v4, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    iget-object v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v4, :cond_1f

    const-string v4, "verboseLog"

    invoke-interface {v0, v4, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1028
    new-instance v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v5, v5, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-static {v2, v14, v0}, Lcom/narvii/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    nop

    :cond_1f
    :goto_10
    if-eqz v9, :cond_22

    .line 1036
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v0, v0, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-nez v0, :cond_22

    .line 1037
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-lez v0, :cond_20

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_20
    iget-object v0, v9, Lcom/narvii/model/api/ApiResponse;->debugInfo:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debuginfo="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/narvii/model/api/ApiResponse;->debugInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_21
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-ne v0, v3, :cond_24

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 1044
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    .line 1045
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1048
    :cond_22
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_24

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v3, v3, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-nez v3, :cond_24

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_23
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1056
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget v3, v3, Lcom/narvii/util/http/ApiRequest;->method:I

    if-eqz v3, :cond_27

    if-eq v3, v12, :cond_26

    if-eq v3, v2, :cond_25

    goto :goto_13

    :cond_25
    const-string v10, "DELETE"

    goto :goto_13

    :cond_26
    const-string v10, "POST"

    goto :goto_13

    :cond_27
    const-string v10, "GET"

    :goto_13
    const/4 v2, 0x2

    const-string v3, "v"

    .line 1068
    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "method"

    .line 1069
    invoke-virtual {v0, v2, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1070
    iget-wide v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-string v4, "duration"

    invoke-virtual {v0, v4, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1073
    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    if-lez v2, :cond_28

    move v15, v2

    goto :goto_14

    .line 1075
    :cond_28
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 1076
    instance-of v3, v2, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_29

    const/4 v15, -0x2

    goto :goto_14

    .line 1078
    :cond_29
    instance-of v3, v2, Lcom/android/volley/NoConnectionError;

    if-eqz v3, :cond_2a

    const/4 v15, -0x3

    goto :goto_14

    .line 1080
    :cond_2a
    instance-of v2, v2, Lcom/android/volley/NetworkError;

    if-eqz v2, :cond_2b

    const/4 v15, -0x4

    :cond_2b
    :goto_14
    const-string v2, "status"

    .line 1088
    invoke-virtual {v0, v2, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1090
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraInfo(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->reqId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->reqId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1094
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v2, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    if-eqz v2, :cond_2c

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_2c

    .line 1095
    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2c
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public getBody()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 571
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_a

    instance-of v3, v1, Lorg/json/JSONObject;

    if-nez v3, :cond_a

    instance-of v3, v1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 579
    :cond_1
    instance-of v3, v1, [B

    if-eqz v3, :cond_2

    .line 580
    check-cast v1, [B

    return-object v1

    .line 581
    :cond_2
    instance-of v3, v1, Ljava/io/File;

    const-string v4, "api"

    if-nez v3, :cond_4

    instance-of v1, v1, Ljava/io/InputStream;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 615
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 616
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 619
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeMultiPartBytes(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 626
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "multi part exception"

    .line 621
    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    return-object v2

    :goto_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 625
    throw v0

    .line 587
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_6

    .line 588
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v5, v7

    if-lez v1, :cond_5

    .line 613
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v2

    .line 592
    :cond_5
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    goto :goto_2

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 595
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    .line 598
    :goto_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_7

    goto :goto_3

    :cond_7
    const-wide/16 v5, 0x1000

    :goto_3
    long-to-int v3, v5

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 602
    :goto_4
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    const/4 v6, 0x0

    .line 603
    invoke-virtual {v1, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 606
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 613
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_5
    const-string v3, "file too large to process"

    .line 611
    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 613
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 628
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported request body "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_4
    move-exception v0

    move-object v1, v2

    .line 608
    :goto_6
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to read content from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v5, v5, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 613
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v2

    :catchall_3
    move-exception v0

    move-object v2, v1

    :goto_7
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 614
    throw v0

    .line 574
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    sget-object v1, Lcom/narvii/util/deviceid/DeviceIDService;->pendingDeviceIdPlaceholder:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 576
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v2}, Lcom/narvii/util/http/ApiService;->access$000(Lcom/narvii/util/http/ApiService;)Lcom/narvii/util/deviceid/DeviceIDService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_b
    sget-object v1, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 469
    :cond_0
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v0, "text/plain; charset=utf-8"

    return-object v0

    .line 476
    :cond_2
    instance-of v1, v0, [B

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/io/File;

    if-nez v1, :cond_4

    instance-of v0, v0, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 480
    :cond_3
    invoke-super {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "application/octet-stream"

    return-object v0

    :cond_5
    :goto_1
    const-string v0, "application/json; charset=utf-8"

    return-object v0
.end method

.method public getFixedLengthStreaming()I
    .locals 6

    .line 634
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->countMultiPartBytes()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->multiPartContentLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v2, v0, Ljava/io/File;

    const/16 v3, 0x1000

    if-eqz v2, :cond_2

    .line 642
    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 645
    :cond_2
    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_5

    .line 646
    check-cast v0, Ljava/io/InputStream;

    .line 648
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-le v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :catch_1
    :cond_5
    return v1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v1, :cond_1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NDCAUTH"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$000(Lcom/narvii/util/http/ApiService;)Lcom/narvii/util/deviceid/DeviceIDService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NDCDEVICEID"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$100(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$100(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AUID"

    .line 427
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$200(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$200(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NDCLANG"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$300(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->access$300(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/NameValuePair;

    .line 438
    invoke-virtual {v1}, Lcom/narvii/util/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/narvii/util/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v0, "NDC-MSG-SIG"

    .line 441
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget v3, v1, Lcom/narvii/util/http/ApiRequest;->method:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v3, v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v3, :cond_6

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 443
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "timestamp"

    if-eqz v1, :cond_7

    .line 444
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_2

    .line 446
    :cond_7
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 448
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getBody()[B

    move-result-object v1

    .line 449
    iget-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v3}, Lcom/narvii/util/http/ApiService;->access$400(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v4}, Lcom/narvii/util/http/ApiService;->access$500(Lcom/narvii/util/http/ApiService;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/narvii/util/NativeHelper;->S([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "api"

    const-string v3, "fail to calc signature"

    .line 452
    invoke-static {v1, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :cond_8
    :goto_3
    return-object v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 408
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 409
    sget-object v1, Lcom/narvii/util/deviceid/DeviceIDService;->pendingDeviceIdPlaceholder:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 410
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-static {v2}, Lcom/narvii/util/http/ApiService;->access$000(Lcom/narvii/util/http/ApiService;)Lcom/narvii/util/deviceid/DeviceIDService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget v1, v1, Lcom/narvii/util/http/ApiRequest;->verify:I

    if-lez v1, :cond_1

    .line 775
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "NDC-MSG-SIG"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 776
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {p0, v2, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->verifySig([BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 777
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v4, v4, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, " (NO-SIG)"

    goto :goto_0

    :cond_0
    const-string v1, " (VERIFY)"

    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 781
    iget-wide v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 782
    iget-wide v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    :cond_2
    if-eqz p1, :cond_3

    .line 784
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 785
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v4, "X-Request-Id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->reqId:Ljava/lang/String;

    .line 787
    :cond_3
    iget v3, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 788
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    .line 789
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v3, v3

    :goto_1
    iput v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    .line 790
    iget-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget v5, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 791
    invoke-direct {p0, v6}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 790
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 792
    :try_start_1
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 793
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    .line 795
    :goto_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 796
    new-instance p1, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    goto :goto_3

    .line 799
    :cond_5
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v1

    .line 800
    :cond_6
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 803
    :goto_3
    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeMultiPartBytes(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I

    return-void
.end method

.method public writeOutputStream(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    instance-of v1, v0, Lcom/narvii/util/http/PostProgressListener;

    if-eqz v1, :cond_0

    .line 660
    new-instance v1, Lcom/narvii/util/http/ApiService$CallPostProgress;

    check-cast v0, Lcom/narvii/util/http/PostProgressListener;

    iget v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->multiPartContentLength:I

    invoke-direct {v1, v0, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    iput-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeMultiPartBytes(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/16 v4, 0x1000

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 664
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    instance-of v6, v1, Lcom/narvii/util/http/PostProgressListener;

    if-eqz v6, :cond_2

    .line 665
    new-instance v6, Lcom/narvii/util/http/ApiService$CallPostProgress;

    check-cast v1, Lcom/narvii/util/http/PostProgressListener;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-direct {v6, v1, v0}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    iput-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    :cond_2
    new-array v0, v4, [B

    .line 670
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v4, v4, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 672
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 673
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 676
    :cond_4
    invoke-virtual {p1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v6

    .line 678
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz v6, :cond_3

    .line 679
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {v6, v4, v5}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    goto :goto_0

    .line 682
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz p1, :cond_6

    .line 683
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {p1, v4, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 687
    throw p1

    .line 688
    :cond_7
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_d

    .line 689
    check-cast v0, Ljava/io/InputStream;

    .line 690
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 691
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    instance-of v7, v6, Lcom/narvii/util/http/PostProgressListener;

    if-eqz v7, :cond_8

    .line 692
    new-instance v7, Lcom/narvii/util/http/ApiService$CallPostProgress;

    check-cast v6, Lcom/narvii/util/http/PostProgressListener;

    invoke-direct {v7, v6, v1}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    iput-object v7, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    :cond_8
    new-array v4, v4, [B

    .line 697
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x0

    .line 699
    :cond_9
    :goto_2
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v3, :cond_b

    .line 700
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    .line 703
    :cond_a
    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v6

    .line 705
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz v6, :cond_9

    .line 706
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {v6, v1, v5}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    goto :goto_2

    .line 709
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    if-eqz p1, :cond_c

    .line 710
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 713
    :cond_c
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_4
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 714
    throw p1

    .line 716
    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported body type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
