.class Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentActivityEntryAdapter"
.end annotation


# instance fields
.field feeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public newItemsCount:I

.field recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 949
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 941
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$1;-><init>(Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;)V

    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 1023
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/knowledge-base-request/activities"

    .line 1024
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x19

    .line 1026
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1027
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1028
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1030
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;

    const-class v3, Lcom/narvii/catalog/activity/RecentActivityResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;-><init>(Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const p1, 0x7f0b007e

    .line 980
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 981
    iget p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    if-lez p2, :cond_0

    const p2, -0xff6404

    goto :goto_0

    :cond_0
    const p2, 0x59ffffff

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f090b9a

    .line 982
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 984
    iget p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 985
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v0, 0x7f0f0c17

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    const/4 v2, 0x0

    const v3, 0x7f0f0c18

    if-le p3, v1, :cond_2

    .line 987
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "20+"

    aput-object v1, v0, v2

    invoke-virtual {p3, v3, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    if-le p3, v0, :cond_3

    .line 989
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 991
    :cond_3
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v0, 0x7f0f01b1

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 993
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 958
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 959
    new-instance v0, Lcom/narvii/catalog/activity/RecentActivityHelper;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {v0, v1}, Lcom/narvii/catalog/activity/RecentActivityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

    .line 960
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->sendRequest()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1018
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 999
    const-class p1, Lcom/narvii/catalog/activity/RecentActivityFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1000
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "background"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p2}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "itemCategory"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 1002
    iput p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    .line 1003
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->feeds:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/narvii/catalog/activity/RecentActivityHelper;->cacheItemIds(Ljava/util/List;)V

    .line 1004
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-static {p2, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1005
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1013
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->sendRequest()V

    return-void
.end method
