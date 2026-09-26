.class public final Landroidx/compose/ui/graphics/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Color$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Color.kt\nandroidx/compose/ui/graphics/Color\n+ 2 ColorSpaces.kt\nandroidx/compose/ui/graphics/colorspace/ColorSpaces\n*L\n1#1,667:1\n320#2:668\n*S KotlinDebug\n*F\n+ 1 Color.kt\nandroidx/compose/ui/graphics/Color\n*L\n123#1:668\n*E\n"
.end annotation


# static fields
.field private static final Black:J

.field private static final Blue:J

.field public static final Companion:Landroidx/compose/ui/graphics/Color$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Cyan:J

.field private static final DarkGray:J

.field private static final Gray:J

.field private static final Green:J

.field private static final LightGray:J

.field private static final Magenta:J

.field private static final Red:J

.field private static final Transparent:J

.field private static final Unspecified:J

.field private static final White:J

.field private static final Yellow:J


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/Color$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Color$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, 0xff000000L

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v0, 0xff444444L

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->DarkGray:J

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v0, 0xff888888L

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Gray:J

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v0, 0xffccccccL

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->LightGray:J

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v0, 0xffffffffL

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide v0, 0xffff0000L

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Red:J

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const-wide v0, 0xff00ff00L

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Green:J

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide v0, 0xff0000ffL

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 94
    move-result-wide v0

    .line 95
    .line 96
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Blue:J

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v0, 0xffffff00L

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 105
    move-result-wide v0

    .line 106
    .line 107
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Yellow:J

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    const-wide v0, 0xff00ffffL

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 116
    move-result-wide v0

    .line 117
    .line 118
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Cyan:J

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    const-wide v0, 0xffff00ffL

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 127
    move-result-wide v0

    .line 128
    .line 129
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Magenta:J

    .line 130
    const/4 v0, 0x0

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 134
    move-result-wide v0

    .line 135
    .line 136
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 137
    .line 138
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->u()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x0

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v1, v1, v1, v0}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 147
    move-result-wide v0

    .line 148
    .line 149
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 150
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 6
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Blue:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Gray:J

    return-wide v0
.end method

.method public static final synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Red:J

    return-wide v0
.end method

.method public static final synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    return-wide v0
.end method

.method public static final synthetic f()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic g()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    return-wide v0
.end method

.method public static final synthetic h(J)Landroidx/compose/ui/graphics/Color;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    return-object v0
.end method

