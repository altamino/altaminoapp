.class public Lcom/narvii/widget/BezierEvaluator;
.super Ljava/lang/Object;
.source "BezierEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private pointF1:Landroid/graphics/PointF;

.field private pointF2:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/narvii/widget/BezierEvaluator;->pointF1:Landroid/graphics/PointF;

    .line 17
    iput-object p2, p0, Lcom/narvii/widget/BezierEvaluator;->pointF2:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 25
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    mul-float v2, v0, v0

    mul-float v2, v2, v0

    .line 28
    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v0

    mul-float v0, v0, v4

    mul-float v0, v0, p1

    iget-object v5, p0, Lcom/narvii/widget/BezierEvaluator;->pointF1:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v0

    add-float/2addr v3, v6

    mul-float v4, v4, p1

    mul-float v4, v4, p1

    iget-object v6, p0, Lcom/narvii/widget/BezierEvaluator;->pointF2:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    mul-float v7, v7, v4

    add-float/2addr v3, v7

    mul-float v7, p1, p1

    mul-float v7, v7, p1

    iget p1, p3, Landroid/graphics/PointF;->x:F

    mul-float p1, p1, v7

    add-float/2addr v3, p1

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 33
    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    iget p1, v5, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    iget p1, v6, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    iget p1, p3, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, p1

    add-float/2addr v2, v7

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/widget/BezierEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
