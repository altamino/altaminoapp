.class public abstract Lcom/narvii/app/NVBaseScrollableTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;


# static fields
.field private static final KEY_VIEWPAGER_INDEX:Ljava/lang/String; = "view_pager_index"

.field private static final VIEWPAGER_INDEX_INVALID:I = -0x1


# instance fields
.field protected currentShowingFragment:Lcom/narvii/app/NVFragment;

.field protected mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

.field protected mViewPager:Lcom/narvii/widget/NVViewPager;

.field private final observer:Landroid/database/DataSetObserver;

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field private updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$3;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$4;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$4;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end method

.method protected createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public getCurIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public manuallyRefresh(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 27
    .line 28
    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    if-eqz p1, :cond_2

    .line 39
    const/4 v0, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->scrollable_tab_fragment_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 11
    return-void
.end method

.method public onPositionChange(IF)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-ne v0, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 24
    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    sub-float/2addr v3, p2

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v1, v0, v3}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 33
    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v1, v0, p2}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v1, v0, v3}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, -0x1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 13
    move-result v0

    .line 14
    .line 15
    :goto_0
    const-string v1, "view_pager_index"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->tabs:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 14
    .line 15
    sget v0, Lcom/narvii/lib/R$id;->viewpager:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/NVViewPager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->isScrollable()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    xor-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    iput-boolean v0, p1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultOffScreenPage()I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 85
    .line 86
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$1;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addPagerListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 95
    .line 96
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$2;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVPagerTabLayout;->addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    if-eqz p2, :cond_0

    .line 126
    .line 127
    const-string p1, "view_pager_index"

    .line 128
    const/4 v0, -0x1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 132
    move-result p1

    .line 133
    .line 134
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    .line 144
    move-result p2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 148
    .line 149
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 153
    move-result p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabView(I)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 159
    .line 160
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 164
    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public resetAdapter(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 1
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 4
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 15
    .line 16
    if-ne v0, p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabView(I)V

    .line 27
    :cond_2
    return-void
.end method

.method public setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVPagerTabLayout;->addPagerListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    return-object v1
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method protected updateTabView(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    .line 8
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 23
    .line 24
    if-ne v1, p1, :cond_0

    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v4, v0

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-interface {v3, v2, v1, v4}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onSelected(Landroid/view/View;IZ)V

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method
