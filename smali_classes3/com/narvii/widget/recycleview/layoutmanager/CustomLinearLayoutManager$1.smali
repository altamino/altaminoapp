.class Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "CustomLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->access$000(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    .line 42
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
