.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

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
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p4}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->C(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->I(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    .line 14
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/category/HeadLineChannelListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 3
    iput-object p2, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 4
    iget-object p2, p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->A(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 5
    iget-object p2, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object p2, p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->D(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->x(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->x(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->B(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Z)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->I(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->v(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->F(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->E(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 10
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->v(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->z(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;

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

    .line 1
    check-cast p2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/category/HeadLineChannelListResponse;)V

    return-void
.end method
