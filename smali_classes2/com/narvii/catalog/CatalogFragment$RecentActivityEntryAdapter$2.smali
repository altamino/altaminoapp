.class Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/catalog/activity/RecentActivityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;->this$1:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/catalog/activity/RecentActivityResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1033
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1034
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;->this$1:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    invoke-virtual {p2}, Lcom/narvii/catalog/activity/RecentActivityResponse;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->feeds:Ljava/util/List;

    .line 1035
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;->this$1:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

    invoke-virtual {p2}, Lcom/narvii/catalog/activity/RecentActivityResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/activity/RecentActivityHelper;->newItemCount(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_0

    .line 1037
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;->this$1:Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;

    iput p1, p2, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    .line 1038
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1030
    check-cast p2, Lcom/narvii/catalog/activity/RecentActivityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/catalog/activity/RecentActivityResponse;)V

    return-void
.end method
