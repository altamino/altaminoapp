.class Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

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
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->g(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 12
    const/4 p5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p5}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->i(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 18
    const/4 p5, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p5}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->h(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)V

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1, p4, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->g(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->h(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)V

    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->i(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)V

    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 6
    invoke-virtual {v1, p1, p2, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    return-void
.end method
