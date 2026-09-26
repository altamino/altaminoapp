.class Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;->a(Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 9
    int-to-float p1, p1

    .line 10
    div-float/2addr v0, p1

    .line 11
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager$1;->this$0:Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
