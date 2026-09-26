.class public final Landroidx/compose/foundation/layout/PaddingValues$Absolute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/PaddingValues;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/PaddingValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Absolute"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPadding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingValues$Absolute\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,436:1\n155#2:437\n155#2:438\n155#2:439\n155#2:440\n*S KotlinDebug\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingValues$Absolute\n*L\n218#1:437\n220#1:438\n222#1:439\n224#1:440\n*E\n"
.end annotation


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    int-to-float p1, v0

    .line 3
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result p1

    :cond_0
    move v2, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    int-to-float p1, v0

    .line 4
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result p2

    :cond_1
    move v3, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    int-to-float p1, v0

    .line 5
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result p3

    :cond_2
    move v4, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    int-to-float p1, v0

    .line 6
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result p4

    :cond_3
    move v5, p4

    const/4 v6, 0x0

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingValues$Absolute;-><init>(FFFFLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingValues$Absolute;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

    return v0
.end method

.method public b(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

    return p1
.end method

.method public c(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

    return p1
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;

    .line 11
    .line 12
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

    .line 21
    .line 22
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

    .line 31
    .line 32
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

    .line 41
    .line 42
    iget p1, p1, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

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
    const-string v1, "PaddingValues.Absolute(left="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->left:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->top:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->right:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValues$Absolute;->bottom:F

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
