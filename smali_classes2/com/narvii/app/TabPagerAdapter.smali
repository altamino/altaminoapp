.class public Lcom/narvii/app/TabPagerAdapter;
.super Lcom/narvii/util/FixedFragmentStatePagerAdapter;
.source "TabPagerAdapter.java"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/TabPagerAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mContext:Landroid/content/Context;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/app/TabPagerAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/narvii/app/TabPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/TabPagerAdapter;->getTag(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 56
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTabView(I)Landroid/view/View;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 88
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->view:Landroid/view/View;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 83
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->title:Ljava/lang/String;

    return-object p1
.end method

.method public getTag(I)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 40
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->id:Ljava/lang/String;

    return-object p1
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/app/TabPagerAdapter$TabInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
