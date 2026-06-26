.class public final Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StorySectionItemView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/StorySectionItemView;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/StorySectionItemView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/StorySectionItemView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

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

    .line 196
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 197
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 198
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->cancelLoading()V

    .line 199
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/topic/widgets/StorySectionItemView;->setApiRequest(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 184
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 2

    .line 186
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/narvii/topic/widgets/StorySectionItemView;->set_nextPageToken(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->getStoryList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->getCurWindowIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/topic/widgets/StorySectionItemView;->setCurWindowIndex(I)V

    .line 190
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->updateStory()V

    .line 191
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->cancelLoading()V

    .line 192
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onRefresh$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->setApiRequest(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
