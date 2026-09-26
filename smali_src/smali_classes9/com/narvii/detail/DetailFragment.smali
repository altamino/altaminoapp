.class public abstract Lcom/narvii/detail/DetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static showPreviewToast(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f1211ac

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 12
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    move v6, v3

    .line 16
    move v7, v6

    .line 17
    move v5, v4

    .line 18
    .line 19
    :goto_0
    if-ge v5, v2, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 23
    move-result-object v8

    .line 24
    .line 25
    sget-object v9, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    if-eq v8, v9, :cond_1

    .line 28
    .line 29
    sget-object v9, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 30
    .line 31
    if-ne v8, v9, :cond_0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    sget-object v9, Lcom/narvii/detail/DetailAdapter;->_RELATED_PAGES:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 35
    .line 36
    if-ne v8, v9, :cond_2

    .line 37
    move v7, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    move v6, v5

    .line 40
    .line 41
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    if-eq v6, v3, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eq v7, v3, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 54
    move-result v2

    .line 55
    sub-int/2addr v7, v2

    .line 56
    .line 57
    if-ltz v7, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    move-result v2

    .line 62
    .line 63
    if-ge v7, v2, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 75
    move-result v2

    .line 76
    sub-int/2addr v6, v2

    .line 77
    .line 78
    if-ltz v6, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    move-result v2

    .line 83
    .line 84
    if-ge v6, v2, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 92
    move-result v0

    .line 93
    sub-int/2addr v1, v0

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v0

    .line 98
    return v0

    .line 99
    :cond_5
    return v4
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDetailObjectDisableStrId()I
    .locals 1

    const v0, 0x7f1203c9

    return v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    instance-of v0, p1, Lcom/narvii/model/AuthorGetter;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/AuthorGetter;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/model/AuthorGetter;->getAuthor()Lcom/narvii/model/User;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    const p1, 0x7f1203cb

    .line 33
    return p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDeleted()Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    .line 42
    const p1, 0x7f1203c8

    .line 43
    return p1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailObjectDisableStrId()I

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailNVObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/StrategyObject;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/StrategyObject;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-ltz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-ge v0, v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 75
    move-result-wide v2

    .line 76
    .line 77
    const-string v4, "__savedListFirstPos"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    const-string v0, "__savedListFirstId"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 86
    .line 87
    const-string v0, "__savedListFirstY"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :cond_0
    return-object p1
.end method

.method protected hasBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected isBackgroundColorDark()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
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
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "__savedListFirstPos"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string v0, "__savedListFirstId"

    .line 43
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 48
    move-result-wide v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "__savedListFirstY"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    move-result v7

    .line 63
    .line 64
    new-instance p1, Lcom/narvii/detail/DetailFragment$1;

    .line 65
    move-object v2, p1

    .line 66
    move-object v3, p0

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/narvii/detail/DetailFragment$1;-><init>(Lcom/narvii/detail/DetailFragment;IJI)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-string p1, "preview"

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 38
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d015d

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onNotAvailableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0d0031

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0a0e51

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    const v3, 0x7f1202bd

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 36
    .line 37
    sget-object v3, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const v0, 0x7f0a0443

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0192

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 66
    .line 67
    .line 68
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 79
    move-result-object p1

    .line 80
    const/4 p2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 84
    return-void
.end method

.method protected setBackgroundColor(Landroid/view/View;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p3, p4

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    :cond_1
    return-void
.end method

.method public setDisabledStatus(Lcom/narvii/model/NVObject;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->changeActionBarBackground()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    const v4, 0x7f06010b

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    const/16 v3, 0x28

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->getDisableStrId(Lcom/narvii/model/NVObject;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->changeActionBarBackground()Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    .line 111
    move-result p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    const v1, 0x7f0a0a18

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    xor-int/lit8 v1, p1, 0x1

    .line 137
    .line 138
    .line 139
    const v2, 0x7f0a07fe

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 143
    .line 144
    .line 145
    const v0, 0x7f120e4a

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->onNotAvailableChanged(Z)V

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_5
    if-eqz p1, :cond_6

    .line 155
    .line 156
    const-string p1, "disable"

    .line 157
    .line 158
    const-string v0, "has no not available layout"

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_6
    :goto_1
    return-void
.end method

.method public setDisabledText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->disabledBar:Landroid/widget/TextView;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    return-void
.end method

.method protected setImageStrokeColor(Landroid/view/View;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, -0x1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setImageStrokeColor(Landroid/view/View;II)V

    .line 12
    return-void
.end method

.method protected setTextColor(Landroid/view/View;II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;III)V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;III)V
    .locals 1

    .line 2
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p3, p4

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    :cond_1
    return-void
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of p1, p1, Lcom/narvii/model/Media;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    xor-int/lit8 p1, p1, 0x1

    .line 12
    return p1
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    return p1
.end method

.method public showNotAvailableView(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    return-void
.end method

.method public showNotAvailableView(IZ)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a18

    invoke-static {v0, v1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0a1a

    invoke-static {p2, v0, p1}, Lcom/narvii/util/ViewUtils;->setText(Landroid/view/View;II)V

    return-void
.end method
