.class Lcom/narvii/catalog/CatalogFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CatalogFragment.java"


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

    .line 803
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 834
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iput-object p4, p1, Lcom/narvii/catalog/CatalogFragment;->errorMsg:Ljava/lang/String;

    .line 835
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

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

    .line 803
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

    .line 806
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iput-object p2, p1, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 809
    invoke-virtual {p2}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 810
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 811
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iput-boolean p2, p1, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    goto :goto_0

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1, p2}, Lcom/narvii/catalog/CatalogFragment;->access$002(Lcom/narvii/catalog/CatalogFragment;Z)Z

    .line 814
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    if-eqz p1, :cond_1

    .line 815
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 816
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 821
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 822
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->update()V

    .line 823
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->sendCategoryRequest()V

    .line 824
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 825
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->mergeAdapter:Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 826
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 827
    invoke-virtual {p1, p2, v0}, Lcom/narvii/catalog/AllItemAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 829
    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$7;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1}, Lcom/narvii/catalog/CatalogFragment;->access$100(Lcom/narvii/catalog/CatalogFragment;)V

    return-void
.end method
