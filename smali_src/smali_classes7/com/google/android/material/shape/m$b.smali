.class Lcom/google/android/material/shape/m$b;
.super Lcom/google/android/material/shape/m$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/m$d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/m$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$g;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V
    .locals 8
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
    iget-object v0, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/material/shape/m$d;->h(Lcom/google/android/material/shape/m$d;)F

    .line 6
    move-result v6

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/material/shape/m$d;->i(Lcom/google/android/material/shape/m$d;)F

    .line 12
    move-result v7

    .line 13
    .line 14
    new-instance v4, Landroid/graphics/RectF;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/material/shape/m$d;->b(Lcom/google/android/material/shape/m$d;)F

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/material/shape/m$d;->c(Lcom/google/android/material/shape/m$d;)F

    .line 26
    move-result v1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/google/android/material/shape/m$d;->d(Lcom/google/android/material/shape/m$d;)F

    .line 32
    move-result v2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/material/shape/m$b;->operation:Lcom/google/android/material/shape/m$d;

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/android/material/shape/m$d;->e(Lcom/google/android/material/shape/m$d;)F

    .line 38
    move-result v3

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    move-object v1, p2

    .line 43
    move-object v2, p4

    .line 44
    move-object v3, p1

    .line 45
    move v5, p3

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v1 .. v7}, Lq3/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 49
    return-void
.end method
