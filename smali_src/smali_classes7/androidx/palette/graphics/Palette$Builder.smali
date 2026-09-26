.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v1, 0x10

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 6
    sget-object p1, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p1, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object p1, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object p1, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object p1, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v0, 0x10

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v0, 0x3100

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    sget-object v1, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List of Swatches is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/graphics/Bitmap;)[I
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    move-result v7

    .line 9
    .line 10
    mul-int v0, v8, v7

    .line 11
    .line 12
    new-array v9, v0, [I

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, v9

    .line 18
    move v3, v8

    .line 19
    move v6, v8

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    return-object v9

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result p1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v0

    .line 38
    .line 39
    mul-int v1, p1, v0

    .line 40
    .line 41
    new-array v1, v1, [I

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 49
    add-int/2addr v4, v2

    .line 50
    mul-int/2addr v4, v8

    .line 51
    .line 52
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 53
    add-int/2addr v4, v3

    .line 54
    .line 55
    mul-int v3, v2, p1

    .line 56
    .line 57
    .line 58
    invoke-static {v9, v4, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 3
    .line 4
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    move-result v3

    .line 15
    mul-int/2addr v0, v3

    .line 16
    .line 17
    iget v3, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 18
    .line 19
    if-le v0, v3, :cond_1

    .line 20
    int-to-double v1, v3

    .line 21
    int-to-double v3, v0

    .line 22
    div-double/2addr v1, v3

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    move-result-wide v1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iget v3, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 46
    .line 47
    if-le v0, v3, :cond_1

    .line 48
    int-to-double v1, v3

    .line 49
    int-to-double v3, v0

    .line 50
    div-double/2addr v1, v3

    .line 51
    .line 52
    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    cmpg-double v0, v1, v3

    .line 55
    .line 56
    if-gtz v0, :cond_2

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    move-result v0

    .line 62
    int-to-double v3, v0

    .line 63
    mul-double/2addr v3, v1

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 67
    move-result-wide v3

    .line 68
    double-to-int v0, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    move-result v3

    .line 73
    int-to-double v3, v3

    .line 74
    mul-double/2addr v3, v1

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 78
    move-result-wide v1

    .line 79
    double-to-int v1, v1

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method


# virtual methods
.method public a()Landroidx/palette/graphics/Palette;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/palette/graphics/Palette$Builder;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    move-result v2

    .line 21
    int-to-double v2, v2

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    move-result v4

    .line 28
    int-to-double v4, v4

    .line 29
    div-double/2addr v2, v4

    .line 30
    .line 31
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 32
    int-to-double v4, v4

    .line 33
    mul-double/2addr v4, v2

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 37
    move-result-wide v4

    .line 38
    double-to-int v4, v4

    .line 39
    .line 40
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 43
    int-to-double v4, v4

    .line 44
    mul-double/2addr v4, v2

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 48
    move-result-wide v4

    .line 49
    double-to-int v4, v4

    .line 50
    .line 51
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 54
    int-to-double v4, v4

    .line 55
    mul-double/2addr v4, v2

    .line 56
    .line 57
    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 59
    move-result-wide v4

    .line 60
    double-to-int v4, v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 64
    move-result v5

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result v4

    .line 69
    .line 70
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 73
    int-to-double v4, v4

    .line 74
    mul-double/2addr v4, v2

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 78
    move-result-wide v2

    .line 79
    double-to-int v2, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 87
    move-result v2

    .line 88
    .line 89
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    :cond_0
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Landroidx/palette/graphics/Palette$Builder;->b(Landroid/graphics/Bitmap;)[I

    .line 95
    move-result-object v2

    .line 96
    .line 97
    iget v3, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 103
    move-result v4

    .line 104
    .line 105
    if-eqz v4, :cond_1

    .line 106
    const/4 v4, 0x0

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 113
    move-result v5

    .line 114
    .line 115
    new-array v5, v5, [Landroidx/palette/graphics/Palette$Filter;

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    move-result-object v4

    .line 120
    .line 121
    check-cast v4, [Landroidx/palette/graphics/Palette$Filter;

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-direct {v1, v2, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$Filter;)V

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 127
    .line 128
    if-eq v0, v2, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-virtual {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->d()Ljava/util/List;

    .line 135
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_3
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    :goto_1
    new-instance v1, Landroidx/palette/graphics/Palette;

    .line 143
    .line 144
    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v0, v2}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->c()V

    .line 151
    return-object v1

    .line 152
    .line 153
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 154
    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 157
    throw v0
.end method
