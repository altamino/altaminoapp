.class public final Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StorySectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->sendRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/topic/model/StorySectionListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorySectionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorySectionAdapter.kt\ncom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1\n*L\n1#1,218:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/paging/source/PageRequestCallback;

.field final synthetic this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Lcom/narvii/paging/source/PageRequestCallback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/source/PageRequestCallback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iput-object p2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 151
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-static {p1, p4}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->access$pageLoadFailed(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object p1, p1, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/StorySectionAdapter;->setRequestFinished(Z)V

    .line 154
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object p1, p1, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 149
    check-cast p2, Lcom/narvii/topic/model/StorySectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/StorySectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/StorySectionListResponse;)V
    .locals 6

    .line 159
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p2, Lcom/narvii/topic/model/StorySectionListResponse;->communityInfoMapping:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object v0, v0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getCommunityInfoMapping()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->communityInfoMapping:Ljava/util/Map;

    const-string v2, "resp.communityInfoMapping"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 163
    iget-object v0, p2, Lcom/narvii/topic/model/StorySectionListResponse;->userProfileMapping:Ljava/util/Map;

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object v0, v0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getUserInfoMapping$Amino_bundle()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->userProfileMapping:Ljava/util/Map;

    const-string v2, "resp.userProfileMapping"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object v0, v0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    if-eqz p2, :cond_4

    iget-object v1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->sectionList:Ljava/util/List;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/StorySectionAdapter;->setSectionList(Ljava/util/List;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object v1, v1, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getSectionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/topic/model/StorySections;

    .line 170
    iget-object v4, v2, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    if-eqz v4, :cond_5

    const-string v5, "s.blogList"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/AbstractList;->clear()V

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-virtual {v1, v0, v1}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 176
    iget-object v1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->sectionList:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-lez v1, :cond_c

    if-eqz p2, :cond_9

    .line 177
    iget-object v1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->sectionList:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/topic/model/StorySections;

    :cond_9
    if-eqz p1, :cond_a

    .line 178
    iget-object p1, p1, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    iget-object p1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->sectionList:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_b
    if-le v0, v3, :cond_c

    if-eqz p2, :cond_c

    .line 179
    iget-object p1, p2, Lcom/narvii/topic/model/StorySectionListResponse;->sectionList:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/topic/model/StorySections;

    .line 182
    :cond_c
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    iget-object p1, p1, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {p1, v3}, Lcom/narvii/topic/adapter/StorySectionAdapter;->setRequestFinished(Z)V

    .line 183
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-static {p1}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->access$pageLoadFinished(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;)V

    .line 184
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-static {p1}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->access$notifyPageSourceChange(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;)V

    .line 185
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_d

    invoke-interface {p1, v3}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_d
    return-void
.end method
