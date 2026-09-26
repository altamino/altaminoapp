.class public Lcom/google/android/material/shape/j;
.super Lcom/google/android/material/shape/d;
.source "SourceFile"


# instance fields
.field radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/j;->radius:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/shape/d;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/j;->radius:F

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/shape/m;FFF)V
    .locals 11
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    mul-float v0, p4, p3

    .line 3
    .line 4
    const/high16 v1, 0x43340000    # 180.0f

    .line 5
    .line 6
    sub-float v2, v1, p2

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/material/shape/m;->o(FFFF)V

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    mul-float/2addr p4, v0

    .line 16
    .line 17
    mul-float v8, p4, p3

    .line 18
    .line 19
    const/high16 v9, 0x43340000    # 180.0f

    .line 20
    move-object v4, p1

    .line 21
    move v7, v8

    .line 22
    move v10, p2

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/shape/m;->a(FFFFFF)V

    .line 26
    return-void
.end method
