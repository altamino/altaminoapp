.class public final Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;
.super Landroidx/compose/ui/graphics/colorspace/Connector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RgbConnector"
.end annotation


# instance fields
.field private final mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mTransform:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/k;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    return-void
.end method

.method private final b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->n()[F

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->q()[F

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->q()[F

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->n()[F

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->b()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    const-string v6, "copyOf(this, size)"

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->a()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->b()[F

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->c()[F

    .line 83
    move-result-object v4

    .line 84
    array-length v7, v4

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 88
    move-result-object v4

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v2, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->e([F[F[F)[F

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->q()[F

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->b()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-nez p1, :cond_2

    .line 118
    .line 119
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->a()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->b()[F

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->c()[F

    .line 131
    move-result-object v1

    .line 132
    array-length v4, v1

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->e([F[F[F)[F

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->q()[F

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->j([F)[F

    .line 155
    move-result-object v1

    .line 156
    .line 157
    :cond_2
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->a()I

    .line 161
    move-result p1

    .line 162
    .line 163
    .line 164
    invoke-static {p3, p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->f(II)Z

    .line 165
    move-result p1

    .line 166
    .line 167
    if-eqz p1, :cond_3

    .line 168
    const/4 p1, 0x3

    .line 169
    .line 170
    new-array p1, p1, [F

    .line 171
    const/4 p2, 0x0

    .line 172
    .line 173
    aget p3, v2, p2

    .line 174
    .line 175
    aget v4, v3, p2

    .line 176
    div-float/2addr p3, v4

    .line 177
    .line 178
    aput p3, p1, p2

    .line 179
    const/4 p2, 0x1

    .line 180
    .line 181
    aget p3, v2, p2

    .line 182
    .line 183
    aget v4, v3, p2

    .line 184
    div-float/2addr p3, v4

    .line 185
    .line 186
    aput p3, p1, p2

    .line 187
    const/4 p2, 0x2

    .line 188
    .line 189
    aget p3, v2, p2

    .line 190
    .line 191
    aget v2, v3, p2

    .line 192
    div-float/2addr p3, v2

    .line 193
    .line 194
    aput p3, p1, p2

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->l([F[F)[F

    .line 198
    move-result-object v0

    .line 199
    .line 200
    .line 201
    :cond_3
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 202
    move-result-object p1

    .line 203
    return-object p1
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
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->l()Le8/l;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    aget v2, p1, v1

    .line 15
    float-to-double v2, v2

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 29
    move-result-wide v2

    .line 30
    double-to-float v0, v2

    .line 31
    .line 32
    aput v0, p1, v1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->l()Le8/l;

    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    aget v3, p1, v2

    .line 42
    float-to-double v3, v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Number;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 56
    move-result-wide v3

    .line 57
    double-to-float v0, v3

    .line 58
    .line 59
    aput v0, p1, v2

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->l()Le8/l;

    .line 65
    move-result-object v0

    .line 66
    const/4 v3, 0x2

    .line 67
    .line 68
    aget v4, p1, v3

    .line 69
    float-to-double v4, v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Ljava/lang/Number;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 83
    move-result-wide v4

    .line 84
    double-to-float v0, v4

    .line 85
    .line 86
    aput v0, p1, v3

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->o()Le8/l;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    aget v4, p1, v1

    .line 100
    float-to-double v4, v4

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Ljava/lang/Number;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 114
    move-result-wide v4

    .line 115
    double-to-float v0, v4

    .line 116
    .line 117
    aput v0, p1, v1

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->o()Le8/l;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    aget v1, p1, v2

    .line 126
    float-to-double v4, v1

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    check-cast v0, Ljava/lang/Number;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 140
    move-result-wide v0

    .line 141
    double-to-float v0, v0

    .line 142
    .line 143
    aput v0, p1, v2

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->o()Le8/l;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    aget v1, p1, v3

    .line 152
    float-to-double v1, v1

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Ljava/lang/Number;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 166
    move-result-wide v0

    .line 167
    double-to-float v0, v0

    .line 168
    .line 169
    aput v0, p1, v3

    .line 170
    return-object p1
.end method
