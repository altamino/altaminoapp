.class public final Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    .line 6
    const/4 p3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1, p4, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    .line 15
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->access$setRequest$p(Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter$listener$1;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 15
    return-void
.end method
