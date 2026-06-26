.class public Lcom/narvii/app/TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

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

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 42
    iput-object p3, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 43
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 44
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

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

    .line 102
    new-instance v0, Lcom/narvii/app/TabsAdapter$NVTabContentFactory;

    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/app/TabsAdapter$NVTabContentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 103
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/narvii/app/TabsAdapter$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Lcom/narvii/app/TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 106
    iget-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/TabsAdapter$TabInfo;

    .line 115
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/app/TabsAdapter$TabInfo;->access$000(Lcom/narvii/app/TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/narvii/app/TabsAdapter$TabInfo;->access$100(Lcom/narvii/app/TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 52
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 125
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 128
    iget-object v2, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 141
    iget-object p1, p0, Lcom/narvii/app/TabsAdapter;->listener:Lcom/narvii/app/TabsAdapter$NVTabChangedListener;

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/narvii/app/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/app/TabsAdapter$NVTabChangedListener;->onTabChanged(Landroid/widget/TabHost;I)V

    :cond_0
    return-void
.end method
