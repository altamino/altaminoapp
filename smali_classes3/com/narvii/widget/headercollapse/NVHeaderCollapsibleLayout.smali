.class public Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;
.super Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;
.source "NVHeaderCollapsibleLayout.java"


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

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    .line 28
    new-instance p1, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->resetListViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mCurShowingViewRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mCurShowingViewRoot:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/util/HashMap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListViewInPager(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->bindNVListView(Lcom/narvii/widget/NVListView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bindNVListView(Lcom/narvii/widget/NVListView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    .line 175
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 108
    instance-of v3, v2, Lcom/narvii/widget/NVListView;

    if-eqz v3, :cond_1

    .line 109
    check-cast v2, Lcom/narvii/widget/NVListView;

    return-object v2

    .line 110
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 111
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 126
    instance-of v2, v1, Lcom/narvii/widget/NVListView;

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    check-cast v1, Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 131
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListViewInPager(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/narvii/widget/NVViewPager;

    if-eqz v3, :cond_1

    .line 143
    check-cast v2, Lcom/narvii/widget/NVViewPager;

    return-object v2

    .line 144
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 145
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private resetListViews()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVListView;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mNVListViewInPager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mBindNVListViewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onFirstLayout()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onFirstLayout()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVViewPager(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 61
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;

    invoke-direct {v2, p0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;-><init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->findNVListVIew(Landroid/view/ViewGroup;)Lcom/narvii/widget/NVListView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->bindNVListView(Lcom/narvii/widget/NVListView;)V

    return-void
.end method
