.class Lcom/narvii/catalog/CatalogFragment$10;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->addTo(Lcom/narvii/model/ItemCategory;)V
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


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/model/ItemCategory;)V
    .locals 0

    .line 1636
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$10;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$10;->val$category:Lcom/narvii/model/ItemCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 1639
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$10;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$10;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment$10;->val$category:Lcom/narvii/model/ItemCategory;

    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f019c

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1641
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$10;->val$category:Lcom/narvii/model/ItemCategory;

    const-string/jumbo v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1642
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$10;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1636
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$10;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
