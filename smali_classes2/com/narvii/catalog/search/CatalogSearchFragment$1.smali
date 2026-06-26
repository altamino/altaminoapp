.class Lcom/narvii/catalog/search/CatalogSearchFragment$1;
.super Ljava/lang/Object;
.source "CatalogSearchFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/search/CatalogSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 294
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0f0083

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    return v0

    .line 296
    :cond_0
    const-class p1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 297
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object v1, v1, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0f0083

    const/4 v1, 0x0

    .line 277
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 278
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object v0, v0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 310
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const p1, 0x7f0f0083

    .line 287
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p2, p2, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v0
.end method
