.class public final Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FeedRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedRequestHelper;->sendBlogDetailRequest(Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 46
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 47
    new-instance p1, Lcom/narvii/util/RequestResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 38
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 41
    new-instance p1, Lcom/narvii/util/RequestResult;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    .line 42
    iget-object p2, p0, Lcom/narvii/feed/FeedRequestHelper$sendBlogDetailRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
