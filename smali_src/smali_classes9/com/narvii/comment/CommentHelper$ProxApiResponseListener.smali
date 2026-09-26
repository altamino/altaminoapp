.class Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxApiResponseListener"
.end annotation


# instance fields
.field private listener:Lcom/narvii/util/http/ApiResponseListener;

.field final synthetic this$0:Lcom/narvii/comment/CommentHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->this$0:Lcom/narvii/comment/CommentHelper;

    .line 3
    .line 4
    iget-object p1, p2, Lcom/narvii/util/http/ApiResponseListener;->clazz:Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 6
    return-void
.end method

.method public parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiResponseListener;->parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public stringBody()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiResponseListener;->stringBody()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
