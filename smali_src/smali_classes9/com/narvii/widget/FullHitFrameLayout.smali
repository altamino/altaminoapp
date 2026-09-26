.class public Lcom/narvii/widget/FullHitFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    const/4 v2, 0x3

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    cmpg-float v0, v0, v2

    .line 31
    .line 32
    if-ltz v0, :cond_a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v3

    .line 41
    int-to-float v3, v3

    .line 42
    .line 43
    cmpl-float v0, v0, v3

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 51
    move-result v0

    .line 52
    .line 53
    cmpg-float v0, v0, v2

    .line 54
    .line 55
    if-ltz v0, :cond_a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v2

    .line 64
    int-to-float v2, v2

    .line 65
    .line 66
    cmpl-float v0, v0, v2

    .line 67
    .line 68
    if-lez v0, :cond_3

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 78
    move-result v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 82
    move-result p1

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 88
    move-result v3

    .line 89
    int-to-float v3, v3

    .line 90
    .line 91
    cmpg-float v3, v2, v3

    .line 92
    .line 93
    if-gez v3, :cond_4

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 99
    move-result v2

    .line 100
    :goto_0
    int-to-float v2, v2

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 107
    move-result v3

    .line 108
    int-to-float v3, v3

    .line 109
    .line 110
    cmpl-float v3, v2, v3

    .line 111
    .line 112
    if-ltz v3, :cond_5

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 118
    move-result v2

    .line 119
    sub-int/2addr v2, v1

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    .line 129
    cmpg-float v3, p1, v3

    .line 130
    .line 131
    if-gez v3, :cond_6

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 137
    move-result p1

    .line 138
    :goto_2
    int-to-float p1, p1

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_6
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 145
    move-result v3

    .line 146
    int-to-float v3, v3

    .line 147
    .line 148
    cmpl-float v3, p1, v3

    .line 149
    .line 150
    if-ltz v3, :cond_7

    .line 151
    .line 152
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 156
    move-result p1

    .line 157
    sub-int/2addr p1, v1

    .line 158
    goto :goto_2

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_3
    invoke-virtual {v0, v2, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 162
    .line 163
    .line 164
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 170
    move-result v0

    .line 171
    .line 172
    if-lez v0, :cond_9

    .line 173
    const/4 v0, 0x0

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    const/4 v0, 0x0

    .line 180
    .line 181
    :goto_4
    iput-object v0, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 182
    .line 183
    if-nez v0, :cond_b

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    move-result p1

    .line 188
    return p1

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 200
    move-result p1

    .line 201
    .line 202
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 206
    move-result v3

    .line 207
    int-to-float v3, v3

    .line 208
    .line 209
    cmpg-float v3, v2, v3

    .line 210
    .line 211
    if-gez v3, :cond_c

    .line 212
    .line 213
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 217
    move-result v2

    .line 218
    :goto_6
    int-to-float v2, v2

    .line 219
    goto :goto_7

    .line 220
    .line 221
    :cond_c
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 225
    move-result v3

    .line 226
    int-to-float v3, v3

    .line 227
    .line 228
    cmpl-float v3, v2, v3

    .line 229
    .line 230
    if-ltz v3, :cond_d

    .line 231
    .line 232
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 236
    move-result v2

    .line 237
    sub-int/2addr v2, v1

    .line 238
    goto :goto_6

    .line 239
    .line 240
    :cond_d
    :goto_7
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 244
    move-result v3

    .line 245
    int-to-float v3, v3

    .line 246
    .line 247
    cmpg-float v3, p1, v3

    .line 248
    .line 249
    if-gez v3, :cond_e

    .line 250
    .line 251
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 255
    move-result p1

    .line 256
    :goto_8
    int-to-float p1, p1

    .line 257
    goto :goto_9

    .line 258
    .line 259
    :cond_e
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 263
    move-result v3

    .line 264
    int-to-float v3, v3

    .line 265
    .line 266
    cmpl-float v3, p1, v3

    .line 267
    .line 268
    if-ltz v3, :cond_f

    .line 269
    .line 270
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 274
    move-result p1

    .line 275
    sub-int/2addr p1, v1

    .line 276
    goto :goto_8

    .line 277
    .line 278
    .line 279
    :cond_f
    :goto_9
    invoke-virtual {v0, v2, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 280
    .line 281
    .line 282
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    move-result p1

    .line 284
    return p1
.end method
