.class Lcom/narvii/headlines/ExternalPostPreviewFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ExternalPostPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->queryFeedDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/Class;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

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

    .line 394
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 388
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    iget-object p2, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    invoke-static {p1, p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$302(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;

    .line 389
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-virtual {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    return-void
.end method
