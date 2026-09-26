.class final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final COMPONENT_BLUE:I = -0x1

.field static final COMPONENT_GREEN:I = -0x2

.field static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final LOG_TIMINGS:Z = false

.field private static final QUANTIZE_WORD_MASK:I = 0x1f

.field private static final QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroidx/palette/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    .line 14
    .line 15
    .line 16
    const p3, 0x8000

    .line 17
    .line 18
    new-array v0, p3, [I

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    array-length v3, p1

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    aget v3, p1, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroidx/palette/graphics/ColorCutQuantizer;->g(I)I

    .line 31
    move-result v3

    .line 32
    .line 33
    aput v3, p1, v2

    .line 34
    .line 35
    aget v4, v0, v3

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    aput v4, v0, v3

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, v1

    .line 44
    move v2, p1

    .line 45
    .line 46
    :goto_1
    if-ge p1, p3, :cond_3

    .line 47
    .line 48
    aget v3, v0, p1

    .line 49
    .line 50
    if-lez v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->l(I)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    aput v1, v0, p1

    .line 59
    .line 60
    :cond_1
    aget v3, v0, p1

    .line 61
    .line 62
    if-lez v3, :cond_2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_3
    new-array p1, v2, [I

    .line 70
    .line 71
    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 72
    move v3, v1

    .line 73
    move v4, v3

    .line 74
    .line 75
    :goto_2
    if-ge v3, p3, :cond_5

    .line 76
    .line 77
    aget v5, v0, v3

    .line 78
    .line 79
    if-lez v5, :cond_4

    .line 80
    .line 81
    add-int/lit8 v5, v4, 0x1

    .line 82
    .line 83
    aput v3, p1, v4

    .line 84
    move v4, v5

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_5
    if-gt v2, p2, :cond_6

    .line 90
    .line 91
    new-instance p2, Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    iput-object p2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 97
    .line 98
    :goto_3
    if-ge v1, v2, :cond_7

    .line 99
    .line 100
    aget p2, p1, v1

    .line 101
    .line 102
    iget-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 103
    .line 104
    new-instance v3, Landroidx/palette/graphics/Palette$Swatch;

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Landroidx/palette/graphics/ColorCutQuantizer;->a(I)I

    .line 108
    move-result v4

    .line 109
    .line 110
    aget p2, v0, p2

    .line 111
    .line 112
    .line 113
    invoke-direct {v3, v4, p2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_3

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-direct {p0, p2}, Landroidx/palette/graphics/ColorCutQuantizer;->h(I)Ljava/util/List;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 126
    :cond_7
    return-void
.end method

.method private static a(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->k(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->j(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->i(I)I

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroidx/palette/graphics/ColorCutQuantizer;->b(III)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method static b(III)I
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 7
    move-result p0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private c(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->d()Landroidx/palette/graphics/Palette$Swatch;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->n(Landroidx/palette/graphics/Palette$Swatch;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method static e([IIII)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    goto :goto_2

    .line 8
    .line 9
    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 10
    .line 11
    aget p1, p0, p2

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->i(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    shl-int/lit8 v0, v0, 0xa

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->j(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    shl-int/lit8 v1, v1, 0x5

    .line 24
    or-int/2addr v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->k(I)I

    .line 28
    move-result p1

    .line 29
    or-int/2addr p1, v0

    .line 30
    .line 31
    aput p1, p0, p2

    .line 32
    .line 33
    add-int/lit8 p2, p2, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 37
    .line 38
    aget p1, p0, p2

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->j(I)I

    .line 42
    move-result v0

    .line 43
    .line 44
    shl-int/lit8 v0, v0, 0xa

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->k(I)I

    .line 48
    move-result v1

    .line 49
    .line 50
    shl-int/lit8 v1, v1, 0x5

    .line 51
    or-int/2addr v0, v1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->i(I)I

    .line 55
    move-result p1

    .line 56
    or-int/2addr p1, v0

    .line 57
    .line 58
    aput p1, p0, p2

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_2
    return-void
.end method

.method private static f(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_0
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method private static g(I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x5

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 15
    move-result v3

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->f(III)I

    .line 27
    move-result p0

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0xa

    .line 30
    .line 31
    shl-int/lit8 v1, v3, 0x5

    .line 32
    or-int/2addr v0, v1

    .line 33
    or-int/2addr p0, v0

    .line 34
    return p0
.end method

.method private h(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    .line 3
    .line 4
    sget-object v1, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 8
    .line 9
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 12
    array-length v2, v2

    .line 13
    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, v3, v2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->o(Ljava/util/PriorityQueue;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->c(Ljava/util/Collection;)Ljava/util/List;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method static i(I)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static j(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static k(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private l(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->a(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->g(I[F)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->m(I[F)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private m(I[F)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    array-length v2, v0

    .line 7
    .line 8
    if-lez v2, :cond_1

    .line 9
    array-length v0, v0

    .line 10
    move v2, v1

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, p1, p2}, Landroidx/palette/graphics/Palette$Filter;->a(I[F)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private n(Landroidx/palette/graphics/Palette$Swatch;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->c()[F

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->m(I[F)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private o(Ljava/util/PriorityQueue;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->h()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
