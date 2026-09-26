.class Lcom/google/android/material/shape/m$c;
.super Lcom/google/android/material/shape/m$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/m$e;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/m$e;FF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$g;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/shape/m$c;->operation:Lcom/google/android/material/shape/m$e;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/material/shape/m$c;->startX:F

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/material/shape/m$c;->startY:F

    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V
    .locals 5
    .param p2    # Lq3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/m$c;->operation:Lcom/google/android/material/shape/m$e;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/shape/m$e;->d(Lcom/google/android/material/shape/m$e;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/shape/m$c;->startY:F

    .line 9
    sub-float/2addr v0, v1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/shape/m$c;->operation:Lcom/google/android/material/shape/m$e;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/material/shape/m$e;->b(Lcom/google/android/material/shape/m$e;)F

    .line 15
    move-result v1

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/material/shape/m$c;->startX:F

    .line 18
    sub-float/2addr v1, v2

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/RectF;

    .line 21
    float-to-double v3, v0

    .line 22
    float-to-double v0, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 26
    move-result-wide v0

    .line 27
    double-to-float v0, v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 37
    .line 38
    iget p1, p0, Lcom/google/android/material/shape/m$c;->startX:F

    .line 39
    .line 40
    iget v1, p0, Lcom/google/android/material/shape/m$c;->startY:F

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/shape/m$c;->c()F

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p4, v0, v2, p3}, Lq3/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 54
    return-void
.end method

.method c()F
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/m$c;->operation:Lcom/google/android/material/shape/m$e;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/shape/m$e;->d(Lcom/google/android/material/shape/m$e;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/shape/m$c;->startY:F

    .line 9
    sub-float/2addr v0, v1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/shape/m$c;->operation:Lcom/google/android/material/shape/m$e;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/material/shape/m$e;->b(Lcom/google/android/material/shape/m$e;)F

    .line 15
    move-result v1

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/material/shape/m$c;->startX:F

    .line 18
    sub-float/2addr v1, v2

    .line 19
    div-float/2addr v0, v1

    .line 20
    float-to-double v0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 28
    move-result-wide v0

    .line 29
    double-to-float v0, v0

    .line 30
    return v0
.end method
