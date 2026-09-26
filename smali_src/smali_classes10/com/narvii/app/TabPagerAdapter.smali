.class public Lcom/narvii/app/TabPagerAdapter;
.super Lcom/narvii/util/FixedFragmentStatePagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/TabPagerAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

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
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/app/TabPagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/narvii/app/TabPagerAdapter;->getTag(I)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTabView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->view:Landroid/view/View;

    .line 11
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->title:Ljava/lang/String;

    .line 11
    return-object p1
.end method

.method public getTag(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/app/TabPagerAdapter$TabInfo;->id:Ljava/lang/String;

    .line 11
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter;->tabs:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
