.class Lcom/narvii/paging/NVRecyclerViewFragment$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "NVRecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/NVRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 304
    iget-object v3, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v3, v3, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroid/support/v7/widget/SnapHelper;

    if-eqz v3, :cond_6

    .line 305
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    if-eq v5, v4, :cond_2

    .line 310
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {v6}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$400(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v6, 0x0

    .line 313
    instance-of v7, p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v7, :cond_1

    .line 314
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v6

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$400(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    move-result v7

    invoke-virtual {p1, v7, v5, v6}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 318
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1, v5}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$402(Lcom/narvii/paging/NVRecyclerViewFragment;I)I

    :cond_2
    if-eqz v3, :cond_6

    .line 322
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 323
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget v5, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    if-eq p1, v5, :cond_6

    .line 324
    iget-object v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    instance-of v5, v2, Lcom/narvii/paging/PageView;

    if-eqz v5, :cond_3

    .line 325
    check-cast v2, Lcom/narvii/paging/PageView;

    invoke-virtual {v2, v1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 327
    :cond_3
    instance-of v2, v3, Lcom/narvii/paging/PageView;

    if-eqz v2, :cond_4

    .line 328
    move-object v2, v3

    check-cast v2, Lcom/narvii/paging/PageView;

    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 330
    :cond_4
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    if-eq v2, v4, :cond_5

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 331
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v4, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    iget v5, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    invoke-virtual {v2, v4, v3, v5, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onScrollNext(Landroid/view/View;Landroid/view/View;II)V

    .line 333
    :cond_5
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v2, p1, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    .line 334
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iput p1, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 335
    iput-object v3, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 340
    :cond_6
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$300(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;

    move-result-object p1

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/logging/ImpressionDelegate;->onScrollIdleStateChanged(Z)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 346
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 347
    instance-of p3, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p3, :cond_3

    .line 348
    move-object p3, p2

    check-cast p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->firstShownPosition()I

    move-result v0

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-boolean p3, p3, Lcom/narvii/paging/NVRecyclerViewFragment;->first:Z

    if-nez p3, :cond_3

    const/4 p3, 0x0

    .line 349
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 351
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    iput p2, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 352
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget v0, p2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$400(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 p2, 0x0

    .line 355
    instance-of v0, p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 356
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget p2, p2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    invoke-virtual {p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$400(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget v1, v1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 360
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    invoke-static {p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$402(Lcom/narvii/paging/NVRecyclerViewFragment;I)I

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    invoke-virtual {p1, p2, p3}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    .line 363
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iput-object p3, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 364
    instance-of p2, p3, Lcom/narvii/paging/PageView;

    if-eqz p2, :cond_2

    .line 365
    check-cast p3, Lcom/narvii/paging/PageView;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->first:Z

    :cond_3
    return-void
.end method
