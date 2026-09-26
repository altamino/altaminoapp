.class final Landroidx/compose/foundation/BorderKt$border$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt$border$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "Landroidx/compose/ui/draw/DrawResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $borderCacheRef:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $width:F


# direct methods
.method constructor <init>(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            ")V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    iput-object p2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    iput-object p4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 13
    .param p1    # Landroidx/compose/ui/draw/CacheDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$drawWithCache"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->H0(F)F

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-ltz v0, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->h(J)F

    .line 24
    move-result v0

    .line 25
    .line 26
    cmpl-float v0, v0, v1

    .line 27
    .line 28
    if-lez v0, :cond_5

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    .line 31
    .line 32
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->a()F

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$width:F

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->H0(F)F

    .line 51
    move-result v0

    .line 52
    float-to-double v0, v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 56
    move-result-wide v0

    .line 57
    double-to-float v0, v0

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->h(J)F

    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x2

    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr v1, v2

    .line 69
    float-to-double v3, v1

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 73
    move-result-wide v3

    .line 74
    double-to-float v1, v3

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 78
    move-result v0

    .line 79
    .line 80
    div-float v1, v0, v2

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 84
    move-result-wide v7

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 88
    move-result-wide v3

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 92
    move-result v1

    .line 93
    sub-float/2addr v1, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 97
    move-result-wide v3

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 101
    move-result v3

    .line 102
    sub-float/2addr v3, v0

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 106
    move-result-wide v9

    .line 107
    mul-float/2addr v2, v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 111
    move-result-wide v3

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->h(J)F

    .line 115
    move-result v1

    .line 116
    .line 117
    cmpl-float v1, v2, v1

    .line 118
    .line 119
    if-lez v1, :cond_1

    .line 120
    const/4 v1, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 123
    .line 124
    :goto_1
    iget-object v2, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 128
    move-result-wide v3

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, v3, v4, v5, p1}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    instance-of v3, v2, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 139
    .line 140
    if-eqz v3, :cond_2

    .line 141
    .line 142
    iget-object v4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    .line 143
    .line 144
    iget-object v5, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 145
    move-object v6, v2

    .line 146
    .line 147
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 148
    move-object v3, p1

    .line 149
    move v7, v1

    .line 150
    move v8, v0

    .line 151
    .line 152
    .line 153
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/BorderKt;->b(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    .line 154
    move-result-object p1

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :cond_2
    instance-of v3, v2, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 158
    .line 159
    if-eqz v3, :cond_3

    .line 160
    .line 161
    iget-object v4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$borderCacheRef:Landroidx/compose/ui/node/Ref;

    .line 162
    .line 163
    iget-object v5, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 164
    move-object v6, v2

    .line 165
    .line 166
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 167
    move-object v3, p1

    .line 168
    move v11, v1

    .line 169
    move v12, v0

    .line 170
    .line 171
    .line 172
    invoke-static/range {v3 .. v12}, Landroidx/compose/foundation/BorderKt;->d(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 173
    move-result-object p1

    .line 174
    goto :goto_2

    .line 175
    .line 176
    :cond_3
    instance-of v2, v2, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 177
    .line 178
    if-eqz v2, :cond_4

    .line 179
    .line 180
    iget-object v4, p0, Landroidx/compose/foundation/BorderKt$border$2$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 181
    move-object v3, p1

    .line 182
    move-wide v5, v7

    .line 183
    move-wide v7, v9

    .line 184
    move v9, v1

    .line 185
    move v10, v0

    .line 186
    .line 187
    .line 188
    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/BorderKt;->c(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 189
    move-result-object p1

    .line 190
    goto :goto_2

    .line 191
    .line 192
    :cond_4
    new-instance p1, Lw7/s;

    .line 193
    .line 194
    .line 195
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 196
    throw p1

    .line 197
    .line 198
    .line 199
    :cond_5
    invoke-static {p1}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    .line 200
    move-result-object p1

    .line 201
    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$border$2$1;->a(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
