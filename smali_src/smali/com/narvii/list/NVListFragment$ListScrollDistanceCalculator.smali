.class Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListScrollDistanceCalculator"
.end annotation


# instance fields
.field private isScrolling:Z

.field private mFirstVisibleBottom:I

.field private mFirstVisibleHeight:I

.field private mFirstVisibleItem:I

.field private mFirstVisibleTop:I

.field private mListScrollStarted:Z

.field private mTotalScrollDistance:I

.field menuController:Lcom/narvii/app/NVFragment$MenuController;

.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;Lcom/narvii/app/NVFragment$MenuController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 8
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    .line 2
    if-eqz p4, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result p3

    .line 7
    .line 8
    if-eqz p3, :cond_3

    .line 9
    .line 10
    iget-boolean p3, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 p3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    move-result p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 26
    move-result p4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 30
    move-result p1

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    .line 33
    .line 34
    if-le p2, v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 37
    .line 38
    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 39
    add-int/2addr v0, v1

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 42
    .line 43
    sub-int v0, p3, v0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    if-ge p2, v0, :cond_2

    .line 47
    .line 48
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 51
    sub-int/2addr v0, v1

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 54
    .line 55
    :goto_0
    sub-int v0, p4, v0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :goto_1
    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    .line 62
    add-int/2addr v1, v0

    .line 63
    .line 64
    iput v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->onScrollDistance(I)V

    .line 71
    .line 72
    iput p3, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 73
    .line 74
    iput p4, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 75
    .line 76
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 77
    .line 78
    iput p2, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    .line 79
    :cond_3
    :goto_2
    return-void
.end method

.method onScrollDistance(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/app/NVFragment$MenuController;->onScrollDistance(I)V

    .line 6
    return-void
.end method

.method onScrollFinish()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVFragment$MenuController;->onScrollFinish()V

    .line 6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq p2, v1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 42
    move-result p1

    .line 43
    .line 44
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->onScrollFinish()V

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    .line 61
    :cond_3
    :goto_0
    return-void
.end method
