.class Lcom/narvii/catalog/CatalogFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$12;->val$list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 2
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$12;->val$list:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    const-string/jumbo v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$12;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$12;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
