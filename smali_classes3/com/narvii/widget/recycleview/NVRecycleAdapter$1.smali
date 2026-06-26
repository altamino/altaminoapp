.class Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NVRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/NVRecycleAdapter;
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
.field final synthetic this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

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

    .line 309
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 310
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-static {p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$000(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z

    move-result p2

    .line 311
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 p5, 0x0

    invoke-static {p3, p5}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$102(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 312
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 p5, 0x0

    invoke-static {p3, p5}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$002(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)Z

    .line 313
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {p3, p1, p4, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 3
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

    .line 300
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 301
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$000(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$002(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)Z

    .line 303
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->access$102(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 304
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    return-void
.end method
