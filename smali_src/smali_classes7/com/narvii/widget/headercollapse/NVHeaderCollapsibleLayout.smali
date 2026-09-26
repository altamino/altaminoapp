.class public Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;
.super Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;
.source "SourceFile"


# instance fields
.field private mBindNVListViewTask:Ljava/lang/Runnable;

.field private mCurShowingViewRoot:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mNVListViewInPager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/narvii/widget/NVListView;",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 5
    new-instance p1, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    return-void
.end method

.method private bindNVListView(Lcom/narvii/widget/NVListView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    instance-of v3, v2, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/widget/NVListView;

    .line 28
    return-object v2

    .line 29
    .line 30
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    return-object v2

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    return-object v0
.end method

.method private findNVListViewInPager(Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap<",
            "Lcom/narvii/widget/NVListView;",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    instance-of v2, v1, Lcom/narvii/widget/NVListView;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v1, Landroid/view/ViewGroup;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1, p2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListViewInPager(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 47
    .line 48
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method private findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    instance-of v3, v2, Lcom/narvii/widget/NVViewPager;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/widget/NVViewPager;

    .line 28
    return-object v2

    .line 29
    .line 30
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    return-object v2

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    return-object v0
.end method

.method static bridge synthetic k(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mCurShowingViewRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mCurShowingViewRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->bindNVListView(Lcom/narvii/widget/NVListView;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListViewInPager(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    return-void
.end method

.method private resetListViews()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/widget/NVListView;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->resetListViews()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected onFirstLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onFirstLayout()V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->bindNVListView(Lcom/narvii/widget/NVListView;)V

    .line 41
    return-void
.end method
