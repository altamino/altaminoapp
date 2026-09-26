.class public final Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/SinglePageRequestDataSource<",
            "TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/SinglePageRequestDataSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/source/SinglePageRequestDataSource<",
            "TT;TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "t"

    .line 3
    .line 4
    .line 5
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4}, Lcom/narvii/paging/source/DataSource;->pageLoadFailed(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 19
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/SinglePageRequestDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 5
    invoke-virtual {p2}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/source/SinglePageRequestDataSource$responseListener$1;->this$0:Lcom/narvii/paging/source/SinglePageRequestDataSource;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    return-void
.end method
