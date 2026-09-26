.class Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    return v2

    .line 9
    .line 10
    :cond_0
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v3, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 56
    .line 57
    iget v3, v0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    .line 58
    const/4 v4, 0x4

    .line 59
    .line 60
    if-eq v3, v4, :cond_2

    .line 61
    .line 62
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 63
    .line 64
    iget v3, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureStartIndex:I

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/model/Feed;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    .line 80
    move-result v0

    .line 81
    const/4 v3, 0x2

    .line 82
    .line 83
    if-ne v0, v3, :cond_1

    .line 84
    return v1

    .line 85
    :cond_1
    return v2

    .line 86
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

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    const p1, 0x1090003

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 23
    .line 24
    iget p3, p3, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    .line 25
    .line 26
    if-eq p1, p3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 33
    .line 34
    iget p3, p3, Lcom/narvii/feed/FrontFeedListFragment;->extraHeight:I

    .line 35
    .line 36
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 40
    :cond_1
    return-object p2
.end method
