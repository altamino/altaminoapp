.class final Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerCutter"
.end annotation


# instance fields
.field private bitmapArrowLeft:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapArrowRight:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapDot:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final boundaryWidth:F

.field private final controllerColor:I

.field private final controllerIndicatorSize:I

.field private final coverColor:I

.field private cutterEndTimeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutterStartTimeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cutterTimeRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerIndicatorRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final linePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pointerOffsetForDraw:F

.field private pointerPercent:F

.field private final textPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 7
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "resources"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_cover_color:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->coverColor:I

    .line 17
    .line 18
    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_controller_color:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    iput v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerColor:I

    .line 25
    .line 26
    sget v1, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_indicator_size:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 33
    .line 34
    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_top_size:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    .line 41
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 42
    .line 43
    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_text_y_offset:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result v1

    .line 48
    .line 49
    iput v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    iput-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    new-instance v2, Landroid/graphics/Paint;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .line 63
    iput-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    new-instance v3, Landroid/graphics/Paint;

    .line 66
    .line 67
    .line 68
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .line 70
    iput-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    new-instance v4, Landroid/graphics/Paint;

    .line 73
    .line 74
    .line 75
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    iput-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    new-instance v5, Landroid/graphics/RectF;

    .line 80
    .line 81
    .line 82
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 83
    .line 84
    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 85
    .line 86
    new-instance v5, Landroid/graphics/RectF;

    .line 87
    .line 88
    .line 89
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 90
    .line 91
    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 92
    .line 93
    new-instance v5, Landroid/graphics/RectF;

    .line 94
    .line 95
    .line 96
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 97
    .line 98
    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 99
    .line 100
    const-string v5, ""

    .line 101
    .line 102
    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    .line 105
    const/4 v5, 0x1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .line 113
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    .line 118
    const/high16 v6, 0x41000000    # 8.0f

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    const/4 v0, 0x0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    .line 147
    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_cutter_text_color:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 151
    move-result v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    .line 161
    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 165
    move-result v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    .line 170
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_dot:I

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    const-string v2, "getBitmap(...)"

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    .line 193
    .line 194
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_left:I

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 213
    .line 214
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_double_white_arrow_right:I

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowRight:Landroid/graphics/Bitmap;

    .line 233
    return-void
.end method

