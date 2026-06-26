.class public abstract Lcom/narvii/app/NVBaseScrollableTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVBaseScrollableTabFragment.java"

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

.field pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field private updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$3;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 249
    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$4;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

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

    .line 238
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public getCurIndex()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    .line 220
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

    .line 262
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 265
    check-cast v0, Lcom/narvii/app/NVFragment;

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v1, :cond_1

    .line 269
    check-cast v0, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 42
    sget p3, Lcom/narvii/lib/R$layout;->scrollable_tab_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 114
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onPositionChange(IF)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, p1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-interface {v2, v1, v0, v3}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    invoke-interface {v2, v1, v0, p2}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    goto :goto_1

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    const-string/jumbo v1, "view_pager_index"

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/narvii/lib/R$id;->tabs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 50
    sget v0, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVViewPager;

    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 53
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 57
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->isScrollable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 58
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultOffScreenPage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 60
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$1;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    new-instance v0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVBaseScrollableTabFragment$2;-><init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVPagerTabLayout;->addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz p2, :cond_1

    const/4 p1, -0x1

    const-string/jumbo v0, "view_pager_index"

    .line 94
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 95
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabView(I)V

    .line 100
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public resetAdapter(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 160
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 163
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    .line 288
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabView(I)V

    :cond_2
    return-void
.end method

.method public setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVPagerTabLayout;->addPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 127
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "config"

    .line 204
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 205
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected updateTabView(I)V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3, v2, v1, v4}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onSelected(Landroid/view/View;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
