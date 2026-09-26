.class public final Landroidx/compose/ui/geometry/MutableRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutableRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableRect.kt\nandroidx/compose/ui/geometry/MutableRect\n*L\n1#1,101:1\n40#1,5:102\n*S KotlinDebug\n*F\n+ 1 MutableRect.kt\nandroidx/compose/ui/geometry/MutableRect\n*L\n51#1:102,5\n*E\n"
.end annotation


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 6
    .line 7
    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 8
    .line 9
    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 10
    .line 11
    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 12
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return v0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    return v0
.end method

.method public final d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    return v0
.end method

.method public final e(FFFF)V
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 6
    move-result p1

    .line 7
    .line 8
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 14
    move-result p1

    .line 15
    .line 16
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 17
    .line 18
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 25
    .line 26
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 27
    .line 28
    .line 29
    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 33
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final g(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final h(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final i(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    return-void
.end method

.method public final j(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "MutableRect("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const/16 v1, 0x29

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
