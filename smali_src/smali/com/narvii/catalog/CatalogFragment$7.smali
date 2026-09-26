.class Lcom/narvii/catalog/CatalogFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iput-object p4, p1, Lcom/narvii/catalog/CatalogFragment;->errorMsg:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
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
    check-cast p2, Lcom/narvii/model/api/CategoryListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CatalogFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 2
    iput-object p2, p1, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 5
    iput-boolean p2, p1, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 6
    invoke-static {p1, p2}, Lcom/narvii/catalog/CatalogFragment;->u(Lcom/narvii/catalog/CatalogFragment;Z)V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 7
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    if-eqz p1, :cond_1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->update()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 12
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->sendCategoryRequest()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 13
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 14
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 15
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/narvii/catalog/AllItemAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 17
    invoke-static {p1}, Lcom/narvii/catalog/CatalogFragment;->x(Lcom/narvii/catalog/CatalogFragment;)V

    return-void
.end method
