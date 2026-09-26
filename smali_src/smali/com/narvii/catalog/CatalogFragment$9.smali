.class Lcom/narvii/catalog/CatalogFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->moveTo(Lcom/narvii/model/ItemCategory;)V
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

.field final synthetic val$category:Lcom/narvii/model/ItemCategory;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$category:Lcom/narvii/model/ItemCategory;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$list:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$category:Lcom/narvii/model/ItemCategory;

    iget-object v3, v3, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1201fa

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$list:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$category:Lcom/narvii/model/ItemCategory;

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment$9;->val$category:Lcom/narvii/model/ItemCategory;

    invoke-direct {p1, v0, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 7
    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$9;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 9
    iput-boolean v4, p1, Lcom/narvii/catalog/CatalogFragment;->suspendNotification:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$9;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
