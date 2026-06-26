.class public final Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SinglePageRequestDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/SinglePageRequestDataSource;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/SinglePageRequestDataSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p1, p4}, Lcom/narvii/paging/source/DataSource;->pageLoadFailed(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 38
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 1
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

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    .line 43
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p2

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p2}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    return-void
.end method
