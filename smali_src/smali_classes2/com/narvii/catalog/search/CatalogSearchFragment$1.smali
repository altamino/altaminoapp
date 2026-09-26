.class Lcom/narvii/catalog/search/CatalogSearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    .line 8
    const v0, 0x7f12008c

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    return p2

    .line 12
    .line 13
    :cond_0
    const-class p1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "uid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "title"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, p2}, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 43
    return p2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f12008c

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    .line 11
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f12008c

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    if-lez p2, :cond_0

    .line 23
    move p2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 29
    return v0
.end method
