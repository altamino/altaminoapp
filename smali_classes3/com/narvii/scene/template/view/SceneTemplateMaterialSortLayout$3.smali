.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "SceneTemplateMaterialSortLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private hasMoved:Z

.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->$context:Landroid/content/Context;

    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getBoundingBoxMargin()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->$context:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public final getHasMoved()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->hasMoved:Z

    return v0
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
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->hasMoved:Z

    .line 69
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 70
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 71
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-virtual {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-virtual {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_0
    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_0

    .line 87
    iget-boolean p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->hasMoved:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->hasMoved:Z

    .line 89
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final setHasMoved(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;->hasMoved:Z

    return-void
.end method
