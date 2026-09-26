.class public Lcom/google/android/material/shape/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(FFLcom/google/android/material/shape/m;)V
    .locals 0
    .param p3    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public b(Lcom/google/android/material/shape/m;FFF)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/material/shape/d;->a(FFLcom/google/android/material/shape/m;)V

    .line 4
    return-void
.end method

.method public c(Lcom/google/android/material/shape/m;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p5, p4}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    .line 4
    move-result p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/d;->b(Lcom/google/android/material/shape/m;FFF)V

    .line 8
    return-void
.end method
