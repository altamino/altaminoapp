.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "HeadlineChannelEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/headlines/category/HeadLineChannelListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

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

    .line 412
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 413
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1, p4}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$802(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1200(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/category/HeadLineChannelListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 398
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    iput-object p2, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 399
    iget-object p2, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object p2, p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$902(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)Ljava/util/List;

    .line 400
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    iget-object p2, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object p2, p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1002(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)Ljava/util/List;

    .line 401
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1000(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1000(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1102(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Z)Z

    .line 403
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1200(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    .line 404
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$600(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 405
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1400(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1302(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 406
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$600(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$1300(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    check-cast p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/category/HeadLineChannelListResponse;)V

    return-void
.end method
