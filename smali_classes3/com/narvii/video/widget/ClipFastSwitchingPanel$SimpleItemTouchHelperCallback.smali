.class final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ClipFastSwitchingPanel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleItemTouchHelperCallback"
.end annotation


# instance fields
.field private final adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;

.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;

    return-object v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xc

    const/4 p2, 0x0

    .line 183
    invoke-static {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p2"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;->onItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
