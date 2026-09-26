.class public final Landroidx/compose/ui/text/android/style/PlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaceholderSpan.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaceholderSpan.kt\nandroidx/compose/ui/text/android/style/PlaceholderSpan\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"
.end annotation


# static fields
.field public static final ALIGN_ABOVE_BASELINE:I = 0x0

.field public static final ALIGN_BOTTOM:I = 0x2

.field public static final ALIGN_CENTER:I = 0x3

.field public static final ALIGN_TEXT_BOTTOM:I = 0x5

.field public static final ALIGN_TEXT_CENTER:I = 0x6

.field public static final ALIGN_TEXT_TOP:I = 0x4

.field public static final ALIGN_TOP:I = 0x1

.field public static final Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNIT_EM:I = 0x1

.field public static final UNIT_SP:I = 0x0

.field public static final UNIT_UNSPECIFIED:I = 0x2


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final height:F

.field private heightPx:I

.field private final heightUnit:I

.field private isLaidOut:Z

.field private final pxPerSp:F

.field private final verticalAlign:I

.field private final width:F

.field private widthPx:I

.field private final widthUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    return-void
.end method

.method public constructor <init>(FIFIFI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 6
    .line 7
    iput p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 10
    .line 11
    iput p4, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 12
    .line 13
    iput p5, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 14
    .line 15
    iput p6, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "fontMetrics"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final b()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 7
    return v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "PlaceholderSpan is not laid out yet."

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 7
    return v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "PlaceholderSpan is not laid out yet."

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DocumentExceptions"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "paint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 12
    move-result p3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string p4, "paint.fontMetricsInt"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 36
    .line 37
    if-le p1, p4, :cond_6

    .line 38
    .line 39
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 40
    .line 41
    const-string p4, "Unsupported unit."

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    if-ne p1, p2, :cond_0

    .line 46
    .line 47
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 48
    mul-float/2addr p1, p3

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    :cond_1
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 58
    .line 59
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 60
    mul-float/2addr p1, v0

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->a(F)I

    .line 64
    move-result p1

    .line 65
    .line 66
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 67
    .line 68
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    if-ne p1, p2, :cond_2

    .line 73
    .line 74
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 75
    mul-float/2addr p1, p3

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->a(F)I

    .line 79
    move-result p1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1

    .line 87
    .line 88
    :cond_3
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 89
    .line 90
    iget p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 91
    mul-float/2addr p1, p2

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->a(F)I

    .line 95
    move-result p1

    .line 96
    .line 97
    :goto_1
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 98
    .line 99
    if-eqz p5, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 106
    .line 107
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 114
    .line 115
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 122
    .line 123
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 124
    .line 125
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 126
    .line 127
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 129
    .line 130
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string p2, "Unknown verticalAlign."

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    .line 138
    :pswitch_0
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 139
    .line 140
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 141
    sub-int/2addr p1, p2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 145
    move-result p2

    .line 146
    .line 147
    if-ge p1, p2, :cond_4

    .line 148
    .line 149
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 153
    move-result p2

    .line 154
    .line 155
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 156
    .line 157
    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 158
    sub-int/2addr p3, p4

    .line 159
    sub-int/2addr p2, p3

    .line 160
    .line 161
    div-int/lit8 p2, p2, 0x2

    .line 162
    sub-int/2addr p1, p2

    .line 163
    .line 164
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 168
    move-result p2

    .line 169
    add-int/2addr p1, p2

    .line 170
    .line 171
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 172
    goto :goto_2

    .line 173
    .line 174
    :pswitch_1
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 175
    .line 176
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 180
    move-result p3

    .line 181
    sub-int/2addr p2, p3

    .line 182
    .line 183
    if-le p1, p2, :cond_4

    .line 184
    .line 185
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 189
    move-result p2

    .line 190
    sub-int/2addr p1, p2

    .line 191
    .line 192
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 193
    goto :goto_2

    .line 194
    .line 195
    :pswitch_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 199
    move-result p2

    .line 200
    add-int/2addr p1, p2

    .line 201
    .line 202
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 203
    .line 204
    if-le p1, p2, :cond_4

    .line 205
    .line 206
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 210
    move-result p2

    .line 211
    add-int/2addr p1, p2

    .line 212
    .line 213
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 214
    goto :goto_2

    .line 215
    .line 216
    :pswitch_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 220
    move-result p2

    .line 221
    neg-int p2, p2

    .line 222
    .line 223
    if-le p1, p2, :cond_4

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 227
    move-result p1

    .line 228
    neg-int p1, p1

    .line 229
    .line 230
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 231
    .line 232
    .line 233
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 237
    .line 238
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 239
    .line 240
    .line 241
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 242
    move-result p1

    .line 243
    .line 244
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 251
    .line 252
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 253
    .line 254
    .line 255
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 256
    move-result p1

    .line 257
    .line 258
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 259
    .line 260
    .line 261
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->d()I

    .line 262
    move-result p1

    .line 263
    return p1

    .line 264
    .line 265
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string p2, "Invalid fontMetrics: line height can not be negative."

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 271
    move-result-object p2

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    throw p1

    .line 276
    nop

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
