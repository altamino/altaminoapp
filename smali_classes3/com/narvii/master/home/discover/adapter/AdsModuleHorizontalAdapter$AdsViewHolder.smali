.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AdsViewHolder"
.end annotation


# instance fields
.field private currentSnapPos:I

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903dc

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.embed_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 117
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    .line 121
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setInnerRecyclerView$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/support/v7/widget/RecyclerView;)V

    const v0, 0x7f090595

    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    invoke-static {p1, v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/widgets/AdsModuleIndicator;)V

    .line 123
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 124
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 126
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of p2, p1, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    if-eqz p2, :cond_0

    .line 145
    check-cast p1, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setPositionChangeListener(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getCurrentSnapPos$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    return p0
.end method

.method public static final synthetic access$maybeNotifySnapPositionChange(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->maybeNotifySnapPositionChange(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$setCurrentSnapPos$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    return-void
.end method

.method private final getSnapPosition(Landroid/support/v7/widget/SnapHelper;Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .line 165
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "findSnapView(layoutManag\u2026 RecyclerView.NO_POSITION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method private final maybeNotifySnapPositionChange(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->getSnapPosition(Landroid/support/v7/widget/SnapHelper;Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 159
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 160
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setSelectedIndex(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
