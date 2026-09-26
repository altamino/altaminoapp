.class public Lcom/narvii/app/NVScrollablePagerAdapter;
.super Lcom/narvii/util/LazyFragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

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
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 15
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFragmentAt(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentTag(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getFragmentId(I)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->id:Ljava/lang/String;

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    move-wide v4, v2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v1

    .line 21
    int-to-long v4, v1

    .line 22
    .line 23
    :goto_0
    iget-object v0, v0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v0

    .line 35
    int-to-long v2, v0

    .line 36
    .line 37
    :goto_1
    const/16 v0, 0x20

    .line 38
    .line 39
    shl-long v0, v4, v0

    .line 40
    or-long/2addr v0, v2

    .line 41
    int-to-long v2, p1

    .line 42
    xor-long/2addr v0, v2

    .line 43
    return-wide v0
.end method

.method public getPageTabView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->view:Landroid/view/View;

    .line 11
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    .line 11
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
