.class Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LinearLayoutManagerWithSmoothScroller.java"


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

    .line 27
    iput-object p1, p0, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    .line 28
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 39
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    .line 34
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
