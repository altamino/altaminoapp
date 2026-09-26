.class Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Landroidx/palette/graphics/ColorCutQuantizer;


# direct methods
.method constructor <init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->c()V

    .line 13
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->e()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method final b()I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 11
    .line 12
    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 13
    .line 14
    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->e([IIII)V

    .line 18
    .line 19
    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 20
    .line 21
    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 27
    .line 28
    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 29
    .line 30
    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->e([IIII)V

    .line 34
    .line 35
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 36
    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    :goto_0
    iget v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 43
    .line 44
    if-gt v3, v5, :cond_1

    .line 45
    .line 46
    aget v6, v2, v3

    .line 47
    .line 48
    aget v6, v1, v6

    .line 49
    add-int/2addr v4, v6

    .line 50
    .line 51
    if-lt v4, v0, :cond_0

    .line 52
    .line 53
    add-int/lit8 v5, v5, -0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 64
    return v0
.end method

.method final c()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 7
    .line 8
    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 9
    .line 10
    .line 11
    const v3, 0x7fffffff

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    const/4 v5, 0x0

    .line 15
    move v6, v4

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v5

    .line 19
    move v4, v3

    .line 20
    move v5, v4

    .line 21
    .line 22
    :goto_0
    iget v10, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 23
    .line 24
    if-gt v2, v10, :cond_6

    .line 25
    .line 26
    aget v10, v1, v2

    .line 27
    .line 28
    aget v11, v0, v10

    .line 29
    add-int/2addr v9, v11

    .line 30
    .line 31
    .line 32
    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->k(I)I

    .line 33
    move-result v11

    .line 34
    .line 35
    .line 36
    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->j(I)I

    .line 37
    move-result v12

    .line 38
    .line 39
    .line 40
    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->i(I)I

    .line 41
    move-result v10

    .line 42
    .line 43
    if-le v11, v6, :cond_0

    .line 44
    move v6, v11

    .line 45
    .line 46
    :cond_0
    if-ge v11, v3, :cond_1

    .line 47
    move v3, v11

    .line 48
    .line 49
    :cond_1
    if-le v12, v7, :cond_2

    .line 50
    move v7, v12

    .line 51
    .line 52
    :cond_2
    if-ge v12, v4, :cond_3

    .line 53
    move v4, v12

    .line 54
    .line 55
    :cond_3
    if-le v10, v8, :cond_4

    .line 56
    move v8, v10

    .line 57
    .line 58
    :cond_4
    if-ge v10, v5, :cond_5

    .line 59
    move v5, v10

    .line 60
    .line 61
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_6
    iput v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 65
    .line 66
    iput v6, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 67
    .line 68
    iput v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 69
    .line 70
    iput v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 71
    .line 72
    iput v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 73
    .line 74
    iput v8, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 75
    .line 76
    iput v9, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 77
    return-void
.end method

.method final d()Landroidx/palette/graphics/Palette$Swatch;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 7
    .line 8
    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    move v6, v5

    .line 13
    .line 14
    :goto_0
    iget v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 15
    .line 16
    if-gt v2, v7, :cond_0

    .line 17
    .line 18
    aget v7, v1, v2

    .line 19
    .line 20
    aget v8, v0, v7

    .line 21
    add-int/2addr v4, v8

    .line 22
    .line 23
    .line 24
    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->k(I)I

    .line 25
    move-result v9

    .line 26
    mul-int/2addr v9, v8

    .line 27
    add-int/2addr v3, v9

    .line 28
    .line 29
    .line 30
    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->j(I)I

    .line 31
    move-result v9

    .line 32
    mul-int/2addr v9, v8

    .line 33
    add-int/2addr v5, v9

    .line 34
    .line 35
    .line 36
    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->i(I)I

    .line 37
    move-result v7

    .line 38
    mul-int/2addr v8, v7

    .line 39
    add-int/2addr v6, v8

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    int-to-float v0, v3

    .line 44
    int-to-float v1, v4

    .line 45
    div-float/2addr v0, v1

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 49
    move-result v0

    .line 50
    int-to-float v2, v5

    .line 51
    div-float/2addr v2, v1

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result v2

    .line 56
    int-to-float v3, v6

    .line 57
    div-float/2addr v3, v1

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 61
    move-result v1

    .line 62
    .line 63
    new-instance v3, Landroidx/palette/graphics/Palette$Swatch;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v0, v4}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 71
    return-object v3
.end method

.method final e()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final f()I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method final g()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final h()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b()I

    .line 10
    move-result v0

    .line 11
    .line 12
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 15
    .line 16
    add-int/lit8 v3, v0, 0x1

    .line 17
    .line 18
    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 22
    .line 23
    iput v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->c()V

    .line 27
    return-object v1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "Can not split a box with only 1 color"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method
