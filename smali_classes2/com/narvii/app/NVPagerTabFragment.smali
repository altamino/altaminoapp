.class public abstract Lcom/narvii/app/NVPagerTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVPagerTabFragment.java"

# interfaces
.implements Lcom/narvii/app/TabsAdapter$NVTabChangedListener;


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field protected mTabHost:Landroid/widget/TabHost;

.field protected mTabsAdapter:Lcom/narvii/app/TabsAdapter;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkedTextColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected createAdapter(Landroid/support/v4/app/Fragment;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)Lcom/narvii/app/TabsAdapter;
    .locals 1

    .line 97
    new-instance v0, Lcom/narvii/app/TabsAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/app/TabsAdapter;-><init>(Landroid/support/v4/app/Fragment;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V

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

    .line 71
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    invoke-virtual {v0}, Lcom/narvii/app/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

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

    .line 101
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->tab_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    sget v1, Lcom/narvii/lib/R$id;->tab_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 105
    sget p1, Lcom/narvii/lib/R$id;->tab_icon:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget p1, Lcom/narvii/lib/R$id;->tab_icon:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    sget p1, Lcom/narvii/lib/R$id;->tab_icon:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    new-instance p1, Lcom/narvii/app/NVTabDrawable;

    invoke-direct {p1, p0}, Lcom/narvii/app/NVTabDrawable;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getTabWidgetLayout()Landroid/widget/TabWidget;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 32
    sget p3, Lcom/narvii/lib/R$layout;->pager_tab_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onTabChanged(Landroid/widget/TabHost;I)V
    .locals 3

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    sget v2, Lcom/narvii/lib/R$id;->tab_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    if-ne p1, p2, :cond_1

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->checkedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->unCheckedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x1020012

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TabHost;

    iput-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    .line 46
    iget-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/widget/TabHost;->setup()V

    .line 49
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 50
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, p0, p1, p2}, Lcom/narvii/app/NVPagerTabFragment;->createAdapter(Landroid/support/v4/app/Fragment;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)Lcom/narvii/app/TabsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    .line 51
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    iput-object p0, p1, Lcom/narvii/app/TabsAdapter;->listener:Lcom/narvii/app/TabsAdapter$NVTabChangedListener;

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVPagerTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabsAdapter:Lcom/narvii/app/TabsAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVPagerTabFragment;->getBundles(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/narvii/app/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->defaultOffScreenPage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 59
    iget-object p1, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/narvii/app/NVPagerTabFragment;->defaultTabIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/app/NVPagerTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method protected unCheckedTextColor()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->tab_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method
