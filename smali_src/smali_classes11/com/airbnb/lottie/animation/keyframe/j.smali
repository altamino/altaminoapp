.class public Lcom/airbnb/lottie/animation/keyframe/j;
.super Lcom/airbnb/lottie/animation/keyframe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/f<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/f;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/PointF;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/j;->point:Landroid/graphics/PointF;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/j;->k(Lh0/a;F)Landroid/graphics/PointF;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lh0/a;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lh0/a;->endValue:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/graphics/PointF;

    .line 11
    .line 12
    check-cast p1, Landroid/graphics/PointF;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/j;->point:Landroid/graphics/PointF;

    .line 15
    .line 16
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 17
    .line 18
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 19
    sub-float/2addr v3, v2

    .line 20
    mul-float/2addr v3, p2

    .line 21
    add-float/2addr v2, v3

    .line 22
    .line 23
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 26
    sub-float/2addr p1, v0

    .line 27
    mul-float/2addr p2, p1

    .line 28
    add-float/2addr v0, p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/j;->point:Landroid/graphics/PointF;

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Missing values for keyframe."

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method
