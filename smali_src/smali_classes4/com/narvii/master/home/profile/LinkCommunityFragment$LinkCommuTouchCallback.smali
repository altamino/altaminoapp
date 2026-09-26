.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    .line 13
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    return-object v0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "viewHolder"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x3

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 16
    move-result p1

    .line 17
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

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "viewHolder"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "target"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->hasMoved:Z

    .line 19
    .line 20
    instance-of v0, p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    instance-of v0, p3, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    check-cast p3, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-ltz v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v2, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;->onItemMoved(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->getPos()I

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->setPos(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->setPos(I)V

    .line 70
    :cond_0
    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->hasMoved:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;->listener:Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;->onItemMoveEnd()V

    .line 15
    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
