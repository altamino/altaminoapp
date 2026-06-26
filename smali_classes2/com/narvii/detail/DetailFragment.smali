.class public abstract Lcom/narvii/detail/DetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DetailFragment.java"

# interfaces
.implements Lcom/narvii/semicontext/SemiStateTransfer;


# instance fields
.field protected _hasBackground:Z

.field protected _isBackgroundDark:Z

.field accountService:Lcom/narvii/account/AccountService;

.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

.field protected disabled:Z

.field protected disabledBar:Landroid/widget/TextView;

.field protected liveLayerTarget:Ljava/lang/String;

.field public final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public preview:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    return-void
.end method

.method public static showPreviewToast(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    .line 275
    invoke-static {p0, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method


# virtual methods
.method protected changeActionBarBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public commentExtraHeight()I
    .locals 10

    .line 305
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    if-ge v5, v2, :cond_3

    .line 309
    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 310
    sget-object v9, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    sget-object v9, Lcom/narvii/detail/DetailAdapter;->_RELATED_PAGES:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v8, v9, :cond_2

    move v7, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq v6, v4, :cond_5

    .line 318
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-eq v7, v4, :cond_4

    .line 320
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v7, v2

    if-ltz v7, :cond_4

    .line 321
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v7, v2, :cond_4

    .line 322
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 326
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    .line 327
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v6, v2, :cond_5

    .line 328
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_5
    return v3
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDetailObjectDisableStrId()I
    .locals 1

    const v0, 0x7f0f0371

    return v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    instance-of v0, p1, Lcom/narvii/model/AuthorGetter;

    if-eqz v0, :cond_2

    .line 212
    check-cast p1, Lcom/narvii/model/AuthorGetter;

    invoke-interface {p1}, Lcom/narvii/model/AuthorGetter;->getAuthor()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0f0373

    return p1

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDeleted()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f0370

    return p1

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailObjectDisableStrId()I

    move-result p1

    return p1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailNVObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 342
    instance-of v1, v0, Lcom/narvii/model/StrategyObject;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/narvii/model/StrategyObject;

    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 141
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const-string v4, "__savedListFirstPos"

    .line 146
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "__savedListFirstId"

    .line 147
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "__savedListFirstY"

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method protected hasBackground()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 155
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isBackgroundColorDark()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__savedListFirstPos"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v2, 0x0

    const-string v0, "__savedListFirstId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 120
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__savedListFirstY"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 121
    new-instance p1, Lcom/narvii/detail/DetailFragment$1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/detail/DetailFragment$1;-><init>(Lcom/narvii/detail/DetailFragment;IJI)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "preview"

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 72
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b013e

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onNotAvailableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0032

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090b5b

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0275

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    sget-object v3, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f09035b

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    const v0, 0x7f090103

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FullscreenBackgroundView;

    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 108
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method protected setBackgroundColor(Landroid/view/View;III)V
    .locals 0

    .line 298
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setDisabledStatus(Lcom/narvii/model/NVObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    move-result v0

    .line 163
    iput-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 164
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->changeActionBarBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/16 v3, 0x28

    .line 170
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->getDisableStrId(Lcom/narvii/model/NVObject;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->changeActionBarBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    move-result p1

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09077c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090678

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const v0, 0x7f0f0d25

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->onNotAvailableChanged(Z)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "disable"

    const-string v0, "has no not available layout"

    .line 197
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setDisabledText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setImageStrokeColor(Landroid/view/View;II)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setImageStrokeColor(Landroid/view/View;II)V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;II)V
    .locals 1

    const/4 v0, -0x1

    .line 279
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;III)V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;III)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method protected setTextColorSelector(Landroid/view/View;III)V
    .locals 1

    .line 291
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    .line 266
    instance-of p1, p1, Lcom/narvii/model/Media;

    if-nez p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public showNotAvailableView(I)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    return-void
.end method

.method public showNotAvailableView(IZ)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09077c

    invoke-static {v0, v1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09077e

    invoke-static {p2, v0, p1}, Lcom/narvii/util/ViewUtils;->setText(Landroid/view/View;II)V

    return-void
.end method
