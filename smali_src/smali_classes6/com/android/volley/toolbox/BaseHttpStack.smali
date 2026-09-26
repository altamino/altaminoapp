.class public abstract Lcom/android/volley/toolbox/BaseHttpStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public final performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lorg/apache/http/ProtocolVersion;

    .line 7
    .line 8
    const-string v0, "HTTP"

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v0, v1, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 18
    move-result v1

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 24
    .line 25
    new-instance p2, Lorg/apache/http/message/BasicHttpResponse;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Lcom/android/volley/Header;

    .line 54
    .line 55
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v1

    .line 75
    .line 76
    new-array v1, v1, [Lorg/apache/http/Header;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, [Lorg/apache/http/Header;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    .line 103
    move-result p1

    .line 104
    int-to-long v2, p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 111
    :cond_1
    return-object p2
.end method
