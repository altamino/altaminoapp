.class Lcom/narvii/catalog/CatalogFragment$8;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
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

    .line 1443
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1479
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const-string v0, "title"

    const-string v1, "categoryId"

    const-string/jumbo v2, "uid"

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    return v3

    .line 1493
    :sswitch_0
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iput-boolean v3, p2, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 1494
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1495
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 1496
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v0, 0x7f0f019d

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return v3

    .line 1489
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->remove()V

    return v3

    .line 1500
    :sswitch_2
    const-class p1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1501
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v1, 0x7f0f0bdc

    invoke-virtual {p2, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    .line 1508
    :sswitch_3
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2, v3}, Lcom/narvii/catalog/CatalogFragment;->delete(Z)V

    .line 1511
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v3

    .line 1481
    :sswitch_5
    const-class p1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1482
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v1, 0x7f0f0083

    invoke-virtual {p2, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x7f0f0083 -> :sswitch_5
        0x7f0f0193 -> :sswitch_4
        0x7f0f0356 -> :sswitch_3
        0x7f0f0bdc -> :sswitch_2
        0x7f0f0ec5 -> :sswitch_1
        0x7f0f0f6e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f0f0bdc

    const/4 v1, 0x0

    .line 1448
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0083

    .line 1449
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0ec5

    .line 1450
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0356

    .line 1451
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0f6e

    .line 1452
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0193

    .line 1453
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1454
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1455
    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CatalogFragment$8;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1521
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 1522
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1463
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iget-boolean p1, p1, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    const v0, 0x7f0f0bdc

    .line 1464
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {v1}, Lcom/narvii/catalog/CatalogFragment;->access$400(Lcom/narvii/catalog/CatalogFragment;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0083

    .line 1465
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v4, p1, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1466
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0ec5

    .line 1467
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {v4}, Lcom/narvii/catalog/CatalogFragment;->access$400(Lcom/narvii/catalog/CatalogFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1468
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0356

    .line 1469
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {v4}, Lcom/narvii/catalog/CatalogFragment;->access$400(Lcom/narvii/catalog/CatalogFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1470
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0f6e

    .line 1471
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0193

    .line 1472
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v3
.end method
