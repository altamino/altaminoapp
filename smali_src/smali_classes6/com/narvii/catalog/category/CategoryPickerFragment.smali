.class public Lcom/narvii/catalog/category/CategoryPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;,
        Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

.field bg:Landroid/graphics/drawable/Drawable;

.field categoryId:Ljava/lang/String;

.field multiPick:Z

.field selectedCategory:Lcom/narvii/model/ItemCategory;

.field selectedCategoryId:Ljava/lang/String;

.field final selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addCategory(Lcom/narvii/model/ItemCategory;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/catalog/category/CategoryPost;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    const-string p1, "post"

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "resp"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/api/CategoryListResponse;

    .line 24
    .line 25
    iput-object p1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    .line 28
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string p1, "title"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    const p1, 0x7f1201fd

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    :goto_0
    const-string p1, "multiPick"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 38
    .line 39
    const-string p1, "categoryId"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 48
    .line 49
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 50
    .line 51
    .line 52
    const v0, 0x44888888

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->bg:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0700c4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    new-instance v1, Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    .line 36
    const-string v2, "header"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v2, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 40
    .line 41
    new-instance v1, Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 52
    .line 53
    const-string v0, "footer"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "categoryList"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "category"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    :goto_0
    const-string v0, "itemId"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/4 v0, -0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 58
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 63
    move-result p1

    .line 64
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x104000a

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->isListShown()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 41
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0d008a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a04df

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/catalog/category/CategoryPickerFragment$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$1;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
