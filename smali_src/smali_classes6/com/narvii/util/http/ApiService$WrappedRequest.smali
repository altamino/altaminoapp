.class Lcom/narvii/util/http/ApiService$WrappedRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"

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

.field resend105Response:Lcom/narvii/model/api/ApiResponse;

.field resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

.field statusCode:I

.field final synthetic this$0:Lcom/narvii/util/http/ApiService;


# direct methods
.method public constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->method()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiService;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, p1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    move-result-wide v0

    .line 27
    neg-long v0, v0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->method()I

    .line 33
    move-result p1

    .line 34
    const/4 p3, 0x0

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, p3

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->timeout()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-gtz v0, :cond_2

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/16 p1, 0x1770

    .line 50
    :goto_1
    move v0, p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_1
    const/16 p1, 0x3a98

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->retry()Ljava/lang/Integer;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest;->retry()Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result p1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move p1, p3

    .line 71
    .line 72
    :goto_3
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    .line 73
    .line 74
    const/high16 v1, 0x3f000000    # 0.5f

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v0, p1, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 81
    .line 82
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    new-instance p1, Ljava/lang/Exception;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    new-instance p2, Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    iput-object p2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    .line 101
    array-length p2, p1

    .line 102
    .line 103
    :goto_4
    if-ge p3, p2, :cond_5

    .line 104
    .line 105
    aget-object v0, p1, p3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    const-string v2, "com.narvii.util.http.ApiService"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/narvii/util/http/ApiService$WrappedRequest;Lcom/narvii/util/http/ApiService$WrappedRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->lambda$deliverResponse$0(Lcom/narvii/util/http/ApiService$WrappedRequest;)V

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

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "Date"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->syncTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/util/http/NameValuePair;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v3, v1}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-object v0

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method private synthetic lambda$deliverResponse$0(Lcom/narvii/util/http/ApiService$WrappedRequest;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 8
    return-void
.end method

.method private parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;
    .locals 5

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 3
    .line 4
    const-string v1, "Content-Type"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "text/html"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    aget-byte v0, v0, v1

    .line 25
    .line 26
    const/16 v1, 0x3c

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 31
    .line 32
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "utf-8"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    new-instance v1, Ljava/lang/Exception;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    iget-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    .line 64
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    sget v4, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, " ("

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, " "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string p1, ")"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    return-object v1

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    const/4 p1, 0x0

    .line 111
    return-object p1
.end method

.method private shouldSendNewKeys(Lcom/narvii/model/api/ApiResponse;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiService;->n()[Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RESEND_PUBLIC_KEY_TAG:Ljava/lang/Object;

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Ly/e;->o()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private updateJsonBodyAndSignatureHeaders(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    :try_start_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "timestamp"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    :try_start_1
    move-object v1, p1

    .line 11
    .line 12
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    .line 21
    if-eqz p4, :cond_1

    .line 22
    move-object v1, p1

    .line 23
    .line 24
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/io/File;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/narvii/util/FileUtils;->writeJsonObjectToFile(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/io/File;)V

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    :cond_0
    move-object v1, p1

    .line 39
    .line 40
    check-cast v1, Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    const-string/jumbo v3, "uid"

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    :try_start_2
    move-object v2, p1

    .line 72
    .line 73
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 77
    .line 78
    if-eqz p4, :cond_3

    .line 79
    .line 80
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/io/File;

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v1}, Lcom/narvii/util/FileUtils;->writeJsonObjectToFile(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/io/File;)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_2
    check-cast p1, Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    goto :goto_3

    .line 99
    .line 100
    sget-object p1, La0/a;->k:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    .line 106
    if-nez v1, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getBody()[B

    .line 110
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .line 112
    :try_start_3
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 115
    .line 116
    const-string v3, "keystore"

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    check-cast v2, Lcom/narvii/security/KeyStoreService;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/narvii/security/KeyStoreService;->keyAlias()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Ly/e;->q([BLjava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    goto :goto_2

    .line 139
    :catch_1
    move-exception p1

    .line 140
    .line 141
    :try_start_4
    const-string v1, "fail to calc KPU signature"

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    const-string p1, "security/public_key"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 156
    move-result p1

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    const/4 p1, 0x0

    .line 160
    .line 161
    sput-boolean p1, Lcom/narvii/util/http/ApiService;->sendingPublicKeyInProgress:Z

    .line 162
    .line 163
    :cond_5
    :goto_3
    sget-object p1, La0/a;->j:Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 167
    move-result p3

    .line 168
    .line 169
    if-nez p3, :cond_6

    .line 170
    .line 171
    if-nez p4, :cond_6

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getBody()[B

    .line 175
    move-result-object p3

    .line 176
    .line 177
    iget-object p4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 178
    .line 179
    .line 180
    invoke-static {p4}, Lcom/narvii/util/http/ApiService;->e(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    .line 181
    move-result-object p4

    .line 182
    .line 183
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Lcom/narvii/util/http/ApiService;->f(Lcom/narvii/util/http/ApiService;)I

    .line 187
    move-result v1

    .line 188
    .line 189
    .line 190
    invoke-static {p3, p4, v1}, Lc/f/b/e/q5;->f([BLjava/lang/String;I)Ljava/lang/String;

    .line 191
    move-result-object p3

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    goto :goto_5

    .line 196
    .line 197
    :goto_4
    const-string p2, "fail to calc signature"

    .line 198
    .line 199
    .line 200
    invoke-static {v0, p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_6
    :goto_5
    return-void
.end method

.method private verifySig([BLjava/lang/String;)Z
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    sget v2, Lcom/narvii/lib/R$string;->srmod:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    sget v3, Lcom/narvii/lib/R$string;->srexp:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    const-string v3, "RSA"

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    .line 44
    .line 45
    new-instance v5, Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    new-instance v1, Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v5, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 64
    move-result-object p2

    .line 65
    .line 66
    const-string v2, "SHA1WithRSA"

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2}, Ljava/security/Signature;->verify([B)Z

    .line 80
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return p1

    .line 82
    .line 83
    :catch_0
    const-string p1, "signature not valid"

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 87
    return v0
.end method

.method private writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    new-instance v0, Ljava/io/DataOutputStream;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    move-object p1, v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    move v3, v2

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v4

    .line 29
    .line 30
    if-eqz v4, :cond_9

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Lcom/narvii/util/http/ApiRequest$MultiPart;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/narvii/util/http/ApiService;->l()[B

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 44
    .line 45
    iget-object v5, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 58
    move-result-object v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    instance-of v5, v4, Lcom/narvii/util/http/ApiRequest$FormPart;

    .line 64
    .line 65
    const-string v6, "\""

    .line 66
    .line 67
    const-string v7, "Content-Disposition: form-data; name=\""

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 95
    move-result-object v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 102
    move-result-object v5

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 113
    .line 114
    check-cast v4, Lcom/narvii/util/http/ApiRequest$FormPart;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$FormPart;->getData()[B

    .line 118
    move-result-object v4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 125
    move-result-object v4

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_2
    instance-of v5, v4, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 132
    .line 133
    if-eqz v5, :cond_1

    .line 134
    move-object v5, v4

    .line 135
    .line 136
    check-cast v5, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 137
    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v4, "\"; filename=\""

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$FilePart;->getFile()Ljava/io/File;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 178
    move-result-object v4

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 185
    move-result-object v4

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 192
    move-result-object v4

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$FilePart;->getFile()Ljava/io/File;

    .line 199
    move-result-object v4

    .line 200
    .line 201
    if-eqz v4, :cond_1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 205
    move-result v5

    .line 206
    .line 207
    if-nez v5, :cond_3

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_3
    if-eqz p2, :cond_4

    .line 212
    int-to-long v5, v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 216
    move-result-wide v7

    .line 217
    add-long/2addr v5, v7

    .line 218
    long-to-int v2, v5

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :cond_4
    const/16 v5, 0x1000

    .line 222
    .line 223
    new-array v5, v5, [B

    .line 224
    .line 225
    new-instance v6, Ljava/io/FileInputStream;

    .line 226
    .line 227
    .line 228
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 232
    move-result v4

    .line 233
    const/4 v7, -0x1

    .line 234
    const/4 v8, 0x1

    .line 235
    .line 236
    if-eq v4, v7, :cond_7

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 240
    move-result v7

    .line 241
    .line 242
    if-eqz v7, :cond_6

    .line 243
    goto :goto_2

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {p1, v5, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 247
    add-int/2addr v3, v4

    .line 248
    .line 249
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 250
    .line 251
    if-eqz v4, :cond_5

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v3, v8}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    .line 255
    goto :goto_1

    .line 256
    :catchall_0
    move-exception p1

    .line 257
    goto :goto_4

    .line 258
    .line 259
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 260
    .line 261
    if-eqz v4, :cond_8

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v3, v8}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .line 266
    .line 267
    :cond_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 268
    .line 269
    .line 270
    :goto_3
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 271
    move-result-object v4

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    .line 279
    :goto_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 280
    throw p1

    .line 281
    .line 282
    .line 283
    :cond_9
    invoke-static {}, Lcom/narvii/util/http/ApiService;->l()[B

    .line 284
    move-result-object v0

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 288
    .line 289
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 295
    move-result-object v0

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lcom/narvii/util/http/ApiService;->l()[B

    .line 302
    move-result-object v0

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Lcom/narvii/util/http/ApiService;->k()[B

    .line 309
    move-result-object v0

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 313
    .line 314
    if-eqz p2, :cond_a

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 318
    .line 319
    :cond_a
    if-eqz p2, :cond_b

    .line 320
    .line 321
    instance-of p2, p1, Ljava/io/DataOutputStream;

    .line 322
    .line 323
    if-eqz p2, :cond_b

    .line 324
    .line 325
    check-cast p1, Ljava/io/DataOutputStream;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    .line 329
    move-result p1

    .line 330
    add-int/2addr p1, v2

    .line 331
    return p1

    .line 332
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

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v1, "X-Request-Id"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->reqId:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    move v2, v1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iget v2, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 45
    .line 46
    :goto_0
    iput v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    move-object v0, v2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_3
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    :goto_1
    iput-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_4
    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 67
    .line 68
    if-nez v3, :cond_5

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    array-length v1, v3

    .line 71
    .line 72
    :goto_2
    iput v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 75
    .line 76
    const/16 v3, 0x1f6

    .line 77
    .line 78
    if-ne v1, v3, :cond_6

    .line 79
    .line 80
    new-instance p1, Ljava/lang/Exception;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    sget v1, Lcom/narvii/lib/R$string;->api_request_502:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_6
    const/16 v3, 0x1ff

    .line 103
    .line 104
    if-ne v1, v3, :cond_7

    .line 105
    .line 106
    new-instance p1, Lcom/android/volley/NetworkError;

    .line 107
    .line 108
    .line 109
    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 112
    goto :goto_3

    .line 113
    .line 114
    :cond_7
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiResponseListener;->parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;

    .line 126
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :catch_0
    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 136
    .line 137
    .line 138
    :cond_8
    :goto_3
    invoke-virtual {p0, v2}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    .line 139
    return-void
.end method

.method protected deliverResponse(Lcom/narvii/model/api/ApiResponse;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService$CallPostProgress;->cancel()V

    iput-object v10, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    :cond_0
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend105Response:Lcom/narvii/model/api/ApiResponse;

    if-nez v0, :cond_3

    if-eqz v9, :cond_3

    .line 3
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v2, 0x69

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    sget-object v2, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 4
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v9, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend105Response:Lcom/narvii/model/api/ApiResponse;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 5
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 6
    iget-object v3, v2, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-static {v2, v0}, Lcom/narvii/util/http/ApiService;->h(Lcom/narvii/util/http/ApiService;Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_1
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 7
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 8
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

    if-nez v0, :cond_5

    if-eqz v9, :cond_5

    .line 9
    invoke-direct/range {p0 .. p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->shouldSendNewKeys(Lcom/narvii/model/api/ApiResponse;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v9, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 10
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 11
    new-instance v2, Lcom/narvii/util/http/b;

    invoke-direct {v2, v1}, Lcom/narvii/util/http/b;-><init>(Lcom/narvii/util/http/ApiService$WrappedRequest;)V

    invoke-static {v0, v2}, Lcom/narvii/util/http/ApiService;->i(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;)V

    :cond_4
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 12
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string v11, " in context "

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "api"

    if-eqz v9, :cond_9

    .line 13
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-nez v0, :cond_9

    :try_start_0
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_6

    .line 14
    iget-object v2, v0, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object v2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    invoke-virtual {v2, v0, v9}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 16
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiSessionMonitor;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 18
    invoke-interface {v2, v3, v9}, Lcom/narvii/util/http/ApiSessionMonitor;->onRequestFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    move-object v0, v10

    move v2, v12

    goto :goto_5

    .line 19
    :goto_2
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

    .line 20
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_8

    .line 21
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

    goto :goto_3

    :cond_8
    iput-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    :goto_3
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v2, v13

    goto :goto_5

    :cond_9
    move-object v0, v10

    goto :goto_4

    :goto_5
    const/4 v15, -0x1

    if-nez v2, :cond_1a

    if-nez v0, :cond_a

    if-eqz v9, :cond_a

    .line 23
    iget-object v0, v9, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    :cond_a
    if-nez v0, :cond_b

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 24
    instance-of v2, v2, Lcom/android/volley/TimeoutError;

    if-eqz v2, :cond_b

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 25
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_timeout:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_c

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 26
    instance-of v2, v2, Lcom/android/volley/NoConnectionError;

    if-eqz v2, :cond_c

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 27
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_no_connection:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_d

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 28
    instance-of v2, v2, Lcom/android/volley/NetworkError;

    if-eqz v2, :cond_d

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 29
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_network:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_d
    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v2, :cond_e

    if-eqz v0, :cond_e

    if-nez v9, :cond_e

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_f

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 33
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->api_request_fail:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object/from16 v16, v0

    const-string/jumbo v0, "topActivity"

    if-eqz v9, :cond_12

    .line 34
    :try_start_1
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 35
    instance-of v3, v2, Lcom/android/volley/VolleyError;

    if-eqz v3, :cond_12

    move-object v3, v2

    check-cast v3, Lcom/android/volley/VolleyError;

    iget-object v3, v3, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v3, :cond_12

    .line 36
    move-object v3, v2

    check-cast v3, Lcom/android/volley/VolleyError;

    iget-object v3, v3, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 37
    check-cast v2, Lcom/android/volley/VolleyError;

    iget-object v2, v2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_11

    .line 38
    sget-object v4, La0/a;->j:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_11
    move-object v3, v10

    .line 39
    :goto_6
    invoke-direct {v1, v2, v3}, Lcom/narvii/util/http/ApiService$WrappedRequest;->verifySig([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 40
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    .line 41
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    .line 42
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_12

    .line 43
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

    :cond_12
    if-eqz v9, :cond_15

    .line 44
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v3, 0xe6

    if-ne v2, v3, :cond_15

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v2, :cond_15

    const-string v3, "_error_230"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_15

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-boolean v3, v2, Lcom/narvii/util/http/ApiRequest;->silent:Z

    if-nez v3, :cond_15

    iget v3, v2, Lcom/narvii/util/http/ApiRequest;->method:I

    if-eq v3, v12, :cond_13

    iget-boolean v3, v2, Lcom/narvii/util/http/ApiRequest;->userInteraction:Z

    if-eqz v3, :cond_15

    .line 45
    :cond_13
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getCid()I

    move-result v2

    if-ne v2, v15, :cond_14

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 46
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    :cond_14
    if-lez v2, :cond_15

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 47
    iget-object v3, v3, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_15

    .line 50
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->handleCommunityNotJoined(I)V

    :cond_15
    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v3, :cond_16

    .line 51
    iget-object v0, v3, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    :cond_16
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-nez v9, :cond_17

    iget v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    :goto_7
    move v4, v0

    goto :goto_8

    .line 52
    :cond_17
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    goto :goto_7

    :goto_8
    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    iget-object v8, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    .line 53
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 54
    :goto_9
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

    :goto_a
    if-eqz v9, :cond_18

    .line 55
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v2, 0x1068

    if-ne v0, v2, :cond_18

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 56
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    :cond_18
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiSessionMonitor;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v9, :cond_19

    iget v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    goto :goto_c

    .line 59
    :cond_19
    iget v4, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    :goto_c
    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    iget-object v8, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/narvii/util/http/ApiSessionMonitor;->onRequestFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 60
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    const/16 v3, 0x64

    if-eqz v2, :cond_1b

    const-string v2, "error in "

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    if-ge v2, v3, :cond_1c

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1c
    const-string v4, "kb in "

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_1d

    const-string v2, "0."

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 66
    :cond_1d
    div-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    iget-wide v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    const-wide/16 v6, 0xa

    cmp-long v2, v4, v6

    const-string v4, "ms"

    if-gez v2, :cond_1e

    iget-wide v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 67
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1e
    iget-wide v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 68
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    if-eqz v9, :cond_1f

    .line 70
    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-lez v2, :cond_1f

    const-string v2, ", code="

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v2, ") "

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_20

    const/16 v2, 0x20

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_20
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 76
    iget-object v4, v4, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 78
    iget-boolean v2, v2, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-eqz v2, :cond_21

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 80
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_10
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_22

    :try_start_2
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 82
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "__debug"

    invoke-virtual {v0, v4, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 83
    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v4, :cond_22

    const-string/jumbo v4, "verboseLog"

    invoke-interface {v0, v4, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v5, v5, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v2, v14, v0}, Lcom/narvii/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_22
    if-eqz v9, :cond_25

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 86
    iget-boolean v0, v0, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-nez v0, :cond_25

    .line 87
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-lez v0, :cond_23

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/narvii/model/api/ApiResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_23
    iget-object v0, v9, Lcom/narvii/model/api/ApiResponse;->debugInfo:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debuginfo="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/narvii/model/api/ApiResponse;->debugInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_24
    iget v0, v9, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-ne v0, v3, :cond_27

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->execStackTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 94
    iget-boolean v3, v3, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    if-nez v3, :cond_27

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_26
    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v14, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_27
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string/jumbo v3, "url"

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 98
    iget v3, v3, Lcom/narvii/util/http/ApiRequest;->method:I

    if-eqz v3, :cond_2a

    if-eq v3, v12, :cond_29

    if-eq v3, v2, :cond_28

    goto :goto_13

    :cond_28
    const-string v10, "DELETE"

    goto :goto_13

    :cond_29
    const-string v10, "POST"

    goto :goto_13

    :cond_2a
    const-string v10, "GET"

    :goto_13
    const-string/jumbo v2, "v"

    const/4 v3, 0x2

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "method"

    .line 100
    invoke-virtual {v0, v2, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "duration"

    iget-wide v3, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 101
    invoke-virtual {v0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    if-lez v2, :cond_2b

    move v15, v2

    goto :goto_14

    :cond_2b
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_2e

    .line 102
    instance-of v3, v2, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_2c

    const/4 v15, -0x2

    goto :goto_14

    .line 103
    :cond_2c
    instance-of v3, v2, Lcom/android/volley/NoConnectionError;

    if-eqz v3, :cond_2d

    const/4 v15, -0x3

    goto :goto_14

    .line 104
    :cond_2d
    instance-of v2, v2, Lcom/android/volley/NetworkError;

    if-eqz v2, :cond_2e

    const/4 v15, -0x4

    :cond_2e
    :goto_14
    const-string v2, "status"

    .line 105
    invoke-virtual {v0, v2, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 106
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

    iget-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 107
    iget-boolean v2, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    if-eqz v2, :cond_2f

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_2f

    .line 108
    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    return-object v2

    .line 9
    .line 10
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    .line 11
    .line 12
    if-nez v3, :cond_a

    .line 13
    .line 14
    instance-of v3, v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    if-nez v3, :cond_a

    .line 17
    .line 18
    instance-of v3, v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_1
    instance-of v3, v1, [B

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    check-cast v1, [B

    .line 29
    return-object v1

    .line 30
    .line 31
    :cond_2
    instance-of v3, v1, Ljava/io/File;

    .line 32
    .line 33
    const-string v4, "api"

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    instance-of v3, v1, Ljava/io/InputStream;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_9

    .line 47
    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .line 53
    new-instance v1, Ljava/io/DataOutputStream;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeMultiPartBytes(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .line 72
    :try_start_1
    const-string v3, "multi part exception"

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 79
    return-object v2

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 83
    throw v0

    .line 84
    .line 85
    :cond_4
    :goto_1
    :try_start_2
    instance-of v0, v1, Ljava/io/File;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    check-cast v1, Ljava/io/File;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 93
    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    const-wide/32 v7, 0x7fffffff

    .line 97
    .line 98
    cmp-long v0, v5, v7

    .line 99
    .line 100
    if-lez v0, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 104
    return-object v2

    .line 105
    .line 106
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    :catch_1
    move-exception v0

    .line 115
    move-object v1, v2

    .line 116
    goto :goto_5

    .line 117
    :catch_2
    move-exception v0

    .line 118
    move-object v1, v2

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    :cond_6
    move-object v0, v1

    .line 122
    .line 123
    check-cast v0, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 127
    move-result v1

    .line 128
    int-to-long v5, v1

    .line 129
    .line 130
    :goto_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 131
    .line 132
    const-wide/16 v7, 0x0

    .line 133
    .line 134
    cmp-long v3, v5, v7

    .line 135
    .line 136
    if-lez v3, :cond_7

    .line 137
    goto :goto_3

    .line 138
    .line 139
    :cond_7
    const-wide/16 v5, 0x1000

    .line 140
    :goto_3
    long-to-int v3, v5

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    .line 145
    const/16 v3, 0x1000

    .line 146
    .line 147
    new-array v3, v3, [B

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 151
    move-result v5

    .line 152
    const/4 v6, -0x1

    .line 153
    .line 154
    if-eq v5, v6, :cond_8

    .line 155
    const/4 v6, 0x0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 159
    goto :goto_4

    .line 160
    :catchall_2
    move-exception v1

    .line 161
    move-object v2, v0

    .line 162
    move-object v0, v1

    .line 163
    goto :goto_7

    .line 164
    :catch_3
    move-exception v1

    .line 165
    move-object v9, v1

    .line 166
    move-object v1, v0

    .line 167
    move-object v0, v9

    .line 168
    goto :goto_5

    .line 169
    :catch_4
    move-exception v1

    .line 170
    move-object v9, v1

    .line 171
    move-object v1, v0

    .line 172
    move-object v0, v9

    .line 173
    goto :goto_6

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 177
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 181
    return-object v1

    .line 182
    .line 183
    :goto_5
    :try_start_5
    const-string v3, "file too large to process"

    .line 184
    .line 185
    .line 186
    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 190
    .line 191
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v1, "unsupported request body "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v2

    .line 216
    :catchall_3
    move-exception v0

    .line 217
    move-object v2, v1

    .line 218
    goto :goto_7

    .line 219
    .line 220
    :goto_6
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    const-string v5, "fail to read content from "

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    iget-object v5, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 231
    .line 232
    iget-object v5, v5, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 246
    return-object v2

    .line 247
    .line 248
    .line 249
    :goto_7
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 250
    throw v0

    .line 251
    .line 252
    .line 253
    :cond_a
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    .line 257
    invoke-static {}, La0/b;->n()Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    .line 260
    .line 261
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 262
    move-result-object v2

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    sget-object v1, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 272
    move-result-object v0

    .line 273
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-object v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "text/plain; charset=utf-8"

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_2
    instance-of v1, v0, [B

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    instance-of v1, v0, Ljava/io/File;

    .line 33
    .line 34
    if-nez v1, :cond_4

    .line 35
    .line 36
    instance-of v0, v0, Ljava/io/InputStream;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-super {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    .line 46
    :cond_4
    :goto_0
    const-string v0, "application/octet-stream"

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_5
    :goto_1
    const-string v0, "application/json; charset=utf-8"

    .line 50
    return-object v0
.end method

.method public getFixedLengthStreaming()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->countMultiPartBytes()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->multiPartContentLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return v0

    .line 17
    :catch_0
    return v1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of v2, v0, Ljava/io/File;

    .line 24
    .line 25
    const/16 v3, 0x1000

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    check-cast v0, Ljava/io/File;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 33
    move-result-wide v4

    .line 34
    long-to-int v0, v4

    .line 35
    .line 36
    if-le v0, v3, :cond_1

    .line 37
    move v1, v0

    .line 38
    :cond_1
    return v1

    .line 39
    .line 40
    :cond_2
    instance-of v2, v0, Ljava/io/InputStream;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    check-cast v0, Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 54
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v0, v1

    .line 57
    .line 58
    :goto_0
    if-le v0, v3, :cond_4

    .line 59
    move v1, v0

    .line 60
    :catch_1
    :cond_4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "sid"

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    new-instance v3, Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v4, "sid="

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v2, "NDCAUTH"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    :cond_1
    sget-object v0, La0/a;->l:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->b(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->b(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    const-string v2, "AUID"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->c(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->c(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const-string v2, "NDCLANG"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->d(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->d(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    const-string v2, "Accept-Language"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v2

    .line 152
    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    check-cast v2, Lcom/narvii/util/http/NameValuePair;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/narvii/util/http/NameValuePair;->getName()Ljava/lang/String;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/narvii/util/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 174
    .line 175
    iget v2, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 176
    const/4 v4, 0x1

    .line 177
    .line 178
    if-ne v2, v4, :cond_8

    .line 179
    .line 180
    iget-object v2, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 181
    .line 182
    instance-of v5, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 183
    .line 184
    if-nez v5, :cond_7

    .line 185
    .line 186
    instance-of v5, v2, Lorg/json/JSONObject;

    .line 187
    .line 188
    if-eqz v5, :cond_6

    .line 189
    goto :goto_2

    .line 190
    .line 191
    :cond_6
    instance-of v0, v2, Ljava/io/File;

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    check-cast v2, Ljava/io/File;

    .line 196
    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 198
    .line 199
    .line 200
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 201
    .line 202
    :try_start_0
    const-class v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/narvii/util/http/ApiService$WrappedRequest;->updateJsonBodyAndSignatureHeaders(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_3

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    goto :goto_3

    .line 226
    .line 227
    .line 228
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->updateJsonBodyAndSignatureHeaders(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 233
    .line 234
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 237
    .line 238
    const-string v1, "antiFraud"

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    check-cast v0, Lcom/narvii/util/http/IAntiFraud;

    .line 245
    .line 246
    if-eqz v0, :cond_9

    .line 247
    .line 248
    sget-object v1, La0/a;->m:Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    invoke-interface {v0}, Lcom/narvii/util/http/IAntiFraud;->getDeviceId()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_9
    return-object v3
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, La0/b;->n()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 4
    .line 5
    iget v1, v1, Lcom/narvii/util/http/ApiRequest;->verify:I

    .line 6
    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v2, La0/a;->j:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v2, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->verifySig([BLjava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Ljava/lang/Exception;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    sget v5, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    const-string v1, " (NO-SIG)"

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    move-object v3, v0

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_0
    const-string v1, " (VERIFY)"

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    throw v2

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    move-result-wide v1

    .line 75
    .line 76
    iget-wide v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 77
    .line 78
    const-wide/16 v5, 0x0

    .line 79
    .line 80
    cmp-long v5, v3, v5

    .line 81
    .line 82
    if-gez v5, :cond_2

    .line 83
    add-long/2addr v3, v1

    .line 84
    .line 85
    iput-wide v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    .line 86
    .line 87
    :cond_2
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const-string v4, "X-Request-Id"

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Ljava/lang/String;

    .line 100
    .line 101
    iput-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->reqId:Ljava/lang/String;

    .line 102
    .line 103
    :cond_3
    iget v3, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 104
    .line 105
    iput v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    .line 106
    .line 107
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v3}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    iput-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->headers:Ljava/util/List;

    .line 114
    .line 115
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 116
    .line 117
    if-nez v3, :cond_4

    .line 118
    const/4 v3, 0x0

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    array-length v3, v3

    .line 121
    .line 122
    :goto_1
    iput v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->dataLen:I

    .line 123
    .line 124
    iget-object v3, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 127
    .line 128
    iget v5, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 129
    .line 130
    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v6}, Lcom/narvii/util/http/ApiService$WrappedRequest;->convertHeaders(Ljava/util/Map;)Ljava/util/List;

    .line 134
    move-result-object v6

    .line 135
    .line 136
    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    .line 140
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    :try_start_1
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    move-result-wide v4

    .line 147
    sub-long/2addr v4, v1

    .line 148
    .line 149
    iput-wide v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_4

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .line 153
    :goto_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    .line 154
    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    new-instance p1, Ljava/lang/Exception;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->this$0:Lcom/narvii/util/http/ApiService;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    sget v2, Lcom/narvii/lib/R$string;->api_request_process_fail:I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 177
    goto :goto_4

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseHtmlTitle(Lcom/android/volley/NetworkResponse;)Ljava/lang/Exception;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    if-nez p1, :cond_6

    .line 184
    goto :goto_3

    .line 185
    :cond_6
    move-object v1, p1

    .line 186
    .line 187
    :goto_3
    iput-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 188
    .line 189
    .line 190
    :goto_4
    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    .line 191
    move-result-object p1

    .line 192
    return-object p1
.end method

.method public writeMultiPartBytes(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeOrCountMultiPartBytes(Ljava/io/OutputStream;Z)I

    .line 5
    return-void
.end method

.method public writeOutputStream(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/util/http/PostProgressListener;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/util/http/PostProgressListener;

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->multiPartContentLength:I

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->writeMultiPartBytes(Ljava/io/OutputStream;)V

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 35
    .line 36
    instance-of v1, v0, Ljava/io/File;

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, -0x1

    .line 39
    .line 40
    const/16 v4, 0x1000

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 46
    .line 47
    instance-of v6, v1, Lcom/narvii/util/http/PostProgressListener;

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    new-instance v6, Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/util/http/PostProgressListener;

    .line 54
    .line 55
    check-cast v0, Ljava/io/File;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 59
    move-result-wide v7

    .line 60
    long-to-int v0, v7

    .line 61
    .line 62
    .line 63
    invoke-direct {v6, v1, v0}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    .line 64
    .line 65
    iput-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 66
    .line 67
    :cond_2
    new-array v0, v4, [B

    .line 68
    .line 69
    new-instance v1, Ljava/io/FileInputStream;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Ljava/io/File;

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    move v4, v5

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 83
    move-result v6

    .line 84
    .line 85
    if-eq v6, v3, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_4

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    add-int/2addr v4, v6

    .line 97
    .line 98
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 99
    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v4, v5}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v4, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 117
    goto :goto_5

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 121
    throw p1

    .line 122
    .line 123
    :cond_7
    instance-of v1, v0, Ljava/io/InputStream;

    .line 124
    .line 125
    if-eqz v1, :cond_d

    .line 126
    .line 127
    check-cast v0, Ljava/io/InputStream;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 131
    move-result v1

    .line 132
    .line 133
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 134
    .line 135
    instance-of v7, v6, Lcom/narvii/util/http/PostProgressListener;

    .line 136
    .line 137
    if-eqz v7, :cond_8

    .line 138
    .line 139
    new-instance v7, Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 140
    .line 141
    check-cast v6, Lcom/narvii/util/http/PostProgressListener;

    .line 142
    .line 143
    .line 144
    invoke-direct {v7, v6, v1}, Lcom/narvii/util/http/ApiService$CallPostProgress;-><init>(Lcom/narvii/util/http/PostProgressListener;I)V

    .line 145
    .line 146
    iput-object v7, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 147
    .line 148
    :cond_8
    new-array v4, v4, [B

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 152
    move v1, v5

    .line 153
    .line 154
    .line 155
    :cond_9
    :goto_3
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    .line 156
    move-result v6

    .line 157
    .line 158
    if-eq v6, v3, :cond_b

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 162
    move-result v7

    .line 163
    .line 164
    if-eqz v7, :cond_a

    .line 165
    goto :goto_4

    .line 166
    .line 167
    .line 168
    :cond_a
    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    add-int/2addr v1, v6

    .line 170
    .line 171
    iget-object v6, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 172
    .line 173
    if-eqz v6, :cond_9

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v1, v5}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V

    .line 177
    goto :goto_3

    .line 178
    :catchall_1
    move-exception p1

    .line 179
    goto :goto_6

    .line 180
    .line 181
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->callPostProgress:Lcom/narvii/util/http/ApiService$CallPostProgress;

    .line 182
    .line 183
    if-eqz p1, :cond_c

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService$CallPostProgress;->step(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    .line 188
    .line 189
    :cond_c
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 190
    :goto_5
    return-void

    .line 191
    .line 192
    .line 193
    :goto_6
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 194
    throw p1

    .line 195
    .line 196
    :cond_d
    new-instance p1, Ljava/io/IOException;

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v1, "unsupported body type "

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p1
.end method
