.class public Lcom/narvii/util/http/ProxyStack;
.super Lcom/narvii/volley/HurlExtStack;
.source "ProxyStack.java"


# instance fields
.field cnProxy:Ljava/net/Proxy;

.field context:Lcom/narvii/app/NVContext;

.field isCn:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/volley/HurlExtStack;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/util/http/ProxyStack;->context:Lcom/narvii/app/NVContext;

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

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/volley/HurlExtStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public isCn()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/narvii/util/http/ProxyStack;->isCn:Z

    return v0
.end method
