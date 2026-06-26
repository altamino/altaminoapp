.class Lcom/narvii/catalog/CatalogFragment$12;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$12;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1707
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    .line 1708
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$12;->val$list:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1709
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    .line 1711
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz p1, :cond_0

    .line 1712
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1713
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    .line 1714
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1715
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1704
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$12;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
