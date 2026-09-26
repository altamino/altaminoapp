.class public final Landroidx/compose/ui/platform/EncodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private parcel:Landroid/os/Parcel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "obtain()"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method

.method public final d(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "shadow"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->c()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->m(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->b()F

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 42
    return-void
.end method

.method public final e(Landroidx/compose/ui/text/SpanStyle;)V
    .locals 6
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "spanStyle"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 15
    move-result-wide v3

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->m(J)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnit$Companion;->a()J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnit;->e(JJ)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->j(J)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    const/4 v1, 0x3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->f(Landroidx/compose/ui/text/font/FontWeight;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->o(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x5

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->l(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    const/4 v1, 0x6

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->i(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 123
    move-result-wide v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnit$Companion;->a()J

    .line 127
    move-result-wide v3

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->e(JJ)Z

    .line 131
    move-result v0

    .line 132
    .line 133
    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x7

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 141
    move-result-wide v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->j(J)V

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 154
    move-result v0

    .line 155
    .line 156
    const/16 v1, 0x8

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->k(F)V

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    const/16 v1, 0x9

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->h(Landroidx/compose/ui/text/style/TextGeometricTransform;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 180
    move-result-wide v0

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 184
    move-result-wide v2

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 188
    move-result v0

    .line 189
    .line 190
    if-nez v0, :cond_9

    .line 191
    .line 192
    const/16 v0, 0xa

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 199
    move-result-wide v0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->m(J)V

    .line 203
    .line 204
    .line 205
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    const/16 v1, 0xb

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 217
    .line 218
    .line 219
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    if-eqz p1, :cond_b

    .line 223
    .line 224
    const/16 v0, 0xc

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->d(Landroidx/compose/ui/graphics/Shadow;)V

    .line 231
    :cond_b
    return-void
.end method

.method public final f(Landroidx/compose/ui/text/font/FontWeight;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "fontWeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->c(I)V

    .line 13
    return-void
.end method

.method public final g(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textDecoration"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration;->e()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->c(I)V

    .line 13
    return-void
.end method

.method public final h(Landroidx/compose/ui/text/style/TextGeometricTransform;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/style/TextGeometricTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textGeometricTransform"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->c()F

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 20
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "string"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public final j(J)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->c()J

    .line 10
    move-result-wide v3

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 22
    move-result-wide v5

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 34
    move-result-wide v5

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    const/4 v4, 0x2

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->c()J

    .line 52
    move-result-wide v2

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 62
    move-result p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 66
    :cond_3
    return-void
.end method

.method public final k(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/EncodeHelper;->b(F)V

    .line 4
    return-void
.end method

.method public final l(I)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->b()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->d()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    const/4 v2, 0x2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->c()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->h(II)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    const/4 v2, 0x3

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 53
    return-void
.end method

.method public final m(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/EncodeHelper;->n(J)V

    .line 4
    return-void
.end method

.method public final n(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    return-void
.end method

.method public final o(I)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/EncodeHelper;->a(B)V

    .line 29
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "encodeToString(bytes, Base64.DEFAULT)"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    return-object v0
.end method

.method public final q()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "obtain()"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/platform/EncodeHelper;->parcel:Landroid/os/Parcel;

    .line 17
    return-void
.end method
