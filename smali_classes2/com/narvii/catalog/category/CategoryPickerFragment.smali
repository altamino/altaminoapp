.class public Lcom/narvii/catalog/category/CategoryPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CategoryPickerFragment.java"


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

    .line 53
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addCategory(Lcom/narvii/model/ItemCategory;)V
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    new-instance v1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iput-object p1, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iput-object p1, v1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 115
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 153
    new-instance v0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    const-string v0, "resp"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/CategoryListResponse;

    iput-object v0, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string p1, "title"

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f01ae

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "multiPick"

    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    const-string p1, "categoryId"

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 75
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x44888888

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->bg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 123
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 125
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 83
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 84
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const-string v2, "header"

    .line 86
    invoke-virtual {p1, v1, v2, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 87
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const-string v0, "footer"

    .line 89
    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_1

    .line 137
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 138
    iget-boolean v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "categoryList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v0, "itemId"

    .line 143
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x104000a

    .line 131
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->adapter:Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b0074

    .line 95
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    const p2, 0x7f0903e0

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/catalog/category/CategoryPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$1;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
