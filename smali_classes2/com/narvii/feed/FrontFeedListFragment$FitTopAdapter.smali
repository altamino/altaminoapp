.class Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitTopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 495
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .line 500
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget v1, v0, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 503
    :cond_0
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 504
    iget v3, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    if-nez v3, :cond_2

    .line 505
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 506
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 507
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget v3, v0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 509
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    iget v3, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x1090003

    .line 535
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const/4 p1, 0x0

    .line 536
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 538
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget p3, p3, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    if-eq p1, p3, :cond_1

    .line 539
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget p3, p3, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 540
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-object p2
.end method
