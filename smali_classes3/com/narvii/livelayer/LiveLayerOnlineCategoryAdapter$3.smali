.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LiveLayerOnlineCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/livelayer/category/OnlineCategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

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

    .line 235
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 236
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->access$102(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Z)Z

    .line 237
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-boolean p2, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    if-eqz p2, :cond_0

    .line 238
    iput-object p4, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->err:Ljava/lang/String;

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/livelayer/category/OnlineCategoryListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 173
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->access$102(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Z)Z

    .line 174
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 175
    iget-object p1, p2, Lcom/narvii/livelayer/category/OnlineCategoryListResponse;->liveLayerList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 177
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 185
    iget v1, v1, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    add-int/2addr p2, v1

    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 190
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->access$200(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V

    .line 192
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 193
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 194
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;

    invoke-direct {v1, p0, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;Lcom/narvii/livelayer/category/OnlineCategory;)V

    .line 227
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    goto :goto_2

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    check-cast p2, Lcom/narvii/livelayer/category/OnlineCategoryListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/livelayer/category/OnlineCategoryListResponse;)V

    return-void
.end method
