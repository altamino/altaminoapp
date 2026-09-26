.class public final Landroidx/compose/ui/graphics/Float16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Float16$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/ui/graphics/Float16;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Float16$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Epsilon:S

.field private static final FP16_COMBINED:I = 0x7fff

.field private static final FP16_EXPONENT_BIAS:I = 0xf

.field private static final FP16_EXPONENT_MASK:I = 0x1f

.field private static final FP16_EXPONENT_MAX:I = 0x7c00

.field private static final FP16_EXPONENT_SHIFT:I = 0xa

.field private static final FP16_SIGNIFICAND_MASK:I = 0x3ff

.field private static final FP16_SIGN_MASK:I = 0x8000

.field private static final FP16_SIGN_SHIFT:I = 0xf

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final FP32_EXPONENT_BIAS:I = 0x7f

.field private static final FP32_EXPONENT_MASK:I = 0xff

.field private static final FP32_EXPONENT_SHIFT:I = 0x17

.field private static final FP32_QNAN_MASK:I = 0x400000

.field private static final FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final FP32_SIGN_SHIFT:I = 0x1f

.field private static final LowestValue:S

.field public static final MaxExponent:I = 0xf

.field private static final MaxValue:S

.field public static final MinExponent:I = -0xe

.field private static final MinNormal:S

.field private static final MinValue:S

.field private static final NaN:S

.field private static final NegativeInfinity:S

.field private static final NegativeOne:S

.field private static final NegativeZero:S

.field private static final One:S

.field private static final PositiveInfinity:S

.field private static final PositiveZero:S

.field public static final Size:I = 0x10


# instance fields
.field private final halfValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/Float16$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Float16$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    .line 9
    .line 10
    const/16 v0, 0x1400

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 14
    move-result v0

    .line 15
    .line 16
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->Epsilon:S

    .line 17
    .line 18
    const/16 v0, -0x401

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 22
    move-result v0

    .line 23
    .line 24
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->LowestValue:S

    .line 25
    .line 26
    const/16 v0, 0x7bff

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 30
    move-result v0

    .line 31
    .line 32
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MaxValue:S

    .line 33
    .line 34
    const/16 v0, 0x400

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 38
    move-result v0

    .line 39
    .line 40
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinNormal:S

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 45
    move-result v0

    .line 46
    .line 47
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinValue:S

    .line 48
    .line 49
    const/16 v0, 0x7e00

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 53
    move-result v0

    .line 54
    .line 55
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    .line 56
    .line 57
    const/16 v0, -0x400

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 61
    move-result v0

    .line 62
    .line 63
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeInfinity:S

    .line 64
    .line 65
    const/16 v0, -0x8000

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 69
    move-result v0

    .line 70
    .line 71
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeZero:S

    .line 72
    .line 73
    const/16 v0, 0x7c00

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 77
    move-result v0

    .line 78
    .line 79
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveInfinity:S

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 84
    move-result v0

    .line 85
    .line 86
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveZero:S

    .line 87
    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->c(F)S

    .line 92
    move-result v0

    .line 93
    .line 94
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->One:S

    .line 95
    .line 96
    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->c(F)S

    .line 100
    move-result v0

    .line 101
    .line 102
    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeOne:S

    .line 103
    .line 104
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 105
    .line 106
    const/high16 v0, 0x3f000000    # 0.5f

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 110
    move-result v0

    .line 111
    .line 112
    sput v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    .line 113
    return-void
.end method

.method public static b(SS)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->h(S)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->h(S)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->h(S)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    .line 23
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/Float16$Companion;->b(Landroidx/compose/ui/graphics/Float16$Companion;S)I

    .line 27
    move-result p0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16$Companion;->b(Landroidx/compose/ui/graphics/Float16$Companion;S)I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public static c(F)S
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/Float16$Companion;->a(Landroidx/compose/ui/graphics/Float16$Companion;F)S

    .line 6
    move-result p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static d(S)S
    .locals 0

    .line 1
    return p0
.end method

.method public static e(SLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/graphics/Float16;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Float16;->k()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static f(S)I
    .locals 0

    .line 1
    return p0
.end method

.method public static final h(S)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    const/16 v0, 0x7c00

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final i(S)F
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    and-int/2addr v0, p0

    .line 5
    .line 6
    .line 7
    const v1, 0x8000

    .line 8
    and-int/2addr v1, p0

    .line 9
    .line 10
    ushr-int/lit8 v0, v0, 0xa

    .line 11
    .line 12
    const/16 v2, 0x1f

    .line 13
    and-int/2addr v0, v2

    .line 14
    .line 15
    and-int/lit16 p0, p0, 0x3ff

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 22
    .line 23
    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    add-int/2addr p0, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    move-result p0

    .line 29
    .line 30
    sget v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    .line 31
    sub-float/2addr p0, v0

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    neg-float p0, p0

    .line 36
    :goto_0
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    move v0, p0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_2
    shl-int/lit8 p0, p0, 0xd

    .line 42
    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    const/16 v0, 0xff

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    const/high16 v2, 0x400000

    .line 50
    or-int/2addr p0, v2

    .line 51
    :cond_3
    :goto_1
    move v3, v0

    .line 52
    move v0, p0

    .line 53
    move p0, v3

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_4
    add-int/lit8 v0, v0, 0x70

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :goto_2
    shl-int/lit8 v1, v1, 0x10

    .line 60
    .line 61
    shl-int/lit8 p0, p0, 0x17

    .line 62
    or-int/2addr p0, v1

    .line 63
    or-int/2addr p0, v0

    .line 64
    .line 65
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public static j(S)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->i(S)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public a(S)I
    .locals 1

    .line 1
    .line 2
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16;->b(SS)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Float16;->k()S

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/Float16;->a(S)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Float16;->e(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->f(S)I

    move-result v0

    return v0
.end method

.method public final synthetic k()S
    .locals 1

    .line 1
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-short v0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->j(S)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
