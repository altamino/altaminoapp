.class public abstract Lcom/narvii/util/LazyFragmentPagerAdapter;
.super Lcom/narvii/util/NoDetachFragmentPagerAdapter;
.source "LazyFragmentPagerAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field fragmentManager:Landroid/support/v4/app/FragmentManager;

.field inited:Z

.field loaded:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field setLoadedPos:Ljava/lang/Integer;

.field suspendForJump:Z

.field viewGroupId:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 23
    new-instance p1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {p1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private isLoaded(I)Z
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 34
    iget-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 36
    :cond_0
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    move-result-wide v0

    .line 40
    iget v2, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    invoke-static {v2, v0, v1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    :goto_1
    iget-object v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 45
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private setLoaded(I)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->loaded:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createFragment(I)Landroid/support/v4/app/Fragment;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract getFragmentId(I)J
.end method

.method protected getFragmentTag(I)Ljava/lang/String;
    .locals 3

    .line 139
    iget-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Landroid/support/v4/app/Fragment;

    invoke-direct {p1}, Landroid/support/v4/app/Fragment;-><init>()V

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 4

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->isLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, 0xefffff000000L

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 73
    iget v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoadedPos:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget v1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->viewGroupId:I

    invoke-virtual {p0, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->getFragmentId(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 82
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->inited:Z

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 111
    iget-boolean p3, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    if-nez p3, :cond_2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 119
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    return-void
.end method

.method public prepareForJump(I)V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/narvii/util/LazyFragmentPagerAdapter;->suspendForJump:Z

    .line 106
    invoke-direct {p0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->setLoaded(I)V

    return-void
.end method
