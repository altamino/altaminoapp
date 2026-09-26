.class public final Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private dividerColor:I

.field private final dividerPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dividerWidth:I

.field private max:I

.field private min:I

.field private originProgress:I

.field private progress:I

.field private progressBarColor:I

.field private progressHeight:I

.field private final progressPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rtl:Z

.field private seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startX:F

.field private thumbColor:I

.field private final thumbPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thumbRadius:I

.field private trimEnd:I

.field private trimEndRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trimStart:I

.field private trimStartRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trimmedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trimmedPartColor:I

.field private unTrimRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unTrimmedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unTrimmedPartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    .line 12
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    iput-boolean v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "#F5A623"

    .line 14
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressBarColor:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 15
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    const-string p2, "#22FFFFFF"

    .line 16
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPartColor:I

    const-string p2, "#55FFFFFF"

    .line 17
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPartColor:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 18
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbColor:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerColor:I

    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressBarColor:I

    .line 20
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPartColor:I

    .line 23
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPartColor:I

    .line 26
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbColor:I

    .line 29
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerColor:I

    .line 32
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    return v0
.end method

.method public final getSeekBarChangeListener()Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 10
    int-to-float v1, v1

    .line 11
    sub-float/2addr v0, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    int-to-float v1, v1

    .line 14
    div-float/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 22
    int-to-float v3, v3

    .line 23
    add-float/2addr v2, v3

    .line 24
    .line 25
    div-float v8, v2, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    move-result v2

    .line 30
    int-to-float v9, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const/high16 v10, 0x40000000    # 2.0f

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 40
    move-result v2

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 43
    .line 44
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 45
    .line 46
    const/high16 v11, 0x3f800000    # 1.0f

    .line 47
    .line 48
    if-le v3, v4, :cond_0

    .line 49
    .line 50
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    .line 51
    int-to-float v3, v3

    .line 52
    mul-float/2addr v3, v11

    .line 53
    .line 54
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 55
    int-to-float v5, v5

    .line 56
    div-float/2addr v3, v5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    .line 63
    mul-float v6, v1, v9

    .line 64
    sub-float/2addr v5, v6

    .line 65
    mul-float/2addr v3, v5

    .line 66
    add-float/2addr v3, v9

    .line 67
    add-float/2addr v3, v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v9, v0, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 75
    int-to-float v5, v4

    .line 76
    div-float/2addr v5, v10

    .line 77
    int-to-float v4, v4

    .line 78
    div-float/2addr v4, v10

    .line 79
    .line 80
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    :cond_0
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 86
    .line 87
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 88
    .line 89
    if-le v3, v4, :cond_1

    .line 90
    .line 91
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    .line 92
    .line 93
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 94
    int-to-float v4, v4

    .line 95
    mul-float/2addr v4, v11

    .line 96
    .line 97
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 98
    int-to-float v5, v5

    .line 99
    div-float/2addr v4, v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 103
    move-result v5

    .line 104
    int-to-float v5, v5

    .line 105
    .line 106
    mul-float v6, v1, v9

    .line 107
    sub-float/2addr v5, v6

    .line 108
    mul-float/2addr v4, v5

    .line 109
    add-float/2addr v4, v9

    .line 110
    .line 111
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 112
    int-to-float v5, v5

    .line 113
    mul-float/2addr v5, v11

    .line 114
    .line 115
    iget v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 116
    int-to-float v7, v7

    .line 117
    div-float/2addr v5, v7

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 121
    move-result v7

    .line 122
    int-to-float v7, v7

    .line 123
    sub-float/2addr v7, v6

    .line 124
    mul-float/2addr v5, v7

    .line 125
    add-float/2addr v5, v9

    .line 126
    add-float/2addr v5, v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4, v0, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    .line 131
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    .line 132
    .line 133
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 134
    int-to-float v4, v3

    .line 135
    div-float/2addr v4, v10

    .line 136
    int-to-float v3, v3

    .line 137
    div-float/2addr v3, v10

    .line 138
    .line 139
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    .line 144
    :cond_1
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 145
    .line 146
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 147
    .line 148
    if-ge v2, v3, :cond_2

    .line 149
    .line 150
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    .line 151
    int-to-float v2, v2

    .line 152
    mul-float/2addr v2, v11

    .line 153
    int-to-float v3, v3

    .line 154
    div-float/2addr v2, v3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 158
    move-result v3

    .line 159
    int-to-float v3, v3

    .line 160
    .line 161
    mul-float v5, v1, v9

    .line 162
    sub-float/2addr v3, v5

    .line 163
    mul-float/2addr v2, v3

    .line 164
    add-float/2addr v2, v9

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 168
    move-result v3

    .line 169
    int-to-float v3, v3

    .line 170
    sub-float/2addr v3, v9

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v2, v0, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    .line 175
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    .line 176
    .line 177
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 178
    int-to-float v4, v3

    .line 179
    div-float/2addr v4, v10

    .line 180
    int-to-float v3, v3

    .line 181
    div-float/2addr v3, v10

    .line 182
    .line 183
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 187
    .line 188
    :cond_2
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 189
    .line 190
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 191
    .line 192
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 193
    .line 194
    if-gt v2, v4, :cond_4

    .line 195
    .line 196
    if-gt v4, v3, :cond_4

    .line 197
    .line 198
    iget-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    .line 199
    .line 200
    if-eqz v2, :cond_3

    .line 201
    .line 202
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 206
    move-result v3

    .line 207
    int-to-float v3, v3

    .line 208
    sub-float/2addr v3, v9

    .line 209
    .line 210
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 211
    .line 212
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 213
    .line 214
    sub-int v5, v4, v5

    .line 215
    int-to-float v5, v5

    .line 216
    mul-float/2addr v5, v11

    .line 217
    int-to-float v4, v4

    .line 218
    div-float/2addr v5, v4

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 222
    move-result v4

    .line 223
    int-to-float v4, v4

    .line 224
    .line 225
    mul-float v6, v1, v9

    .line 226
    sub-float/2addr v4, v6

    .line 227
    mul-float/2addr v5, v4

    .line 228
    add-float/2addr v5, v9

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3, v0, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    goto :goto_0

    .line 233
    .line 234
    :cond_3
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    .line 235
    int-to-float v4, v4

    .line 236
    mul-float/2addr v4, v11

    .line 237
    int-to-float v3, v3

    .line 238
    div-float/2addr v4, v3

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 242
    move-result v3

    .line 243
    int-to-float v3, v3

    .line 244
    .line 245
    mul-float v5, v1, v9

    .line 246
    sub-float/2addr v3, v5

    .line 247
    mul-float/2addr v4, v3

    .line 248
    add-float/2addr v4, v9

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v9, v0, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    .line 253
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    .line 254
    .line 255
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    .line 256
    int-to-float v4, v3

    .line 257
    div-float/2addr v4, v10

    .line 258
    int-to-float v3, v3

    .line 259
    div-float/2addr v3, v10

    .line 260
    .line 261
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    .line 266
    :cond_4
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 267
    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    .line 270
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 271
    .line 272
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 273
    .line 274
    if-gt v2, v4, :cond_5

    .line 275
    .line 276
    if-ge v4, v3, :cond_5

    .line 277
    int-to-float v2, v4

    .line 278
    mul-float/2addr v2, v11

    .line 279
    int-to-float v3, v3

    .line 280
    div-float/2addr v2, v3

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 284
    move-result v3

    .line 285
    int-to-float v3, v3

    .line 286
    .line 287
    mul-float v4, v1, v9

    .line 288
    sub-float/2addr v3, v4

    .line 289
    mul-float/2addr v2, v3

    .line 290
    .line 291
    add-float v3, v2, v9

    .line 292
    .line 293
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    .line 294
    int-to-float v2, v2

    .line 295
    .line 296
    add-float v5, v3, v2

    .line 297
    .line 298
    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    .line 299
    move-object v2, p1

    .line 300
    move v4, v0

    .line 301
    move v6, v8

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    .line 306
    :cond_5
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 307
    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 309
    .line 310
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 311
    .line 312
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 313
    .line 314
    if-gt v2, v4, :cond_6

    .line 315
    .line 316
    if-ge v4, v3, :cond_6

    .line 317
    int-to-float v2, v4

    .line 318
    mul-float/2addr v2, v11

    .line 319
    int-to-float v3, v3

    .line 320
    div-float/2addr v2, v3

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 324
    move-result v3

    .line 325
    int-to-float v3, v3

    .line 326
    .line 327
    mul-float v4, v1, v9

    .line 328
    sub-float/2addr v3, v4

    .line 329
    mul-float/2addr v2, v3

    .line 330
    .line 331
    add-float v3, v2, v9

    .line 332
    .line 333
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    .line 334
    int-to-float v2, v2

    .line 335
    .line 336
    add-float v5, v3, v2

    .line 337
    .line 338
    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    .line 339
    move-object v2, p1

    .line 340
    move v4, v0

    .line 341
    move v6, v8

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 345
    .line 346
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    .line 347
    .line 348
    if-eqz v0, :cond_7

    .line 349
    .line 350
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 351
    .line 352
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 353
    .line 354
    sub-int v2, v0, v2

    .line 355
    int-to-float v2, v2

    .line 356
    mul-float/2addr v2, v11

    .line 357
    int-to-float v0, v0

    .line 358
    div-float/2addr v2, v0

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 362
    move-result v0

    .line 363
    int-to-float v0, v0

    .line 364
    mul-float/2addr v1, v9

    .line 365
    sub-float/2addr v0, v1

    .line 366
    mul-float/2addr v2, v0

    .line 367
    add-float/2addr v2, v9

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 371
    move-result v0

    .line 372
    int-to-float v0, v0

    .line 373
    div-float/2addr v0, v10

    .line 374
    .line 375
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    .line 376
    int-to-float v1, v1

    .line 377
    .line 378
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 382
    goto :goto_1

    .line 383
    .line 384
    :cond_7
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 385
    int-to-float v0, v0

    .line 386
    mul-float/2addr v0, v11

    .line 387
    .line 388
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 389
    int-to-float v2, v2

    .line 390
    div-float/2addr v0, v2

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 394
    move-result v2

    .line 395
    int-to-float v2, v2

    .line 396
    mul-float/2addr v1, v9

    .line 397
    sub-float/2addr v2, v1

    .line 398
    mul-float/2addr v0, v2

    .line 399
    add-float/2addr v0, v9

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 403
    move-result v1

    .line 404
    int-to-float v1, v1

    .line 405
    div-float/2addr v1, v10

    .line 406
    .line 407
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    .line 408
    int-to-float v2, v2

    .line 409
    .line 410
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 414
    :cond_8
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v5

    .line 29
    .line 30
    if-nez v5, :cond_7

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 37
    .line 38
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 39
    sub-int/2addr v1, v5

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 43
    :goto_1
    int-to-float v1, v1

    .line 44
    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    mul-float/2addr v1, v5

    .line 47
    .line 48
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 49
    int-to-float v5, v5

    .line 50
    .line 51
    div-float v5, v1, v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 55
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    int-to-float v7, v3

    .line 58
    mul-float/2addr v7, v0

    .line 59
    sub-float/2addr v6, v7

    .line 60
    mul-float/2addr v5, v6

    .line 61
    add-float/2addr v5, v0

    .line 62
    .line 63
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    .line 64
    mul-int/2addr v6, v3

    .line 65
    int-to-float v6, v6

    .line 66
    sub-float/2addr v5, v6

    .line 67
    .line 68
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 69
    int-to-float v6, v6

    .line 70
    div-float/2addr v1, v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 74
    move-result v6

    .line 75
    int-to-float v6, v6

    .line 76
    sub-float/2addr v6, v7

    .line 77
    mul-float/2addr v1, v6

    .line 78
    add-float/2addr v1, v0

    .line 79
    .line 80
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    .line 81
    mul-int/2addr v6, v3

    .line 82
    int-to-float v3, v6

    .line 83
    add-float/2addr v1, v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 87
    move-result v3

    .line 88
    .line 89
    cmpg-float v5, v5, v3

    .line 90
    .line 91
    if-gtz v5, :cond_4

    .line 92
    .line 93
    cmpg-float v1, v3, v1

    .line 94
    .line 95
    if-gtz v1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    move-result p1

    .line 100
    .line 101
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 102
    .line 103
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 104
    .line 105
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V

    .line 113
    :cond_3
    return v4

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 117
    move-result v1

    .line 118
    int-to-float v1, v1

    .line 119
    sub-float/2addr v1, v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 123
    move-result v3

    .line 124
    .line 125
    cmpg-float v0, v0, v3

    .line 126
    .line 127
    if-gtz v0, :cond_6

    .line 128
    .line 129
    cmpg-float v0, v3, v1

    .line 130
    .line 131
    if-gtz v0, :cond_6

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 135
    move-result v0

    .line 136
    .line 137
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 138
    sub-float/2addr v0, v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 142
    move-result v1

    .line 143
    int-to-float v1, v1

    .line 144
    sub-float/2addr v1, v7

    .line 145
    div-float/2addr v0, v1

    .line 146
    .line 147
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 148
    int-to-float v1, v1

    .line 149
    mul-float/2addr v0, v1

    .line 150
    float-to-int v0, v0

    .line 151
    .line 152
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 153
    add-int/2addr v0, v1

    .line 154
    .line 155
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 163
    move-result p1

    .line 164
    sub-float/2addr v0, p1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 168
    move-result p1

    .line 169
    int-to-float p1, p1

    .line 170
    sub-float/2addr p1, v7

    .line 171
    div-float/2addr v0, p1

    .line 172
    .line 173
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 174
    int-to-float p1, p1

    .line 175
    mul-float/2addr v0, p1

    .line 176
    float-to-int p1, v0

    .line 177
    .line 178
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 179
    add-int/2addr v0, p1

    .line 180
    .line 181
    .line 182
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    .line 185
    .line 186
    if-eqz p1, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, p0, v0, v4}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V

    .line 190
    :cond_6
    return v2

    .line 191
    .line 192
    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 193
    goto :goto_4

    .line 194
    .line 195
    .line 196
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v5

    .line 198
    .line 199
    if-ne v5, v3, :cond_d

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 203
    move-result v1

    .line 204
    .line 205
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 206
    sub-float/2addr v1, v2

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 210
    move-result v2

    .line 211
    int-to-float v2, v2

    .line 212
    int-to-float v3, v3

    .line 213
    mul-float/2addr v3, v0

    .line 214
    sub-float/2addr v2, v3

    .line 215
    div-float/2addr v1, v2

    .line 216
    .line 217
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 218
    int-to-float v0, v0

    .line 219
    mul-float/2addr v1, v0

    .line 220
    float-to-int v0, v1

    .line 221
    .line 222
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 223
    add-int/2addr v0, v1

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 227
    .line 228
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    .line 229
    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 236
    move-result p1

    .line 237
    sub-float/2addr v0, p1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 241
    move-result p1

    .line 242
    int-to-float p1, p1

    .line 243
    sub-float/2addr p1, v3

    .line 244
    div-float/2addr v0, p1

    .line 245
    .line 246
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 247
    int-to-float p1, p1

    .line 248
    mul-float/2addr v0, p1

    .line 249
    float-to-int p1, v0

    .line 250
    .line 251
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 252
    add-int/2addr p1, v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 256
    .line 257
    :cond_9
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 258
    .line 259
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    .line 260
    .line 261
    if-ge p1, v0, :cond_a

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 265
    goto :goto_3

    .line 266
    .line 267
    :cond_a
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 268
    .line 269
    if-le p1, v0, :cond_b

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 273
    .line 274
    .line 275
    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 276
    .line 277
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    .line 278
    .line 279
    if-eqz p1, :cond_c

    .line 280
    .line 281
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 282
    .line 283
    .line 284
    invoke-interface {p1, p0, v0, v4}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V

    .line 285
    :cond_c
    return v4

    .line 286
    .line 287
    :cond_d
    :goto_4
    if-nez v1, :cond_e

    .line 288
    goto :goto_5

    .line 289
    .line 290
    .line 291
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 292
    move-result p1

    .line 293
    .line 294
    if-ne p1, v4, :cond_10

    .line 295
    .line 296
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    .line 297
    .line 298
    if-eqz p1, :cond_f

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V

    .line 302
    :cond_f
    return v4

    .line 303
    :cond_10
    :goto_5
    return v2
.end method

.method public final setProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method public final setSeekBarChangeListener(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1    # Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public final setTrim(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 7
    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_1
    return-void
.end method
