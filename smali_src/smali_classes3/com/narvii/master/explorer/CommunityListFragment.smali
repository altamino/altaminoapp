.class public Lcom/narvii/master/explorer/CommunityListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/CommunityListFragment$Adapter;
    }
.end annotation


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
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;-><init>(Lcom/narvii/master/explorer/CommunityListFragment;)V

    .line 6
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v3, 0x33ffffff

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    .line 31
    .line 32
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "isTrending"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "trending_communities"

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    const-string v0, "communities_list"

    .line 15
    return-object v0
.end method

.method public isGlobal()Z
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
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02e2

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a07fe

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/util/PreferencesHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/narvii/util/PreferencesHelper;->getMasterThemeColor()I

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    :cond_0
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 18
    .line 19
    .line 20
    const p2, -0xfadecf

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 57
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "title"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0ca4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    .line 36
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    const p2, 0x7f0a0ca2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    new-instance p2, Lcom/narvii/master/explorer/CommunityListFragment$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/narvii/master/explorer/CommunityListFragment$1;-><init>(Lcom/narvii/master/explorer/CommunityListFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
