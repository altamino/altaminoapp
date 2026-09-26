.class public Lcom/google/android/material/internal/u$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public bottom:I

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/internal/u$f;->start:I

    iput p2, p0, Lcom/google/android/material/internal/u$f;->top:I

    iput p3, p0, Lcom/google/android/material/internal/u$f;->end:I

    iput p4, p0, Lcom/google/android/material/internal/u$f;->bottom:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/u$f;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/u$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcom/google/android/material/internal/u$f;->start:I

    iput v0, p0, Lcom/google/android/material/internal/u$f;->start:I

    .line 4
    iget v0, p1, Lcom/google/android/material/internal/u$f;->top:I

    iput v0, p0, Lcom/google/android/material/internal/u$f;->top:I

    .line 5
    iget v0, p1, Lcom/google/android/material/internal/u$f;->end:I

    iput v0, p0, Lcom/google/android/material/internal/u$f;->end:I

    .line 6
    iget p1, p1, Lcom/google/android/material/internal/u$f;->bottom:I

    iput p1, p0, Lcom/google/android/material/internal/u$f;->bottom:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/internal/u$f;->start:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/internal/u$f;->top:I

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/material/internal/u$f;->end:I

    .line 7
    .line 8
    iget v3, p0, Lcom/google/android/material/internal/u$f;->bottom:I

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->M0(Landroid/view/View;IIII)V

    .line 12
    return-void
.end method
