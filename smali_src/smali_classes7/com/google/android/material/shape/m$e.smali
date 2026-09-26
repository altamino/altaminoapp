.class public Lcom/google/android/material/shape/m$e;
.super Lcom/google/android/material/shape/m$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$f;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/m$e;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/shape/m$e;->x:F

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/m$e;F)F
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/shape/m$e;->x:F

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/google/android/material/shape/m$e;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/shape/m$e;->y:F

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/m$e;F)F
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/shape/m$e;->y:F

    .line 3
    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/m$f;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/shape/m$e;->x:F

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/shape/m$e;->y:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 19
    return-void
.end method
