.class Lcom/narvii/catalog/CatalogFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->delete(Z)V
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
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$13;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$13;->val$list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$13;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 2
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$13;->val$list:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 4
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "delete"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$13;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$13;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 8
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$13;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$13;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
