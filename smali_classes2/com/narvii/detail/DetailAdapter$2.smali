.class Lcom/narvii/detail/DetailAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$2;->this$0:Lcom/narvii/detail/DetailAdapter;

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

    .line 416
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$2;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/narvii/detail/DetailAdapter;->access$002(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 417
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$2;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p2, p1, p4, p5}, Lcom/narvii/detail/DetailAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    check-cast p2, Lcom/narvii/model/api/ObjectResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$2;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/detail/DetailAdapter;->access$002(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 409
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$2;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method
