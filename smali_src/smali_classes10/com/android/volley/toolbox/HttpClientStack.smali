.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    .line 6
    return-void
.end method

.method static createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "Content-Type"

    .line 7
    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p1, "Unknown request method."

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    .line 19
    :pswitch_0
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 37
    return-object p1

    .line 38
    .line 39
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpTrace;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    .line 47
    return-object p1

    .line 48
    .line 49
    :pswitch_2
    new-instance p1, Lorg/apache/http/client/methods/HttpOptions;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    .line 57
    return-object p1

    .line 58
    .line 59
    :pswitch_3
    new-instance p1, Lorg/apache/http/client/methods/HttpHead;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 67
    return-object p1

    .line 68
    .line 69
    :pswitch_4
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 77
    return-object p1

    .line 78
    .line 79
    :pswitch_5
    new-instance p1, Lorg/apache/http/client/methods/HttpPut;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 97
    return-object p1

    .line 98
    .line 99
    :pswitch_6
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 117
    return-object p1

    .line 118
    .line 119
    :pswitch_7
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 127
    return-object p1

    .line 128
    .line 129
    .line 130
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBody()[B

    .line 131
    move-result-object p1

    .line 132
    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 158
    return-object v1

    .line 159
    .line 160
    :cond_0
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 168
    return-object p1

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 15
    :cond_0
    return-void
.end method

.method private static setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    .line 25
    move-result p1

    .line 26
    .line 27
    const/16 v1, 0x1388

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
