.class Lcom/narvii/adapter/FragmentGalleryAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FragmentGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter;
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
.field final synthetic this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/FragmentGalleryAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

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

    .line 118
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    iget-boolean p3, p2, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 119
    invoke-static {p2, p3}, Lcom/narvii/adapter/FragmentGalleryAdapter;->access$002(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 120
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    invoke-virtual {p2, p1, p4, p5}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p3, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter$2;Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    iput-object p3, p2, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
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

    .line 100
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    iget-boolean v1, v0, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->access$002(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 102
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter$2;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    iput-object v1, v0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
