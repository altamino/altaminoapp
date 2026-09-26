.class final Landroidx/compose/foundation/layout/FixedDpInsets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/WindowInsets;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsets.kt\nandroidx/compose/foundation/layout/FixedDpInsets\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,649:1\n1#2:650\n*E\n"
.end annotation


# instance fields
.field private final bottomDp:F

.field private final leftDp:F

.field private final rightDp:F

.field private final topDp:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    iput p2, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    iput p3, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    iput p4, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/FixedDpInsets;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/unit/Density;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget p2, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public c(Landroidx/compose/ui/unit/Density;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget p2, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FixedDpInsets;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/layout/FixedDpInsets;

    .line 15
    .line 16
    iget v3, p1, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    .line 25
    .line 26
    iget v3, p1, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    .line 35
    .line 36
    iget v3, p1, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    .line 45
    .line 46
    iget p1, p1, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "Insets(left="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->leftDp:F

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, ", top="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->topDp:F

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, ", right="

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->rightDp:F

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, ", bottom="

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget v1, p0, Landroidx/compose/foundation/layout/FixedDpInsets;->bottomDp:F

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const/16 v1, 0x29

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
