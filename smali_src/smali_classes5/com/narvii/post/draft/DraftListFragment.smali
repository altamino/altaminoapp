.class public Lcom/narvii/post/draft/DraftListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/post/draft/DraftListFragment$Adapter;,
        Lcom/narvii/post/draft/DraftListFragment$Stub;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

.field draftManager:Lcom/narvii/post/DraftManager;

.field draftType:Ljava/lang/String;

.field private isEdit:Z

.field private leftBtn:Lcom/narvii/widget/TintButton;

.field private rightBtn:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 7
    return-void
.end method

.method private customLeftView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d002f

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a0084

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v2, 0x7f120f1b

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0a0079

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->leftBtn:Lcom/narvii/widget/TintButton;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/post/draft/b;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/post/draft/b;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private customRightView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d01e8

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0419

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/post/draft/a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/narvii/post/draft/a;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method private deleteAllDrafts()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120ebc

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f120ebb

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/post/draft/DraftListFragment$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/post/draft/DraftListFragment$1;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 34
    return-void
.end method

.method private synthetic lambda$customLeftView$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 3
    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    :goto_0
    return-void
.end method

.method private synthetic lambda$customRightView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V

    .line 15
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/post/draft/DraftListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment;->lambda$customRightView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/post/draft/DraftListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment;->lambda$customLeftView$0(Landroid/view/View;)V

    return-void
.end method

.method private updateEditView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->leftBtn:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    .line 13
    const v2, 0x7f080369

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const v2, 0x7f0803b8

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    const v1, 0x7f1203a3

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    const v1, 0x7f120438

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    .line 53
    const v2, 0x7f080260

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_2
    const v2, 0x7f080261

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/post/draft/DraftListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/post/draft/DraftListFragment;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroidx/appcompat/widget/AppCompatButton;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/post/draft/DraftListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 19
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "drafts_list"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->customLeftView()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->customRightView()V

    .line 17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "draftType"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, 0x7f120f1b

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 20
    .line 21
    const-string p1, "draft"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/post/DraftManager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 30
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120ebb

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
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
    const v1, 0x7f120ebb

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120ebb

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 27
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    .line 9
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
    const p1, 0x7f0d01e5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    return-void
.end method
