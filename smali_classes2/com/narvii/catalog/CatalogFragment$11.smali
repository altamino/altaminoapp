.class Lcom/narvii/catalog/CatalogFragment$11;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->addItemList(Ljava/util/List;)V
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


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1673
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$11;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1676
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$11;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$11;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v1, 0x7f0f01af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1677
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$11;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1678
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$11;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1673
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CatalogFragment$11;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
