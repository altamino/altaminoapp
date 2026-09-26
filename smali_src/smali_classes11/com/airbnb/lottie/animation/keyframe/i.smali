.class public Lcom/airbnb/lottie/animation/keyframe/i;
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
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/h;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
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
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->point:Landroid/graphics/PointF;

    .line 11
    const/4 p1, 0x2

    .line 12
    .line 13
    new-array p1, p1, [F

    .line 14
    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pos:[F

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/i;->k(Lh0/a;F)Landroid/graphics/PointF;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lh0/a;F)Landroid/graphics/PointF;
    .locals 3
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
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/h;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/h;->h()Landroid/graphics/Path;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroid/graphics/PointF;

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/h;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Landroid/graphics/PathMeasure;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/h;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 34
    move-result v0

    .line 35
    mul-float/2addr p2, v0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pos:[F

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->point:Landroid/graphics/PointF;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/i;->pos:[F

    .line 46
    .line 47
    aget v0, p2, v2

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    aget p2, p2, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/i;->point:Landroid/graphics/PointF;

    .line 56
    return-object p1
.end method
