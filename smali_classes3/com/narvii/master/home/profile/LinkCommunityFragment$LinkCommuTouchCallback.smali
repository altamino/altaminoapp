.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkCommuTouchCallback"
.end annotation


# instance fields
.field private hasMoved:Z

.field private final listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    iput-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    return-object v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 364
    invoke-static {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 368
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->hasMoved:Z

    .line 369
    instance-of v0, p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    if-eqz v0, :cond_0

    .line 370
    check-cast p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p3, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v0

    if-ltz v0, :cond_0

    .line 371
    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v2

    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;->onItemMoved(II)V

    .line 373
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->setPos(I)V

    .line 374
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->setPos(I)V

    :cond_0
    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 381
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_0

    .line 382
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->hasMoved:Z

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    invoke-interface {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;->onItemMoveEnd()V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
