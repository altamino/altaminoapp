.class public Lcom/narvii/poweruser/history/MembersFilterFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MembersFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;
    }
.end annotation


# instance fields
.field allAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

.field checkedUid:Ljava/lang/String;

.field curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

.field curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

.field leaderAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

.field leaderTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

.field listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 85
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->allAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    .line 86
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    const v0, 0x7f0f0acb

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 87
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    .line 88
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    const v0, 0x7f0f031c

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 89
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    .line 90
    iget-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->setHost(Lcom/narvii/list/NVAdapter;)V

    .line 92
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    new-instance v0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "checked_uid"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0xc5c5c6

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    const-string v1, "checked_uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFilterItemClickListener(Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    return-void
.end method
