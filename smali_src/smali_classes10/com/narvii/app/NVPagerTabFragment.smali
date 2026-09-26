.class public abstract Lcom/narvii/app/NVPagerTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/TabsAdapter$NVTabChangedListener;


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field protected mTabHost:Landroid/widget/TabHost;

.field protected mTabsAdapter:Lcom/narvii/app/TabsAdapter;

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected checkedTextColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected createAdapter(Landroidx/fragment/app/Fragment;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)Lcom/narvii/app/TabsAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/TabsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/app/TabsAdapter;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)V

    .line 6
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

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/TabsAdapter;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected abstract getFragment(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getTabLabel(I)Ljava/lang/String;
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->tab_layout:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget v1, Lcom/narvii/lib/R$id;->tab_title:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    sget p1, Lcom/narvii/lib/R$id;->tab_icon:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    sget p1, Lcom/narvii/lib/R$id;->tab_icon:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    const/16 p2, 0x8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    :goto_0
    new-instance p1, Lcom/narvii/app/NVTabDrawable;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/narvii/app/NVTabDrawable;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-object v0
.end method

.method public getTabWidgetLayout()Landroid/widget/TabWidget;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
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
    sget p3, Lcom/narvii/lib/R$layout;->pager_tab_fragment_layout:I

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

.method public onTabChanged(Landroid/widget/TabHost;I)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    :goto_0
    const/16 v0, 0x8

    .line 4
    .line 5
    if-ge p1, v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget v2, Lcom/narvii/lib/R$id;->tab_title:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move-object v0, v1

    .line 29
    .line 30
    :goto_1
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->checkedTextColor()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->unCheckedTextColor()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    .line 6
    const p2, 0x1020012

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TabHost;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/widget/TabHost;->setup()V

    .line 20
    .line 21
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->pager:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p0, p2, p1}, Lcom/narvii/app/NVPagerTabFragment;->createAdapter(Landroidx/fragment/app/Fragment;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)Lcom/narvii/app/TabsAdapter;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    .line 38
    .line 39
    iput-object p0, p1, Lcom/narvii/app/TabsAdapter;->listener:Lcom/narvii/app/TabsAdapter$NVTabChangedListener;

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    :goto_0
    const/16 p2, 0x8

    .line 43
    .line 44
    if-ge p1, p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVPagerTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getFragment(I)Ljava/lang/Class;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2, v1, v2}, Lcom/narvii/app/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 90
    .line 91
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->defaultOffScreenPage()I

    .line 98
    move-result p2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->defaultTabIndex()I

    .line 107
    move-result p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 111
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 6
    return-void
.end method

.method protected unCheckedTextColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$color;->tab_default_text:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method
