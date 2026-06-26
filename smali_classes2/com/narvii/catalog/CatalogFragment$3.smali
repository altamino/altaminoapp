.class Lcom/narvii/catalog/CatalogFragment$3;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$3;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 377
    const-class p1, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "pickOnFinish"

    .line 378
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$3;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$3;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$3;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