.method public static i(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static final j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 4
    .param p2    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "colorSpace"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-wide p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x2

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p2, v2, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->i(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->f(J)[F

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroidx/compose/ui/graphics/colorspace/Connector;->a([F)[F

    .line 35
    .line 36
    aget p1, p0, v2

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    aget v0, p0, v0

    .line 40
    .line 41
    aget v1, p0, v3

    .line 42
    const/4 v2, 0x3

    .line 43
    .line 44
    aget p0, p0, v2

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v1, p0, p2}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 48
    move-result-wide p0

    .line 49
    return-wide p0
.end method

.method public static final k(JFFFF)J
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p3, p4, p5, p2, p0}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static synthetic l(JFFFFILjava/lang/Object;)J
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x1

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 8
    move-result p2

    .line 9
    :cond_0
    move v2, p2

    .line 10
    .line 11
    and-int/lit8 p2, p6, 0x2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 17
    move-result p3

    .line 18
    :cond_1
    move v3, p3

    .line 19
    .line 20
    and-int/lit8 p2, p6, 0x4

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 26
    move-result p4

    .line 27
    :cond_2
    move v4, p4

    .line 28
    .line 29
    and-int/lit8 p2, p6, 0x8

    .line 30
    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 35
    move-result p5

    .line 36
    :cond_3
    move v5, p5

    .line 37
    move-wide v0, p0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/Color;->k(JFFFF)J

    .line 41
    move-result-wide p0

    .line 42
    return-wide p0
.end method

.method public static m(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/graphics/Color;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final n(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o(J)F
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3f

    .line 3
    and-long/2addr v0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x38

    .line 16
    ushr-long/2addr p0, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    const-wide/16 v0, 0xff

    .line 23
    and-long/2addr p0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 27
    move-result-wide p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lw7/n0;->e(J)D

    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    .line 34
    const/high16 p1, 0x437f0000    # 255.0f

    .line 35
    :goto_0
    div-float/2addr p0, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v0, 0x6

    .line 38
    ushr-long/2addr p0, v0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 42
    move-result-wide p0

    .line 43
    .line 44
    const-wide/16 v0, 0x3ff

    .line 45
    and-long/2addr p0, v0

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 49
    move-result-wide p0

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lw7/n0;->e(J)D

    .line 53
    move-result-wide p0

    .line 54
    double-to-float p0, p0

    .line 55
    .line 56
    .line 57
    const p1, 0x447fc000    # 1023.0f

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return p0
.end method

.method public static final p(J)F
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3f

    .line 3
    and-long/2addr v0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    ushr-long/2addr p0, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    const-wide/16 v0, 0xff

    .line 23
    and-long/2addr p0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 27
    move-result-wide p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lw7/n0;->e(J)D

    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    .line 34
    const/high16 p1, 0x437f0000    # 255.0f

    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    const/16 v0, 0x10

    .line 39
    ushr-long/2addr p0, v0

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 43
    move-result-wide p0

    .line 44
    .line 45
    .line 46
    const-wide/32 v0, 0xffff

    .line 47
    and-long/2addr p0, v0

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 51
    move-result-wide p0

    .line 52
    long-to-int p0, p0

    .line 53
    int-to-short p0, p0

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 57
    move-result p0

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->i(S)F

    .line 61
    move-result p0

    .line 62
    :goto_0
    return p0
.end method

.method public static final q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 3
    .line 4
    const-wide/16 v1, 0x3f

    .line 5
    and-long/2addr p0, v1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 9
    move-result-wide p0

    .line 10
    long-to-int p0, p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->h()[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    aget-object p0, p1, p0

    .line 17
    return-object p0
.end method

.method public static final r(J)F
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3f

    .line 3
    and-long/2addr v0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x28

    .line 16
    ushr-long/2addr p0, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    const-wide/16 v0, 0xff

    .line 23
    and-long/2addr p0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 27
    move-result-wide p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lw7/n0;->e(J)D

    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    .line 34
    const/high16 p1, 0x437f0000    # 255.0f

    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    const/16 v0, 0x20

    .line 39
    ushr-long/2addr p0, v0

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 43
    move-result-wide p0

    .line 44
    .line 45
    .line 46
    const-wide/32 v0, 0xffff

    .line 47
    and-long/2addr p0, v0

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 51
    move-result-wide p0

    .line 52
    long-to-int p0, p0

    .line 53
    int-to-short p0, p0

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 57
    move-result p0

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->i(S)F

    .line 61
    move-result p0

    .line 62
    :goto_0
    return p0
.end method

.method public static final s(J)F
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3f

    .line 3
    and-long/2addr v0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    ushr-long/2addr p0, v1

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    const-wide/16 v0, 0xff

    .line 23
    and-long/2addr p0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 27
    move-result-wide p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lw7/n0;->e(J)D

    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    .line 34
    const/high16 p1, 0x437f0000    # 255.0f

    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    ushr-long/2addr p0, v1

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 41
    move-result-wide p0

    .line 42
    .line 43
    .line 44
    const-wide/32 v0, 0xffff

    .line 45
    and-long/2addr p0, v0

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 49
    move-result-wide p0

    .line 50
    long-to-int p0, p0

    .line 51
    int-to-short p0, p0

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->d(S)S

    .line 55
    move-result p0

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->i(S)F

    .line 59
    move-result p0

    .line 60
    :goto_0
    return p0
.end method

.method public static t(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw7/f0;->d(J)I

    move-result p0

    return p0
.end method

.method public static u(J)Ljava/lang/String;
    .locals 3
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
    const-string v1, "Color("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 36
    move-result v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->g()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const/16 p0, 0x29

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/Color;->m(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->t(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->u(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    return-wide v0
.end method
