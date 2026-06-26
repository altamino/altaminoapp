.class Lcom/narvii/catalog/CatalogFragment$1;
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

    .line 335
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$1;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 338
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$1;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->depth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    const-class p1, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "pickOnFinish"

    .line 340
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$1;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 343
    :cond_0
    const-class p1, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$1;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
