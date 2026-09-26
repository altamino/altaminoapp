.class public Lcom/narvii/blog/category/BlogCategoryPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;
    }
.end annotation


# static fields
.field public static final KEY_IS_QUIZ:Ljava/lang/String; = "isQuiz"


# instance fields
.field protected adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

.field private isQuiz:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;-><init>(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1201b9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 14
    .line 15
    const-string v0, "isQuiz"

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    .line 31
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    const-string p2, "single"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    const v0, 0x104000a

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v1, 0x7f12052e

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 40
    :cond_0
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
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "blogCategoryList"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/4 v0, -0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "isQuiz"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method
