.class public Lcom/narvii/app/TabsAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/TabsAdapter$NVTabContentFactory;,
        Lcom/narvii/app/TabsAdapter$TabInfo;,
        Lcom/narvii/app/TabsAdapter$NVTabChangedListener;
    }
.end annotation


# instance fields
.field public listener:Lcom/narvii/app/TabsAdapter$NVTabChangedListener;

.field private final mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/app/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/app/TabsAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 40
    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/TabsAdapter$NVTabContentFactory;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/app/TabsAdapter$NVTabContentFactory;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/app/TabsAdapter$TabInfo;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0, p2, p3}, Lcom/narvii/app/TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/TabsAdapter$TabInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/TabsAdapter$TabInfo;->b(Lcom/narvii/app/TabsAdapter$TabInfo;)Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/app/TabsAdapter$TabInfo;->a(Lcom/narvii/app/TabsAdapter$TabInfo;)Landroid/os/Bundle;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p2

    .line 15
    move-object v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 10
    move-result v1

    .line 11
    .line 12
    const/high16 v2, 0x60000

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 24
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->listener:Lcom/narvii/app/TabsAdapter$NVTabChangedListener;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0, v1}, Lcom/narvii/app/TabsAdapter$NVTabChangedListener;->onTabChanged(Landroid/widget/TabHost;I)V

    .line 25
    :cond_0
    return-void
.end method
