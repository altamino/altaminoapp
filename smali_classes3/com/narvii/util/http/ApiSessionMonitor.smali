.class public interface abstract Lcom/narvii/util/http/ApiSessionMonitor;
.super Ljava/lang/Object;
.source "ApiSessionMonitor.java"


# virtual methods
.method public abstract onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V
.end method

.method public abstract onNewRequest(Lcom/narvii/util/http/ApiRequest;)V
.end method

.method public abstract onRequestFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end method
