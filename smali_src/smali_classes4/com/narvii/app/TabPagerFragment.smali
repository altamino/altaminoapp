.class public abstract Lcom/narvii/app/TabPagerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field protected mViewPager:Lcom/narvii/widget/NVViewPager;

.field private final observer:Landroid/database/DataSetObserver;

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/app/TabPagerFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/app/TabPagerFragment$1;-><init>(Lcom/narvii/app/TabPagerFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/TabPagerFragment;->observer:Landroid/database/DataSetObserver;

    .line 11
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Landroidx/viewpager/widget/PagerAdapter;
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

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getCurIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

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

.method public getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

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
    sget p2, Lcom/narvii/lib/R$id;->tabs:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/widget/NVPagerTabLayout;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 14
    .line 15
    sget p2, Lcom/narvii/lib/R$id;->viewpager:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/NVViewPager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->createAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->isScrollable()Z

    .line 35
    move-result p2

    .line 36
    .line 37
    xor-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    iput-boolean p2, p1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultOffScreenPage()I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->observer:Landroid/database/DataSetObserver;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->tabLayoutBackground()Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultTabIndex()I

    .line 84
    move-result p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->defaultTabIndex()I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 95
    move-result p2

    .line 96
    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 100
    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 105
    move-result p2

    .line 106
    .line 107
    if-lez p2, :cond_0

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 113
    move-result p2

    .line 114
    sub-int/2addr p2, p1

    .line 115
    .line 116
    add-int/lit8 p1, p2, -0x1

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    .line 120
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

.method protected updateTabView(I)V
    .locals 0

    return-void
.end method
