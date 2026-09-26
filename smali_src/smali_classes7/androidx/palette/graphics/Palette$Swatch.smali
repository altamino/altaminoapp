.class public final Landroidx/palette/graphics/Palette$Swatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field private final mBlue:I

.field private mBodyTextColor:I

.field private mGeneratedTextColors:Z

.field private final mGreen:I

.field private mHsl:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPopulation:I

.field private final mRed:I

.field private final mRgb:I

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    .line 22
    .line 23
    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 24
    .line 25
    iput p2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 26
    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    const/high16 v2, 0x40900000    # 4.5f

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->f(IIF)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget v3, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 16
    .line 17
    const/high16 v4, 0x40400000    # 3.0f

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->f(IIF)I

    .line 21
    move-result v3

    .line 22
    const/4 v5, 0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    if-eq v3, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 39
    .line 40
    iput-boolean v5, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 41
    return-void

    .line 42
    .line 43
    :cond_0
    iget v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 44
    .line 45
    const/high16 v7, -0x1000000

    .line 46
    .line 47
    .line 48
    invoke-static {v7, v6, v2}, Landroidx/core/graphics/ColorUtils;->f(IIF)I

    .line 49
    move-result v2

    .line 50
    .line 51
    iget v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 52
    .line 53
    .line 54
    invoke-static {v7, v6, v4}, Landroidx/core/graphics/ColorUtils;->f(IIF)I

    .line 55
    move-result v4

    .line 56
    .line 57
    if-eq v2, v1, :cond_1

    .line 58
    .line 59
    if-eq v4, v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 63
    move-result v0

    .line 64
    .line 65
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 69
    move-result v0

    .line 70
    .line 71
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 72
    .line 73
    iput-boolean v5, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 74
    return-void

    .line 75
    .line 76
    :cond_1
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 80
    move-result v0

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 85
    move-result v0

    .line 86
    .line 87
    :goto_0
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 88
    .line 89
    if-eq v3, v1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 93
    move-result v0

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 98
    move-result v0

    .line 99
    .line 100
    :goto_1
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 101
    .line 102
    iput-boolean v5, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 103
    :cond_4
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/palette/graphics/Palette$Swatch;->a()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 6
    return v0
.end method

.method public c()[F
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x3

    .line 6
    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    .line 14
    .line 15
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->a(III[F)V

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 23
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Landroidx/palette/graphics/Palette$Swatch;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    .line 19
    .line 20
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 27
    .line 28
    iget p1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 29
    .line 30
    if-ne v2, p1, :cond_2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public f()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/palette/graphics/Palette$Swatch;->a()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-class v1, Landroidx/palette/graphics/Palette$Swatch;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v1, " [RGB: #"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->e()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x5d

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, " [HSL: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->c()[F

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, " [Population: "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, " [Title Text: #"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->f()I

    .line 73
    move-result v2

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, " [Body Text: #"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->b()I

    .line 92
    move-result v2

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method
