.class public abstract Lcom/narvii/util/LazyFragmentPagerAdapter;
.super Lcom/narvii/util/NoDetachFragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field inited:Z

.field loaded:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field setLoadedPos:Ljava/lang/Integer;

.field suspendForJump:Z

.field viewGroupId:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroidx/collection/SparseArrayCompat;

    .line 13
    return-void
.end method

.method private isLoaded(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroidx/collection/SparseArrayCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    iget v2, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    :goto_1
    iget-object v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroidx/collection/SparseArrayCompat;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method private setLoaded(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroidx/collection/SparseArrayCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroidx/collection/SparseArrayCompat;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eq v0, p2, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public abstract getFragmentId(I)J
.end method

.method protected getFragmentTag(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    new-instance p1, Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide v0, 0xefffff000000L

    .line 17
    int-to-long v2, p1

    .line 18
    or-long/2addr v0, v2

    .line 19
    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return-object v0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x1

    .line 39
    .line 40
    iput-boolean p2, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    .line 41
    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p3, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    .line 3
    .line 4
    if-nez p3, :cond_2

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    cmpl-float p2, p2, p3

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    .line 14
    .line 15
    if-lez p2, :cond_2

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-lt p1, p2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 27
    move-result p1

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    .line 4
    return-void
.end method

.method public prepareForJump(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    .line 7
    return-void
.end method
