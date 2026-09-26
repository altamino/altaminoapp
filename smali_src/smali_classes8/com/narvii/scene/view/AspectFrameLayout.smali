.class public Lcom/narvii/scene/view/AspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AspectFrameLayout"


# instance fields
.field private mTargetAspect:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/scene/view/AspectFrameLayout;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v3, "onMeasure target="

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-wide v3, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, " width=["

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "] height=["

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "]"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    iget-wide v2, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    cmpl-double v2, v2, v4

    .line 62
    .line 63
    if-lez v2, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 71
    move-result v3

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    move-result v6

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 79
    move-result v7

    .line 80
    add-int/2addr v6, v7

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 84
    move-result v7

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 88
    move-result v8

    .line 89
    add-int/2addr v7, v8

    .line 90
    sub-int/2addr v2, v6

    .line 91
    sub-int/2addr v3, v7

    .line 92
    int-to-double v8, v2

    .line 93
    int-to-double v10, v3

    .line 94
    .line 95
    div-double v12, v8, v10

    .line 96
    .line 97
    iget-wide v14, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 98
    div-double/2addr v14, v12

    .line 99
    .line 100
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 101
    sub-double/2addr v14, v12

    .line 102
    .line 103
    .line 104
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 105
    move-result-wide v12

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 111
    .line 112
    cmpg-double v12, v12, v16

    .line 113
    .line 114
    .line 115
    const-string/jumbo v13, "x"

    .line 116
    .line 117
    if-gez v12, :cond_0

    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string v5, "aspect ratio is good (target="

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    iget-wide v5, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v5, ", view="

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, ")"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_1

    .line 160
    .line 161
    :cond_0
    cmpl-double v4, v14, v4

    .line 162
    .line 163
    if-lez v4, :cond_1

    .line 164
    .line 165
    iget-wide v3, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 166
    div-double/2addr v8, v3

    .line 167
    double-to-int v3, v8

    .line 168
    goto :goto_0

    .line 169
    .line 170
    :cond_1
    iget-wide v4, v0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 171
    mul-double/2addr v10, v4

    .line 172
    double-to-int v2, v10

    .line 173
    .line 174
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    const-string v5, "new size="

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v5, " + padding "

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    add-int/2addr v2, v6

    .line 214
    add-int/2addr v3, v7

    .line 215
    .line 216
    const/high16 v1, 0x40000000    # 2.0f

    .line 217
    .line 218
    .line 219
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 220
    move-result v2

    .line 221
    .line 222
    .line 223
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 224
    move-result v1

    .line 225
    goto :goto_2

    .line 226
    .line 227
    :cond_2
    :goto_1
    move/from16 v2, p1

    .line 228
    .line 229
    move/from16 v1, p2

    .line 230
    .line 231
    .line 232
    :goto_2
    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 233
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpg-double v0, p1, v0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/scene/view/AspectFrameLayout;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "Setting aspect ratio to "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, " (was "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, ")"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    iget-wide v0, p0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 46
    .line 47
    cmpl-double v0, v0, p1

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iput-wide p1, p0, Lcom/narvii/scene/view/AspectFrameLayout;->mTargetAspect:D

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 55
    :cond_0
    return-void

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 61
    throw p1
.end method
