.class final Landroidx/media3/extractor/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ttml/TextEmphasis$Position;
    }
.end annotation


# static fields
.field private static final MARK_FILL_VALUES:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_SHAPE_AUTO:I = -0x1

.field private static final MARK_SHAPE_VALUES:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_OUTSIDE:I = -0x2

.field private static final POSITION_VALUES:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SINGLE_STYLE_VALUES:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "\\s+"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "auto"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "none"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/google/common/collect/d0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/d0;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "sesame"

    .line 23
    .line 24
    const-string v1, "circle"

    .line 25
    .line 26
    const-string v2, "dot"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/d0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/d0;

    .line 33
    .line 34
    const-string v0, "filled"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "open"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/google/common/collect/d0;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/d0;

    .line 44
    .line 45
    const-string v0, "before"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "outside"

    .line 49
    .line 50
    const-string v2, "after"

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/d0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/d0;

    .line 57
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markShape:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markFill:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->position:I

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TextEmphasis;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    sget-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/google/common/collect/d0;->u([Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/media3/extractor/text/ttml/TextEmphasis;->b(Lcom/google/common/collect/d0;)Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static b(Lcom/google/common/collect/d0;)Landroidx/media3/extractor/text/ttml/TextEmphasis;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/extractor/text/ttml/TextEmphasis;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/d0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/google/common/collect/f1;->e(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/f1$e;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "outside"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    const v3, -0x5305c081

    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, -0x1

    .line 27
    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    .line 31
    const v3, -0x41ecca5b

    .line 32
    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    .line 36
    const v1, 0x58705dc

    .line 37
    .line 38
    if-eq v2, v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string v1, "after"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    move v0, v5

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    move v0, v6

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    const-string v1, "before"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    move v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    move v0, v7

    .line 69
    .line 70
    :goto_1
    if-eqz v0, :cond_5

    .line 71
    .line 72
    if-eq v0, v6, :cond_4

    .line 73
    move v0, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const/4 v0, -0x2

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move v0, v4

    .line 78
    .line 79
    :goto_2
    sget-object v1, Landroidx/media3/extractor/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/d0;

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p0}, Lcom/google/common/collect/f1;->e(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/f1$e;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 87
    move-result v2

    .line 88
    .line 89
    if-nez v2, :cond_9

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    check-cast p0, Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    const v2, 0x2dddaf

    .line 107
    .line 108
    if-eq v1, v2, :cond_7

    .line 109
    .line 110
    .line 111
    const v2, 0x33af38

    .line 112
    .line 113
    if-eq v1, v2, :cond_6

    .line 114
    goto :goto_3

    .line 115
    .line 116
    .line 117
    :cond_6
    const-string/jumbo v1, "none"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p0

    .line 122
    .line 123
    if-eqz p0, :cond_8

    .line 124
    move v7, v5

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_7
    const-string v1, "auto"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p0

    .line 132
    .line 133
    :cond_8
    :goto_3
    new-instance p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v7, v5, v0}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 137
    return-object p0

    .line 138
    .line 139
    :cond_9
    sget-object v1, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/d0;

    .line 140
    .line 141
    .line 142
    invoke-static {v1, p0}, Lcom/google/common/collect/f1;->e(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/f1$e;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    sget-object v2, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/d0;

    .line 146
    .line 147
    .line 148
    invoke-static {v2, p0}, Lcom/google/common/collect/f1;->e(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/f1$e;

    .line 149
    move-result-object p0

    .line 150
    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 153
    move-result v2

    .line 154
    .line 155
    if-eqz v2, :cond_a

    .line 156
    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 159
    move-result v2

    .line 160
    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    new-instance p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, v7, v5, v0}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 167
    return-object p0

    .line 168
    .line 169
    :cond_a
    const-string v2, "filled"

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    check-cast v1, Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 179
    move-result v3

    .line 180
    .line 181
    .line 182
    const v8, -0x4bf7529e

    .line 183
    .line 184
    if-eq v3, v8, :cond_c

    .line 185
    .line 186
    .line 187
    const v2, 0x34264a

    .line 188
    .line 189
    if-eq v3, v2, :cond_b

    .line 190
    goto :goto_4

    .line 191
    .line 192
    .line 193
    :cond_b
    const-string/jumbo v2, "open"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v1

    .line 198
    .line 199
    if-eqz v1, :cond_d

    .line 200
    move v1, v4

    .line 201
    goto :goto_5

    .line 202
    .line 203
    .line 204
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v1

    .line 206
    :cond_d
    :goto_4
    move v1, v6

    .line 207
    .line 208
    :goto_5
    const-string v2, "circle"

    .line 209
    .line 210
    .line 211
    invoke-static {p0, v2}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    check-cast p0, Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 218
    move-result v3

    .line 219
    .line 220
    .line 221
    const v8, -0x51134330

    .line 222
    .line 223
    if-eq v3, v8, :cond_10

    .line 224
    .line 225
    .line 226
    const v2, -0x35fdaa48    # -2135406.0f

    .line 227
    .line 228
    if-eq v3, v2, :cond_f

    .line 229
    .line 230
    .line 231
    const v2, 0x18549

    .line 232
    .line 233
    if-eq v3, v2, :cond_e

    .line 234
    goto :goto_6

    .line 235
    .line 236
    :cond_e
    const-string v2, "dot"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result p0

    .line 241
    .line 242
    if-eqz p0, :cond_11

    .line 243
    goto :goto_7

    .line 244
    .line 245
    .line 246
    :cond_f
    const-string/jumbo v2, "sesame"

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result p0

    .line 251
    .line 252
    if-eqz p0, :cond_11

    .line 253
    move v5, v6

    .line 254
    goto :goto_7

    .line 255
    .line 256
    .line 257
    :cond_10
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result p0

    .line 259
    .line 260
    if-eqz p0, :cond_11

    .line 261
    move v5, v4

    .line 262
    goto :goto_7

    .line 263
    :cond_11
    :goto_6
    move v5, v7

    .line 264
    .line 265
    :goto_7
    if-eqz v5, :cond_13

    .line 266
    .line 267
    if-eq v5, v6, :cond_12

    .line 268
    move v4, v6

    .line 269
    goto :goto_8

    .line 270
    :cond_12
    const/4 v4, 0x3

    .line 271
    .line 272
    :cond_13
    :goto_8
    new-instance p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, v4, v1, v0}, Landroidx/media3/extractor/text/ttml/TextEmphasis;-><init>(III)V

    .line 276
    return-object p0
.end method
