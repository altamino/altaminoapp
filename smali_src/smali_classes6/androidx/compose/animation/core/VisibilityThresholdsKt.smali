.class public final Landroidx/compose/animation/core/VisibilityThresholdsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityThresholds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityThresholds.kt\nandroidx/compose/animation/core/VisibilityThresholdsKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,114:1\n175#2:115\n*S KotlinDebug\n*F\n+ 1 VisibilityThresholds.kt\nandroidx/compose/animation/core/VisibilityThresholdsKt\n*L\n68#1:115\n*E\n"
.end annotation


# static fields
.field private static final DpVisibilityThreshold:F = 0.1f

.field private static final PxVisibilityThreshold:F = 0.5f

.field private static final rectVisibilityThreshold:Landroidx/compose/ui/geometry/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final visibilityThresholdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "**>;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 3
    .line 4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 12
    .line 13
    sput-object v0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->rectVisibilityThreshold:Landroidx/compose/ui/geometry/Rect;

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    new-array v0, v0, [Lw7/u;

    .line 18
    .line 19
    sget-object v1, Lkotlin/jvm/internal/s;->INSTANCE:Lkotlin/jvm/internal/s;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->j(Lkotlin/jvm/internal/s;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 33
    move-result-object v1

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    aput-object v1, v0, v4

    .line 37
    .line 38
    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 46
    move-result-object v1

    .line 47
    const/4 v4, 0x1

    .line 48
    .line 49
    aput-object v1, v0, v4

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 59
    move-result-object v1

    .line 60
    const/4 v3, 0x2

    .line 61
    .line 62
    aput-object v1, v0, v3

    .line 63
    .line 64
    sget-object v1, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    const v3, 0x3c23d70a    # 0.01f

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 79
    move-result-object v1

    .line 80
    const/4 v3, 0x3

    .line 81
    .line 82
    aput-object v1, v0, v3

    .line 83
    .line 84
    sget-object v1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->c(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 92
    move-result-object v1

    .line 93
    const/4 v3, 0x4

    .line 94
    .line 95
    aput-object v1, v0, v3

    .line 96
    .line 97
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->d(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 105
    move-result-object v1

    .line 106
    const/4 v3, 0x5

    .line 107
    .line 108
    aput-object v1, v0, v3

    .line 109
    .line 110
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 118
    move-result-object v1

    .line 119
    const/4 v2, 0x6

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    const v2, 0x3dcccccd    # 0.1f

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 138
    move-result-object v1

    .line 139
    const/4 v3, 0x7

    .line 140
    .line 141
    aput-object v1, v0, v3

    .line 142
    .line 143
    sget-object v1, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->f(Landroidx/compose/ui/unit/DpOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    const/16 v2, 0x8

    .line 154
    .line 155
    aput-object v1, v0, v2

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    sput-object v0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->visibilityThresholdMap:Ljava/util/Map;

    .line 162
    return-void
.end method

.method public static final a(Landroidx/compose/ui/unit/Dp$Companion;)F
    .locals 1
    .param p0    # Landroidx/compose/ui/unit/Dp$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p0, 0x3dcccccd    # 0.1f

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final b(Lkotlin/jvm/internal/s;)I
    .locals 1
    .param p0    # Lkotlin/jvm/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final c(Landroidx/compose/ui/geometry/Offset$Companion;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/geometry/Offset$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public static final d(Landroidx/compose/ui/geometry/Size$Companion;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/geometry/Size$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public static final e(Landroidx/compose/ui/unit/IntOffset$Companion;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/unit/IntOffset$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final f(Landroidx/compose/ui/unit/IntSize$Companion;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/unit/IntSize$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final g(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0    # Landroidx/compose/ui/geometry/Rect$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->rectVisibilityThreshold:Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public static final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "**>;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->visibilityThresholdMap:Ljava/util/Map;

    return-object v0
.end method
