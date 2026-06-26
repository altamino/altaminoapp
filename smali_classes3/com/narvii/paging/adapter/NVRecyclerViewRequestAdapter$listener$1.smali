.class public final Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NVRecyclerViewRequestAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

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

    .line 28
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 29
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 30
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    invoke-virtual {p2, p1, p4, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 23
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 24
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
