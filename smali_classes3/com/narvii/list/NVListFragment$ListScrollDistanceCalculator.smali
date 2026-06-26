.class Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;
.super Ljava/lang/Object;
.source "NVListFragment.java"

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

    .line 433
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    if-eqz p4, :cond_3

    .line 466
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, 0x0

    .line 467
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p4

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 471
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    if-le p2, v0, :cond_1

    .line 472
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 473
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    sub-int v0, p3, v0

    goto :goto_1

    :cond_1
    if-ge p2, v0, :cond_2

    .line 475
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 476
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    goto :goto_0

    .line 478
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    :goto_0
    sub-int v0, p4, v0

    .line 480
    :goto_1
    iget v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    .line 482
    iget v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->onScrollDistance(I)V

    .line 483
    iput p3, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 484
    iput p4, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 485
    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 486
    iput p2, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    :cond_3
    :goto_2
    return-void
.end method

.method onScrollDistance(I)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVFragment$MenuController;->onScrollDistance(I)V

    return-void
.end method

.method onScrollFinish()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    invoke-interface {v0}, Lcom/narvii/app/NVFragment$MenuController;->onScrollFinish()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 439
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 452
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleItem:I

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleTop:I

    .line 454
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleBottom:I

    .line 455
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mFirstVisibleHeight:I

    .line 456
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    .line 457
    iput v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mTotalScrollDistance:I

    goto :goto_0

    .line 442
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->mListScrollStarted:Z

    .line 443
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    if-eqz p1, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->onScrollFinish()V

    .line 445
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;->isScrolling:Z

    :cond_3
    :goto_0
    return-void
.end method
