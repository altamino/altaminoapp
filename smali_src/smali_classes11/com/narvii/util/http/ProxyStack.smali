.class public Lcom/narvii/util/http/ProxyStack;
.super Lcom/narvii/volley/HurlExtStack;
.source "SourceFile"


# instance fields
.field cnProxy:Ljava/net/Proxy;

.field context:Lcom/narvii/app/NVContext;

.field isCn:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/volley/HurlExtStack;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/http/ProxyStack;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/volley/HurlExtStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isCn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/http/ProxyStack;->isCn:Z

    return v0
.end method
