.class public Lcom/narvii/app/NVScrollablePagerAdapter;
.super Lcom/narvii/util/LazyFragmentPagerAdapter;
.source "NVScrollablePagerAdapter.java"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mContext:Landroid/content/Context;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 62
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentId(I)J
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 54
    iget-object v1, v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    .line 55
    :goto_0
    iget-object v0, v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v2, v0

    :goto_1
    const/16 v0, 0x20

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    int-to-long v2, p1

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public getPageTabView(I)Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 99
    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->view:Landroid/view/View;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 94
    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    return-object p1
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
