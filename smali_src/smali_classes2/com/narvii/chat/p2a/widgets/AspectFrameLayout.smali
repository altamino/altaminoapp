.class public Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AFL"


# instance fields
.field private final MODE_DRAG:I

.field private final MODE_NONE:I

.field private final MODE_ZOOM:I

.field VERBOSE_LOG:Z

.field private currentTwoTouchDistance:F

.field private deltaTwoTouchDistance:F

.field private fingerMode:I

.field private lastTwoTouchDistance:F

.field private mHorizontalScrollDelta:F

.field private mLastX:F

.field private mLastY:F

.field private mTargetAspect:D

.field private mTouchSlop:I

.field private nowX:F

.field private onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->VERBOSE_LOG:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    const/4 p2, 0x1

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_DRAG:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_ZOOM:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_NONE:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->deltaTwoTouchDistance:F

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTouchSlop:I

    .line 4
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->screenWidth:I

    return-void
.end method

.method private spaceTwoTouchEvent(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 10
    move-result v3

    .line 11
    sub-float/2addr v1, v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 19
    move-result p1

    .line 20
    sub-float/2addr v0, p1

    .line 21
    mul-float/2addr v1, v1

    .line 22
    mul-float/2addr v0, v0

    .line 23
    add-float/2addr v1, v0

    .line 24
    float-to-double v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    move-result-wide v0

    .line 29
    double-to-float p1, v0

    .line 30
    return p1
.end method


# virtual methods
.method public getDeltaTwoTouchDistance()F
    .locals 4

    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr v1, v0

    div-float v2, v1, v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    return v2
.end method

.method public getHorizontalScrollDelta()F
    .locals 1

    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->VERBOSE_LOG:Z

    .line 5
    .line 6
    const-string v2, "AFL"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v3, "onMeasure target="

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-wide v3, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, " width=["

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "] height=["

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "]"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    :cond_0
    iget-wide v3, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    cmpl-double v1, v3, v5

    .line 66
    .line 67
    if-lez v1, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 75
    move-result v3

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 79
    move-result v4

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 83
    move-result v7

    .line 84
    add-int/2addr v4, v7

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 88
    move-result v7

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 92
    move-result v8

    .line 93
    add-int/2addr v7, v8

    .line 94
    sub-int/2addr v1, v4

    .line 95
    sub-int/2addr v3, v7

    .line 96
    int-to-double v8, v1

    .line 97
    int-to-double v10, v3

    .line 98
    .line 99
    div-double v12, v8, v10

    .line 100
    .line 101
    iget-wide v14, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 102
    div-double/2addr v14, v12

    .line 103
    .line 104
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 105
    sub-double/2addr v14, v12

    .line 106
    .line 107
    .line 108
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 109
    move-result-wide v12

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 115
    .line 116
    cmpg-double v12, v12, v16

    .line 117
    .line 118
    const-string/jumbo v13, "x"

    .line 119
    .line 120
    if-gez v12, :cond_1

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    const-string v5, "aspect ratio is good (target="

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget-wide v5, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v5, ", view="

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v1, ")"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto :goto_1

    .line 163
    .line 164
    :cond_1
    cmpl-double v5, v14, v5

    .line 165
    .line 166
    if-lez v5, :cond_2

    .line 167
    .line 168
    iget-wide v5, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 169
    div-double/2addr v8, v5

    .line 170
    double-to-int v3, v8

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_2
    iget-wide v5, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 174
    mul-double/2addr v10, v5

    .line 175
    double-to-int v1, v10

    .line 176
    .line 177
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    const-string v6, "new size="

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v6, " + padding "

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/2addr v1, v4

    .line 217
    add-int/2addr v3, v7

    .line 218
    .line 219
    const/high16 v2, 0x40000000    # 2.0f

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 223
    move-result v1

    .line 224
    .line 225
    .line 226
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 227
    move-result v2

    .line 228
    goto :goto_2

    .line 229
    .line 230
    :cond_3
    :goto_1
    move/from16 v1, p1

    .line 231
    .line 232
    move/from16 v2, p2

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    move-result v0

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    const/4 v3, 0x3

    .line 29
    .line 30
    if-eq v0, v1, :cond_5

    .line 31
    const/4 v4, 0x2

    .line 32
    .line 33
    if-eq v0, v4, :cond_3

    .line 34
    const/4 v5, 0x5

    .line 35
    .line 36
    if-eq v0, v5, :cond_2

    .line 37
    const/4 v4, 0x6

    .line 38
    .line 39
    if-eq v0, v4, :cond_1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iput v3, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 43
    .line 44
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 45
    .line 46
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 47
    .line 48
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->spaceTwoTouchEvent(Landroid/view/MotionEvent;)F

    .line 53
    move-result v0

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 56
    .line 57
    iput v4, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 58
    .line 59
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 63
    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 69
    sub-float/2addr v0, v2

    .line 70
    .line 71
    iget v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->screenWidth:I

    .line 72
    int-to-float v2, v2

    .line 73
    div-float/2addr v0, v2

    .line 74
    .line 75
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_4
    if-ne v0, v4, :cond_9

    .line 79
    .line 80
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->spaceTwoTouchEvent(Landroid/view/MotionEvent;)F

    .line 84
    move-result v0

    .line 85
    .line 86
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 95
    .line 96
    :cond_6
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    .line 97
    .line 98
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 99
    .line 100
    iput v3, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 101
    .line 102
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 103
    .line 104
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 105
    .line 106
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 115
    .line 116
    :cond_8
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 117
    .line 118
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    .line 119
    .line 120
    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 121
    .line 122
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 123
    .line 124
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 130
    :cond_a
    return v1
.end method

.method public setAspectRatio(D)V
    .locals 3

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "Setting aspect ratio to "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, " (was "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "AFL"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    iget-wide v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 46
    .line 47
    cmpl-double v0, v0, p1

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iput-wide p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

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

.method public setMyOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnNotScrollTouchListener(Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    return-void
.end method