.method private final convertMillisToTime(JZ)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    const/16 p3, 0x3e8

    .line 3
    int-to-long v0, p3

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    const/16 p3, 0x3c

    .line 7
    int-to-long v0, p3

    .line 8
    .line 9
    rem-long v2, p1, v0

    .line 10
    .line 11
    div-long v4, p1, v0

    .line 12
    rem-long/2addr v4, v0

    .line 13
    .line 14
    const/16 p3, 0xe10

    .line 15
    int-to-long v0, p3

    .line 16
    div-long/2addr p1, v0

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long p3, p1, v0

    .line 21
    .line 22
    const-string v0, "format(...)"

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    if-lez p3, :cond_0

    .line 28
    .line 29
    sget-object p3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 30
    .line 31
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 32
    const/4 v8, 0x3

    .line 33
    .line 34
    new-array v9, v8, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    aput-object p1, v9, v7

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    aput-object p1, v9, v6

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    aput-object p1, v9, v1

    .line 53
    .line 54
    .line 55
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string p2, "%d:%02d:%02d"

    .line 59
    .line 60
    .line 61
    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    sget-object p1, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 69
    .line 70
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 71
    .line 72
    new-array p2, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    aput-object p3, p2, v7

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    aput-object p3, p2, v6

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    const-string p3, "%01d:%02d"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;IZZZ)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move/from16 v9, p4

    .line 9
    .line 10
    const-string v2, "canvas"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v2, "baseRect"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v2, "cutRect"

    .line 21
    .line 22
    .line 23
    invoke-static {v8, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    .line 28
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/2addr v2, v9

    .line 30
    .line 31
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 34
    float-to-int v5, v4

    .line 35
    add-int/2addr v3, v5

    .line 36
    .line 37
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 38
    sub-int/2addr v5, v9

    .line 39
    .line 40
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 41
    float-to-int v4, v4

    .line 42
    sub-int/2addr v1, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v3, v5, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 46
    .line 47
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 51
    .line 52
    iget v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->coverColor:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    .line 60
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    .line 67
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 68
    .line 69
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 70
    sub-float/2addr v1, v2

    .line 71
    const/4 v10, 0x2

    .line 72
    int-to-float v11, v10

    .line 73
    .line 74
    sub-float v3, v1, v11

    .line 75
    .line 76
    iget v1, v8, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    div-float v4, v2, v11

    .line 79
    add-float/2addr v4, v1

    .line 80
    .line 81
    iget v5, v8, Landroid/graphics/RectF;->right:F

    .line 82
    add-float/2addr v5, v2

    .line 83
    add-float/2addr v5, v11

    .line 84
    div-float/2addr v2, v11

    .line 85
    .line 86
    add-float v6, v1, v2

    .line 87
    .line 88
    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 89
    move-object v1, p1

    .line 90
    move v2, v3

    .line 91
    move v3, v4

    .line 92
    move v4, v5

    .line 93
    move v5, v6

    .line 94
    move-object v6, v12

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 102
    sub-float/2addr v1, v2

    .line 103
    .line 104
    sub-float v3, v1, v11

    .line 105
    .line 106
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 107
    .line 108
    div-float v4, v2, v11

    .line 109
    .line 110
    sub-float v4, v1, v4

    .line 111
    .line 112
    iget v5, v8, Landroid/graphics/RectF;->right:F

    .line 113
    add-float/2addr v5, v2

    .line 114
    add-float/2addr v5, v11

    .line 115
    div-float/2addr v2, v11

    .line 116
    .line 117
    sub-float v6, v1, v2

    .line 118
    .line 119
    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 120
    move-object v1, p1

    .line 121
    move v2, v3

    .line 122
    move v3, v4

    .line 123
    move v4, v5

    .line 124
    move v5, v6

    .line 125
    move-object v6, v12

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    if-eqz p7, :cond_1

    .line 131
    .line 132
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 133
    .line 134
    const/high16 v2, 0x40a00000    # 5.0f

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    .line 139
    iget v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    .line 143
    move-result v2

    .line 144
    .line 145
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 149
    move-result v3

    .line 150
    add-float/2addr v2, v3

    .line 151
    mul-float/2addr v1, v2

    .line 152
    .line 153
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 157
    move-result v2

    .line 158
    div-float/2addr v2, v11

    .line 159
    sub-float/2addr v1, v2

    .line 160
    .line 161
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 165
    move-result v1

    .line 166
    .line 167
    if-eqz v1, :cond_0

    .line 168
    .line 169
    iget v1, v8, Landroid/graphics/RectF;->right:F

    .line 170
    .line 171
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    .line 172
    .line 173
    sub-float v4, v1, v2

    .line 174
    .line 175
    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 176
    .line 177
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    .line 178
    .line 179
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 180
    move-object v1, p1

    .line 181
    move v2, v4

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    goto :goto_0

    .line 186
    .line 187
    :cond_0
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 188
    .line 189
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerOffsetForDraw:F

    .line 190
    .line 191
    add-float v4, v1, v2

    .line 192
    .line 193
    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 194
    .line 195
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    .line 196
    .line 197
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->linePaint:Landroid/graphics/Paint;

    .line 198
    move-object v1, p1

    .line 199
    move v2, v4

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    .line 205
    .line 206
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    .line 207
    .line 208
    :goto_0
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 209
    .line 210
    iget v2, v8, Landroid/graphics/RectF;->left:F

    .line 211
    int-to-float v3, v9

    .line 212
    .line 213
    sub-float v4, v2, v3

    .line 214
    .line 215
    iget v5, v8, Landroid/graphics/RectF;->top:F

    .line 216
    .line 217
    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    .line 222
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 223
    .line 224
    iget v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 225
    .line 226
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 232
    const/4 v2, 0x0

    .line 233
    .line 234
    if-eqz p5, :cond_2

    .line 235
    .line 236
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 237
    .line 238
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 242
    move-result v5

    .line 243
    .line 244
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 245
    div-int/2addr v6, v10

    .line 246
    int-to-float v6, v6

    .line 247
    sub-float/2addr v5, v6

    .line 248
    .line 249
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    .line 253
    move-result v6

    .line 254
    .line 255
    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 256
    div-int/2addr v11, v10

    .line 257
    int-to-float v11, v11

    .line 258
    sub-float/2addr v6, v11

    .line 259
    .line 260
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    .line 264
    move-result v11

    .line 265
    .line 266
    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 267
    div-int/2addr v12, v10

    .line 268
    int-to-float v12, v12

    .line 269
    add-float/2addr v11, v12

    .line 270
    .line 271
    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 275
    move-result v12

    .line 276
    .line 277
    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 278
    div-int/2addr v13, v10

    .line 279
    int-to-float v13, v13

    .line 280
    add-float/2addr v12, v13

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 284
    .line 285
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    .line 286
    .line 287
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 288
    .line 289
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 293
    goto :goto_1

    .line 294
    .line 295
    :cond_2
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 296
    .line 297
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 301
    move-result v5

    .line 302
    .line 303
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 304
    div-int/2addr v6, v10

    .line 305
    int-to-float v6, v6

    .line 306
    sub-float/2addr v5, v6

    .line 307
    .line 308
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    .line 312
    move-result v6

    .line 313
    .line 314
    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 315
    int-to-float v11, v11

    .line 316
    div-float/2addr v11, v1

    .line 317
    sub-float/2addr v6, v11

    .line 318
    .line 319
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    .line 323
    move-result v11

    .line 324
    .line 325
    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 326
    div-int/2addr v12, v10

    .line 327
    int-to-float v12, v12

    .line 328
    add-float/2addr v11, v12

    .line 329
    .line 330
    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 334
    move-result v12

    .line 335
    .line 336
    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 337
    int-to-float v13, v13

    .line 338
    div-float/2addr v13, v1

    .line 339
    add-float/2addr v12, v13

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    .line 344
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowLeft:Landroid/graphics/Bitmap;

    .line 345
    .line 346
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 347
    .line 348
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 352
    .line 353
    :goto_1
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 354
    .line 355
    iget v5, v8, Landroid/graphics/RectF;->right:F

    .line 356
    .line 357
    iget v6, v8, Landroid/graphics/RectF;->top:F

    .line 358
    .line 359
    add-float v11, v5, v3

    .line 360
    .line 361
    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    .line 366
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 367
    .line 368
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->boundaryWidth:F

    .line 369
    .line 370
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerPaint:Landroid/graphics/Paint;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 374
    .line 375
    if-eqz p6, :cond_3

    .line 376
    .line 377
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 378
    .line 379
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 383
    move-result v4

    .line 384
    .line 385
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 386
    div-int/2addr v5, v10

    .line 387
    int-to-float v5, v5

    .line 388
    sub-float/2addr v4, v5

    .line 389
    .line 390
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 394
    move-result v5

    .line 395
    .line 396
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 397
    div-int/2addr v6, v10

    .line 398
    int-to-float v6, v6

    .line 399
    sub-float/2addr v5, v6

    .line 400
    .line 401
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    .line 405
    move-result v6

    .line 406
    .line 407
    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 408
    div-int/2addr v11, v10

    .line 409
    int-to-float v11, v11

    .line 410
    add-float/2addr v6, v11

    .line 411
    .line 412
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    .line 416
    move-result v11

    .line 417
    .line 418
    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 419
    div-int/2addr v12, v10

    .line 420
    int-to-float v12, v12

    .line 421
    add-float/2addr v11, v12

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 425
    .line 426
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapDot:Landroid/graphics/Bitmap;

    .line 427
    .line 428
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 429
    .line 430
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 434
    goto :goto_2

    .line 435
    .line 436
    :cond_3
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 437
    .line 438
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 442
    move-result v5

    .line 443
    .line 444
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 445
    div-int/2addr v6, v10

    .line 446
    int-to-float v6, v6

    .line 447
    sub-float/2addr v5, v6

    .line 448
    .line 449
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    .line 453
    move-result v6

    .line 454
    .line 455
    iget v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 456
    int-to-float v11, v11

    .line 457
    div-float/2addr v11, v1

    .line 458
    sub-float/2addr v6, v11

    .line 459
    .line 460
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    .line 464
    move-result v11

    .line 465
    .line 466
    iget v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 467
    div-int/2addr v12, v10

    .line 468
    int-to-float v12, v12

    .line 469
    add-float/2addr v11, v12

    .line 470
    .line 471
    iget-object v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerRect:Landroid/graphics/RectF;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 475
    move-result v12

    .line 476
    .line 477
    iget v13, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->controllerIndicatorSize:I

    .line 478
    int-to-float v13, v13

    .line 479
    div-float/2addr v13, v1

    .line 480
    add-float/2addr v12, v13

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 484
    .line 485
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapArrowRight:Landroid/graphics/Bitmap;

    .line 486
    .line 487
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->handlerIndicatorRect:Landroid/graphics/RectF;

    .line 488
    .line 489
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->bitmapPaint:Landroid/graphics/Paint;

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 493
    .line 494
    :goto_2
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 495
    .line 496
    iget v2, v8, Landroid/graphics/RectF;->left:F

    .line 497
    .line 498
    mul-int/lit8 v4, v9, 0x2

    .line 499
    int-to-float v4, v4

    .line 500
    .line 501
    sub-float v5, v2, v4

    .line 502
    .line 503
    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    .line 504
    .line 505
    iget v9, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    .line 506
    int-to-float v10, v9

    .line 507
    add-float/2addr v10, v6

    .line 508
    add-float/2addr v2, v3

    .line 509
    int-to-float v9, v9

    .line 510
    add-float/2addr v6, v9

    .line 511
    .line 512
    iget-object v9, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    .line 516
    move-result v9

    .line 517
    add-float/2addr v6, v9

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v5, v10, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    .line 522
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 523
    .line 524
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 528
    move-result v2

    .line 529
    .line 530
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 531
    .line 532
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 533
    .line 534
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 535
    .line 536
    .line 537
    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    .line 539
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 540
    .line 541
    iget v2, v8, Landroid/graphics/RectF;->right:F

    .line 542
    .line 543
    sub-float v3, v2, v3

    .line 544
    .line 545
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    .line 546
    .line 547
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textYOffset:I

    .line 548
    int-to-float v8, v6

    .line 549
    add-float/2addr v8, v5

    .line 550
    add-float/2addr v2, v4

    .line 551
    int-to-float v4, v6

    .line 552
    add-float/2addr v5, v4

    .line 553
    .line 554
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 558
    move-result v4

    .line 559
    add-float/2addr v5, v4

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v3, v8, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 563
    .line 564
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    .line 565
    .line 566
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 570
    move-result v2

    .line 571
    .line 572
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterTimeRect:Landroid/graphics/RectF;

    .line 573
    .line 574
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 575
    .line 576
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->textPaint:Landroid/graphics/Paint;

    .line 577
    .line 578
    .line 579
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    return-void
.end method

.method public final getCutterEndTimeText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCutterStartTimeText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPointerPercent()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    return v0
.end method

.method public final setCutterEndTimeText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    return-void
.end method

.method public final setCutterStartTimeText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    return-void
.end method

.method public final setPointerPercent(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->pointerPercent:F

    return-void
.end method

.method public final updateTimeText(JJZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterStartTimeText:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->convertMillisToTime(JZ)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->cutterEndTimeText:Ljava/lang/String;

    .line 32
    :goto_0
    return-void
.end method
