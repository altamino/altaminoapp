.class public final Landroidx/compose/ui/graphics/colorspace/Oklab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final InverseM1:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final InverseM2:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final M1:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final M2:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    new-array v1, v0, [F

    .line 13
    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->a()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->b()[F

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->b()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v4, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->e([F[F[F)[F

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 51
    move-result-object v1

    .line 52
    .line 53
    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    .line 54
    .line 55
    new-array v0, v0, [F

    .line 56
    .line 57
    .line 58
    fill-array-data v0, :array_1

    .line 59
    .line 60
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->j([F)[F

    .line 64
    move-result-object v1

    .line 65
    .line 66
    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->j([F)[F

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    .line 73
    return-void

    .line 74
    nop

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    :array_0
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    :array_1
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->a()J

    .line 11
    move-result-wide v3

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move v5, p2

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/k;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a([F)[F
    .locals 6
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "v"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    aget v1, p1, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 17
    move-result v1

    .line 18
    .line 19
    aget v2, p1, v0

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 23
    move-result v2

    .line 24
    float-to-double v2, v2

    .line 25
    .line 26
    .line 27
    const v4, 0x3eaaaaab

    .line 28
    float-to-double v4, v4

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 32
    move-result-wide v2

    .line 33
    double-to-float v2, v2

    .line 34
    mul-float/2addr v1, v2

    .line 35
    .line 36
    aput v1, p1, v0

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    aget v1, p1, v0

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 43
    move-result v1

    .line 44
    .line 45
    aget v2, p1, v0

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v2

    .line 50
    float-to-double v2, v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 54
    move-result-wide v2

    .line 55
    double-to-float v2, v2

    .line 56
    mul-float/2addr v1, v2

    .line 57
    .line 58
    aput v1, p1, v0

    .line 59
    const/4 v0, 0x2

    .line 60
    .line 61
    aget v1, p1, v0

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 65
    move-result v1

    .line 66
    .line 67
    aget v2, p1, v0

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 71
    move-result v2

    .line 72
    float-to-double v2, v2

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 76
    move-result-wide v2

    .line 77
    double-to-float v2, v2

    .line 78
    mul-float/2addr v1, v2

    .line 79
    .line 80
    aput v1, p1, v0

    .line 81
    .line 82
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 86
    return-object p1
.end method

.method public d(I)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    return p1
.end method

.method public e(I)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x41000000    # -0.5f

    :goto_0
    return p1
.end method

.method public i([F)[F
    .locals 6
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "v"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    aget v1, p1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Lj8/m;->m(FFF)F

    .line 15
    move-result v1

    .line 16
    .line 17
    aput v1, p1, v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    const/high16 v3, -0x41000000    # -0.5f

    .line 23
    .line 24
    const/high16 v4, 0x3f000000    # 0.5f

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3, v4}, Lj8/m;->m(FFF)F

    .line 28
    move-result v2

    .line 29
    .line 30
    aput v2, p1, v1

    .line 31
    const/4 v2, 0x2

    .line 32
    .line 33
    aget v5, p1, v2

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v3, v4}, Lj8/m;->m(FFF)F

    .line 37
    move-result v3

    .line 38
    .line 39
    aput v3, p1, v2

    .line 40
    .line 41
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    .line 42
    .line 43
    .line 44
    invoke-static {v3, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 45
    .line 46
    aget v3, p1, v0

    .line 47
    .line 48
    mul-float v4, v3, v3

    .line 49
    mul-float/2addr v4, v3

    .line 50
    .line 51
    aput v4, p1, v0

    .line 52
    .line 53
    aget v0, p1, v1

    .line 54
    .line 55
    mul-float v3, v0, v0

    .line 56
    mul-float/2addr v3, v0

    .line 57
    .line 58
    aput v3, p1, v1

    .line 59
    .line 60
    aget v0, p1, v2

    .line 61
    .line 62
    mul-float v1, v0, v0

    .line 63
    mul-float/2addr v1, v0

    .line 64
    .line 65
    aput v1, p1, v2

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 71
    return-object p1
.end method
