.class public Lcom/narvii/members/PeopleListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PeopleListFragment.java"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# instance fields
.field public mergeAdapter:Lcom/narvii/members/PeopleListAdapter;


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

    .line 74
    new-instance p1, Lcom/narvii/members/PeopleListAdapter;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/narvii/members/PeopleListAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListFragment;->mergeAdapter:Lcom/narvii/members/PeopleListAdapter;

    .line 75
    iget-object p1, p0, Lcom/narvii/members/PeopleListFragment;->mergeAdapter:Lcom/narvii/members/PeopleListAdapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AllMembers"

    return-object v0
.end method

.method public isHover(I)Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/members/PeopleListFragment;->mergeAdapter:Lcom/narvii/members/PeopleListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/members/PeopleListAdapter;->SECTION:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayer"

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const-string v1, "all-members"

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0b53

    .line 34
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 36
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0f48

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0804cf

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListFragment;->setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V

    const p1, 0x7f0b01f4

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0f48

    if-ne v0, v1, :cond_0

    const-string p1, "SearchIcon"

    .line 102
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 103
    const-class p1, Lcom/narvii/members/MembersSearchFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903ea

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 49
    new-instance v0, Lcom/narvii/members/PeopleListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/members/PeopleListFragment$1;-><init>(Lcom/narvii/members/PeopleListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
