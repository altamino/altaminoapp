.class Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopSnappedSmoothScroller"
.end annotation


# static fields
.field private static final SPEED:F = 50.0f


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

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
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3
    int-to-float p1, p1

    .line 4
    .line 5
    const/high16 v0, 0x42480000    # 50.0f

    .line 6
    div-float/2addr v0, p1

    .line 7
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
