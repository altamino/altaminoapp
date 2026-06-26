.class public Lcom/narvii/blog/category/BlogCategoryPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BlogCategoryPickerFragment.java"


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

    .line 39
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 97
    new-instance p1, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;-><init>(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

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

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f0f016e

    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "isQuiz"

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string p2, "single"

    .line 76
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 77
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 79
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 86
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blogCategoryList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-boolean v0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->isQuiz:Z

    const-string v1, "isQuiz"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
