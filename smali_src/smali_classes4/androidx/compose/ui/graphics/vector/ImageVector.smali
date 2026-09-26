.class public final Landroidx/compose/ui/graphics/vector/ImageVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder;,
        Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final autoMirror:Z

.field private final defaultHeight:F

.field private final defaultWidth:F

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final root:Landroidx/compose/ui/graphics/vector/VectorGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tintBlendMode:I

.field private final tintColor:J

.field private final viewportHeight:F

.field private final viewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->Companion:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    iput-wide p7, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    iput p9, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    iput-boolean p10, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    return v0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/graphics/vector/VectorGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;

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
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 15
    .line 16
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return v2

    .line 24
    .line 25
    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    .line 26
    .line 27
    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    return v2

    .line 35
    .line 36
    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    .line 37
    .line 38
    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    return v2

    .line 46
    .line 47
    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    .line 48
    .line 49
    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    .line 50
    .line 51
    cmpg-float v1, v1, v3

    .line 52
    .line 53
    if-nez v1, :cond_9

    .line 54
    .line 55
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    .line 56
    .line 57
    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    .line 58
    .line 59
    cmpg-float v1, v1, v3

    .line 60
    .line 61
    if-nez v1, :cond_9

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 64
    .line 65
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    return v2

    .line 73
    .line 74
    :cond_5
    iget-wide v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    .line 75
    .line 76
    iget-wide v5, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_6

    .line 83
    return v2

    .line 84
    .line 85
    :cond_6
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    .line 86
    .line 87
    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/BlendMode;->G(II)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-nez v1, :cond_7

    .line 94
    return v2

    .line 95
    .line 96
    :cond_7
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    .line 97
    .line 98
    iget-boolean p1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    .line 99
    .line 100
    if-eq v1, p1, :cond_8

    .line 101
    return v2

    .line 102
    :cond_8
    return v0

    .line 103
    :cond_9
    return v2
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    return-wide v0
.end method

.method public final h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

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
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

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
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/VectorGroup;->hashCode()I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-wide v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/ui/graphics/BlendMode;->H(I)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final i()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    return v0
.end method
