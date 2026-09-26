.class public final Landroidx/palette/graphics/Target;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/Target$Builder;
    }
.end annotation


# static fields
.field public static final DARK_MUTED:Landroidx/palette/graphics/Target;

.field public static final DARK_VIBRANT:Landroidx/palette/graphics/Target;

.field static final INDEX_MAX:I = 0x2

.field static final INDEX_MIN:I = 0x0

.field static final INDEX_TARGET:I = 0x1

.field static final INDEX_WEIGHT_LUMA:I = 0x1

.field static final INDEX_WEIGHT_POP:I = 0x2

.field static final INDEX_WEIGHT_SAT:I = 0x0

.field public static final LIGHT_MUTED:Landroidx/palette/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

.field private static final MAX_DARK_LUMA:F = 0.45f

.field private static final MAX_MUTED_SATURATION:F = 0.4f

.field private static final MAX_NORMAL_LUMA:F = 0.7f

.field private static final MIN_LIGHT_LUMA:F = 0.55f

.field private static final MIN_NORMAL_LUMA:F = 0.3f

.field private static final MIN_VIBRANT_SATURATION:F = 0.35f

.field public static final MUTED:Landroidx/palette/graphics/Target;

.field private static final TARGET_DARK_LUMA:F = 0.26f

.field private static final TARGET_LIGHT_LUMA:F = 0.74f

.field private static final TARGET_MUTED_SATURATION:F = 0.3f

.field private static final TARGET_NORMAL_LUMA:F = 0.5f

.field private static final TARGET_VIBRANT_SATURATION:F = 1.0f

.field public static final VIBRANT:Landroidx/palette/graphics/Target;

.field private static final WEIGHT_LUMA:F = 0.52f

.field private static final WEIGHT_POPULATION:F = 0.24f

.field private static final WEIGHT_SATURATION:F = 0.24f


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/palette/graphics/Target;->m(Landroidx/palette/graphics/Target;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/palette/graphics/Target;->p(Landroidx/palette/graphics/Target;)V

    .line 14
    .line 15
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 19
    .line 20
    sput-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/palette/graphics/Target;->o(Landroidx/palette/graphics/Target;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/palette/graphics/Target;->p(Landroidx/palette/graphics/Target;)V

    .line 27
    .line 28
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 32
    .line 33
    sput-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroidx/palette/graphics/Target;->l(Landroidx/palette/graphics/Target;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/palette/graphics/Target;->p(Landroidx/palette/graphics/Target;)V

    .line 40
    .line 41
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 45
    .line 46
    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/palette/graphics/Target;->m(Landroidx/palette/graphics/Target;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/palette/graphics/Target;->n(Landroidx/palette/graphics/Target;)V

    .line 53
    .line 54
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 58
    .line 59
    sput-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroidx/palette/graphics/Target;->o(Landroidx/palette/graphics/Target;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroidx/palette/graphics/Target;->n(Landroidx/palette/graphics/Target;)V

    .line 66
    .line 67
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 71
    .line 72
    sput-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroidx/palette/graphics/Target;->l(Landroidx/palette/graphics/Target;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroidx/palette/graphics/Target;->n(Landroidx/palette/graphics/Target;)V

    .line 79
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    .line 2
    invoke-static {v1}, Landroidx/palette/graphics/Target;->r([F)V

    .line 3
    invoke-static {v2}, Landroidx/palette/graphics/Target;->r([F)V

    .line 4
    invoke-direct {p0}, Landroidx/palette/graphics/Target;->q()V

    return-void
.end method

.method constructor <init>(Landroidx/palette/graphics/Target;)V
    .locals 6
    .param p1    # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    .line 6
    iget-object v3, p1, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v1, p1, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    array-length v3, v2

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p1, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v1, v0

    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static l(Landroidx/palette/graphics/Target;)V
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    const v1, 0x3e851eb8    # 0.26f

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    .line 12
    const v1, 0x3ee66666    # 0.45f

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    return-void
.end method

.method private static m(Landroidx/palette/graphics/Target;)V
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    const v1, 0x3f0ccccd    # 0.55f

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    const v1, 0x3f3d70a4    # 0.74f

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    return-void
.end method

.method private static n(Landroidx/palette/graphics/Target;)V
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    const v1, 0x3e99999a    # 0.3f

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    .line 12
    const v1, 0x3ecccccd    # 0.4f

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    return-void
.end method

.method private static o(Landroidx/palette/graphics/Target;)V
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    const v1, 0x3e99999a    # 0.3f

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    const/high16 v1, 0x3f000000    # 0.5f

    .line 12
    .line 13
    aput v1, p0, v0

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    .line 17
    const v1, 0x3f333333    # 0.7f

    .line 18
    .line 19
    aput v1, p0, v0

    .line 20
    return-void
.end method

.method private static p(Landroidx/palette/graphics/Target;)V
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    const v1, 0x3eb33333    # 0.35f

    .line 7
    .line 8
    aput v1, p0, v0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    aput v1, p0, v0

    .line 14
    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    const v2, 0x3e75c28f    # 0.24f

    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    const v3, 0x3f051eb8    # 0.52f

    .line 13
    .line 14
    aput v3, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    return-void
.end method

.method private static r([F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    aput v1, p0, v0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    .line 9
    aput v1, p0, v0

    .line 10
    const/4 v0, 0x2

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public b()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public c()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public d()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public e()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public f()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public g()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public h()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public i()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    return v0
.end method

.method k()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    move v4, v1

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v3, v0, :cond_1

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 12
    .line 13
    aget v5, v5, v3

    .line 14
    .line 15
    cmpl-float v6, v5, v1

    .line 16
    .line 17
    if-lez v6, :cond_0

    .line 18
    add-float/2addr v4, v5

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    cmpl-float v0, v4, v1

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 28
    array-length v0, v0

    .line 29
    .line 30
    :goto_1
    if-ge v2, v0, :cond_3

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 33
    .line 34
    aget v5, v3, v2

    .line 35
    .line 36
    cmpl-float v6, v5, v1

    .line 37
    .line 38
    if-lez v6, :cond_2

    .line 39
    div-float/2addr v5, v4

    .line 40
    .line 41
    aput v5, v3, v2

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    return-void
.end method
