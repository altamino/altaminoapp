.class public Lcom/narvii/widget/cofetti/CofettiPartical;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final colors:[I

.field static final intep:Landroid/view/animation/DecelerateInterpolator;

.field static final trig:Landroid/graphics/Path;


# instance fields
.field color:I

.field flipoffset:I

.field flipv:F

.field fv:F

.field height:F

.field ptime:J

.field rot0:F

.field rot1:F

.field rotv:F

.field starttime:J

.field type:I

.field v:F

.field v0:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 3
    .line 4
    .line 5
    const v1, 0x3f4ccccd    # 0.8f

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->intep:Landroid/view/animation/DecelerateInterpolator;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->colors:[I

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Path;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    .line 27
    .line 28
    const/high16 v1, -0x3de00000    # -40.0f

    .line 29
    .line 30
    const/high16 v2, -0x3d600000    # -80.0f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 34
    .line 35
    const/high16 v1, 0x42f00000    # 120.0f

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    .line 40
    const/high16 v1, -0x3f800000    # -4.0f

    .line 41
    .line 42
    const/high16 v2, 0x42600000    # 56.0f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 49
    return-void

    .line 50
    nop

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :array_0
    .array-data 4
        -0x84a301
        -0x2d1d9
        -0xb94002
        -0x168530
        -0x13cd8
        -0x2a579
        -0x6ac601
        -0xb48101
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JLandroid/graphics/Paint;I)Z
    .locals 7

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 9
    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    sub-long v0, p2, v0

    .line 15
    .line 16
    iget v4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 17
    long-to-float v0, v0

    .line 18
    mul-float/2addr v0, v6

    .line 19
    div-float/2addr v0, v5

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    .line 22
    mul-float/2addr v0, v1

    .line 23
    add-float/2addr v4, v0

    .line 24
    .line 25
    iput v4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 26
    .line 27
    :cond_0
    iput-wide p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    .line 30
    .line 31
    cmp-long v2, v0, v2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sub-long v0, p2, v0

    .line 36
    long-to-float v0, v0

    .line 37
    mul-float/2addr v0, v6

    .line 38
    .line 39
    .line 40
    const v1, 0x451c4000    # 2500.0f

    .line 41
    div-float/2addr v0, v1

    .line 42
    .line 43
    cmpl-float v1, v0, v6

    .line 44
    .line 45
    if-lez v1, :cond_1

    .line 46
    move v0, v6

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    sget-object v1, Lcom/narvii/widget/cofetti/CofettiPartical;->intep:Landroid/view/animation/DecelerateInterpolator;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 53
    move-result v0

    .line 54
    .line 55
    :goto_0
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v0:F

    .line 56
    .line 57
    iget v2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->fv:F

    .line 58
    sub-float/2addr v2, v1

    .line 59
    mul-float/2addr v2, v0

    .line 60
    add-float/2addr v1, v2

    .line 61
    .line 62
    iput v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_2
    iput-wide p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    .line 66
    .line 67
    :goto_1
    iget v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 68
    .line 69
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 70
    neg-float v2, v1

    .line 71
    .line 72
    cmpg-float v2, v0, v2

    .line 73
    .line 74
    if-ltz v2, :cond_7

    .line 75
    .line 76
    iget v2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    .line 77
    neg-float v3, v2

    .line 78
    .line 79
    cmpg-float v3, v0, v3

    .line 80
    .line 81
    if-ltz v3, :cond_7

    .line 82
    int-to-float p5, p5

    .line 83
    add-float/2addr v1, p5

    .line 84
    .line 85
    cmpl-float v1, v0, v1

    .line 86
    .line 87
    if-gtz v1, :cond_7

    .line 88
    add-float/2addr p5, v2

    .line 89
    .line 90
    cmpl-float p5, v0, p5

    .line 91
    .line 92
    if-lez p5, :cond_3

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :cond_3
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->x:F

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipv:F

    .line 101
    .line 102
    iget v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipoffset:I

    .line 103
    int-to-long v0, v0

    .line 104
    add-long/2addr v0, p2

    .line 105
    long-to-float v0, v0

    .line 106
    mul-float/2addr p5, v0

    .line 107
    div-float/2addr p5, v5

    .line 108
    .line 109
    const/high16 v0, 0x40000000    # 2.0f

    .line 110
    mul-float/2addr p5, v0

    .line 111
    float-to-double v1, p5

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 117
    mul-double/2addr v1, v3

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 121
    move-result-wide v1

    .line 122
    double-to-float p5, v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v6, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 126
    .line 127
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot0:F

    .line 128
    .line 129
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot1:F

    .line 130
    add-float/2addr p5, v1

    .line 131
    .line 132
    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rotv:F

    .line 133
    long-to-float p2, p2

    .line 134
    mul-float/2addr v1, p2

    .line 135
    div-float/2addr v1, v5

    .line 136
    add-float/2addr p5, v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 140
    .line 141
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->color:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    .line 146
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    .line 147
    const/4 p3, 0x1

    .line 148
    .line 149
    if-nez p2, :cond_4

    .line 150
    .line 151
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 152
    const/4 p5, 0x0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p5, p5, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    goto :goto_2

    .line 157
    .line 158
    :cond_4
    if-ne p2, p3, :cond_5

    .line 159
    .line 160
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 161
    .line 162
    const/high16 p5, 0x42c80000    # 100.0f

    .line 163
    .line 164
    div-float v0, p2, p5

    .line 165
    div-float/2addr p2, p5

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 169
    .line 170
    sget-object p2, Lcom/narvii/widget/cofetti/CofettiPartical;->trig:Landroid/graphics/Path;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    const/4 p5, 0x2

    .line 176
    .line 177
    if-ne p2, p5, :cond_6

    .line 178
    .line 179
    iget p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 180
    neg-float p5, p2

    .line 181
    .line 182
    div-float v2, p5, v0

    .line 183
    .line 184
    iget p5, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    .line 185
    neg-float v1, p5

    .line 186
    .line 187
    div-float v3, v1, v0

    .line 188
    .line 189
    div-float v4, p2, v0

    .line 190
    .line 191
    div-float v5, p5, v0

    .line 192
    move-object v1, p1

    .line 193
    move-object v6, p4

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    :cond_6
    :goto_2
    return p3

    .line 198
    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 199
    return p1
.end method

.method public reset(Ljava/util/Random;FFIIF)V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->starttime:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->ptime:J

    .line 7
    int-to-float p4, p4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 11
    move-result v0

    .line 12
    mul-float/2addr p4, v0

    .line 13
    .line 14
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->x:F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 18
    move-result p4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    float-to-double v0, p4

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v2, 0x3ff1eb851eb851ecL    # 1.12

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 34
    move-result-wide v0

    .line 35
    double-to-float p4, v0

    .line 36
    .line 37
    .line 38
    const v0, 0x3f4ccccd    # 0.8f

    .line 39
    mul-float/2addr p4, v0

    .line 40
    .line 41
    .line 42
    const v0, -0x41666666    # -0.3f

    .line 43
    sub-float/2addr v0, p4

    .line 44
    int-to-float p4, p5

    .line 45
    mul-float/2addr v0, p4

    .line 46
    .line 47
    iput v0, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    float-to-double v0, p4

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v2, 0x3ff3851eb851eb85L    # 1.22

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 58
    move-result-wide v0

    .line 59
    double-to-float p4, v0

    .line 60
    .line 61
    .line 62
    const v0, -0x3ff33333    # -2.2f

    .line 63
    mul-float/2addr p4, v0

    .line 64
    int-to-float p5, p5

    .line 65
    mul-float/2addr p4, p5

    .line 66
    .line 67
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 68
    .line 69
    :goto_0
    iget p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 70
    float-to-double p4, p4

    .line 71
    float-to-double v0, p3

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 75
    move-result-wide v0

    .line 76
    float-to-double v2, p6

    .line 77
    mul-double/2addr v0, v2

    .line 78
    sub-double/2addr p4, v0

    .line 79
    double-to-float p4, p4

    .line 80
    .line 81
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->y:F

    .line 82
    .line 83
    const/high16 p4, 0x43160000    # 150.0f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 87
    move-result p5

    .line 88
    mul-float/2addr p5, p4

    .line 89
    .line 90
    const/high16 p4, 0x43a00000    # 320.0f

    .line 91
    add-float/2addr p5, p4

    .line 92
    mul-float/2addr p6, p5

    .line 93
    .line 94
    iput p6, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->fv:F

    .line 95
    const/4 p4, 0x0

    .line 96
    .line 97
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v:F

    .line 98
    .line 99
    iput p4, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->v0:F

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 103
    move-result p4

    .line 104
    sub-float/2addr p3, p2

    .line 105
    mul-float/2addr p4, p3

    .line 106
    add-float/2addr p4, p2

    .line 107
    const/4 p2, 0x5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 111
    move-result p2

    .line 112
    .line 113
    if-nez p2, :cond_1

    .line 114
    const/4 p2, 0x0

    .line 115
    .line 116
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    .line 117
    float-to-double p2, p4

    .line 118
    .line 119
    .line 120
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 121
    move-result-wide p2

    .line 122
    double-to-float p2, p2

    .line 123
    .line 124
    .line 125
    const p3, 0x4019999a    # 2.4f

    .line 126
    div-float/2addr p2, p3

    .line 127
    .line 128
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const/4 p3, 0x1

    .line 131
    .line 132
    if-ne p2, p3, :cond_2

    .line 133
    .line 134
    iput p3, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    .line 135
    float-to-double p2, p4

    .line 136
    .line 137
    .line 138
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 139
    move-result-wide p2

    .line 140
    double-to-float p2, p2

    .line 141
    .line 142
    .line 143
    const p3, 0x3fb33333    # 1.4f

    .line 144
    div-float/2addr p2, p3

    .line 145
    .line 146
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const/4 p2, 0x2

    .line 149
    .line 150
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->type:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 154
    move-result p2

    .line 155
    .line 156
    const/high16 p3, 0x40400000    # 3.0f

    .line 157
    mul-float/2addr p2, p3

    .line 158
    .line 159
    const/high16 p3, 0x3f800000    # 1.0f

    .line 160
    add-float/2addr p2, p3

    .line 161
    div-float/2addr p4, p2

    .line 162
    float-to-double p3, p4

    .line 163
    .line 164
    .line 165
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 166
    move-result-wide p3

    .line 167
    double-to-float p3, p3

    .line 168
    .line 169
    iput p3, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->width:F

    .line 170
    mul-float/2addr p3, p2

    .line 171
    .line 172
    iput p3, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->height:F

    .line 173
    .line 174
    :goto_1
    const/16 p2, 0x258

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 178
    move-result p2

    .line 179
    .line 180
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipoffset:I

    .line 181
    .line 182
    .line 183
    const p2, 0x3f19999a    # 0.6f

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 187
    move-result p3

    .line 188
    mul-float/2addr p3, p2

    .line 189
    .line 190
    .line 191
    const p2, 0x3f99999a    # 1.2f

    .line 192
    add-float/2addr p3, p2

    .line 193
    .line 194
    iput p3, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->flipv:F

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 198
    move-result p2

    .line 199
    .line 200
    const/high16 p3, 0x43340000    # 180.0f

    .line 201
    mul-float/2addr p2, p3

    .line 202
    .line 203
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot0:F

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 207
    move-result p2

    .line 208
    mul-float/2addr p2, p3

    .line 209
    .line 210
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rot1:F

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 214
    move-result p2

    .line 215
    .line 216
    const/high16 p3, 0x42f00000    # 120.0f

    .line 217
    mul-float/2addr p2, p3

    .line 218
    .line 219
    iput p2, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->rotv:F

    .line 220
    .line 221
    sget-object p2, Lcom/narvii/widget/cofetti/CofettiPartical;->colors:[I

    .line 222
    array-length p3, p2

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    .line 226
    move-result p1

    .line 227
    .line 228
    aget p1, p2, p1

    .line 229
    .line 230
    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiPartical;->color:I

    .line 231
    return-void
.end method
