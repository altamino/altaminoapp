.class public Lcom/narvii/post/draft/DraftListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DraftListFragment.java"


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

.field private rightBtn:Landroid/support/v7/widget/AppCompatButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/post/draft/DraftListFragment;)Landroid/support/v7/widget/AppCompatButton;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroid/support/v7/widget/AppCompatButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/post/draft/DraftListFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/post/draft/DraftListFragment;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    return-void
.end method

.method private customLeftView()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090053

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0df0

    .line 452
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    const v1, 0x7f090048

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->leftBtn:Lcom/narvii/widget/TintButton;

    .line 455
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->leftBtn:Lcom/narvii/widget/TintButton;

    new-instance v1, Lcom/narvii/post/draft/-$$Lambda$DraftListFragment$wojyrWn-e64vTBB57PP17X2gkZo;

    invoke-direct {v1, p0}, Lcom/narvii/post/draft/-$$Lambda$DraftListFragment$wojyrWn-e64vTBB57PP17X2gkZo;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private customRightView()V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b01c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 467
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    const v1, 0x7f09033d

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    iput-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroid/support/v7/widget/AppCompatButton;

    .line 469
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroid/support/v7/widget/AppCompatButton;

    new-instance v1, Lcom/narvii/post/draft/-$$Lambda$DraftListFragment$96YhsqB2szqNKWdqsdL4APBwHCE;

    invoke-direct {v1, p0}, Lcom/narvii/post/draft/-$$Lambda$DraftListFragment$96YhsqB2szqNKWdqsdL4APBwHCE;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private deleteAllDrafts()V
    .locals 3

    .line 487
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0d90

    .line 488
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v1, 0x7f0f0d8f

    const/4 v2, 0x1

    .line 489
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 490
    new-instance v1, Lcom/narvii/post/draft/DraftListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/post/draft/DraftListFragment$1;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 509
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private updateEditView()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->leftBtn:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    if-eqz v2, :cond_0

    const v2, 0x7f080264

    goto :goto_0

    :cond_0
    const v2, 0x7f0802b1

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroid/support/v7/widget/AppCompatButton;

    iget-boolean v1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f034b

    goto :goto_1

    :cond_1
    const v1, 0x7f0f03cd

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 482
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->rightBtn:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0801d4

    goto :goto_2

    :cond_2
    const v2, 0x7f0801d5

    :goto_2
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 127
    new-instance p1, Lcom/narvii/post/draft/DraftListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    .line 128
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Drafts"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$customLeftView$0$DraftListFragment(Landroid/view/View;)V
    .locals 0

    .line 456
    iget-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 457
    iget-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    if-nez p1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$customRightView$1$DraftListFragment(Landroid/view/View;)V
    .locals 0

    .line 470
    iget-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lcom/narvii/post/draft/DraftListFragment;->isEdit:Z

    .line 472
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->updateEditView()V

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->customLeftView()V

    .line 442
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->customRightView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const-string p1, "draftType"

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    :cond_0
    const p1, 0x7f0f0df0

    .line 82
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "draft"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0d8f

    const/4 v0, 0x0

    .line 101
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0d8f

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/narvii/post/draft/DraftListFragment;->deleteAllDrafts()V

    const/4 p1, 0x1

    return p1

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f0d8f

    .line 107
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment;->adapter:Lcom/narvii/post/draft/DraftListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b01c6

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method
