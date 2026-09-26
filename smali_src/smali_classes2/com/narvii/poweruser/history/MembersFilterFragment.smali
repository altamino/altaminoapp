.class public Lcom/narvii/poweruser/history/MembersFilterFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;,
        Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->allAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f120b7e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f120371

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;Ljava/lang/String;)V

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 43
    .line 44
    new-instance p1, Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->setHost(Lcom/narvii/list/NVAdapter;)V

    .line 55
    .line 56
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->leaderAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorTitleAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->curatorAdapter:Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-object p1
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
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
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "checked_uid"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 14
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    .line 14
    const v0, -0xc5c5c6

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 24
    const/4 v0, -0x1

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    const v0, 0x7f070234

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 52
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "checked_uid"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public setFilterItemClickListener(Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    return-void
.end method
