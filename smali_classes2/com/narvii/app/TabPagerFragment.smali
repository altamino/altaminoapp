.class public abstract Lcom/narvii/app/TabPagerFragment;
.super Lcom/narvii/app/NVFragment;
.source "TabPagerFragment.java"


# instance fields
.field mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field protected mViewPager:Lcom/narvii/widget/NVViewPager;

.field private final observer:Landroid/database/DataSetObserver;

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/narvii/app/TabPagerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/TabPagerFragment$1;-><init>(Lcom/narvii/app/TabPagerFragment;)V

    iput-object v0, p0, Lcom/narvii/app/TabPagerFragment;->observer:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Landroid/support/v4/view/PagerAdapter;
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

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getCurIndex()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    sget p2, Lcom/narvii/lib/R$id;->tabs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVPagerTabLayout;

    iput-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 46
    sget p2, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVViewPager;

    iput-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->createAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 50
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->isScrollable()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 51
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultOffScreenPage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 52
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultTabIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultTabIndex()I

    move-result p1

    .line 64
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 65
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "config"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 75
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method

.method protected updateTabView(I)V
    .locals 0

    return-void
.end method
