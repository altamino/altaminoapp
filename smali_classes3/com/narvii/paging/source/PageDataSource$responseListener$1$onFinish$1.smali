.class final Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;
.super Ljava/lang/Object;
.source "PageDataSource.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/PageDataSource$responseListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/paging/source/DataSourceRefreshListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $dir:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;->$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 1

    .line 416
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;->$dir:I

    invoke-interface {p1, v0}, Lcom/narvii/paging/source/DataSourceRefreshListener;->onRefreshFinishedBeforePageResponse(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 405
    check-cast p1, Lcom/narvii/paging/source/DataSourceRefreshListener;

    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/PageDataSource$responseListener$1$onFinish$1;->call(Lcom/narvii/paging/source/DataSourceRefreshListener;)V

    return-void
.end method
