.class public Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private forceCenter:Z

.field grid:Landroid/view/View;

.field private final itemMargin:I

.field private final itemPadding:I

.field private final questionBottom:I

.field statusBar:Landroid/view/View;

.field stub1:Landroid/view/View;

.field title:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_padding_h:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_margin:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    move-result p1

    .line 29
    .line 30
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_question_margin_bottom:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result p1

    .line 41
    .line 42
    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    .line 43
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$id;->grid:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/narvii/mediaeditor/R$id;->question:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lcom/narvii/mediaeditor/R$id;->stub1:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    .line 28
    .line 29
    sget v0, Lcom/narvii/mediaeditor/R$id;->status_bar_placeholder:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->statusBar:Landroid/view/View;

    .line 36
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    const v2, 0x3f4ccccd    # 0.8f

    .line 16
    mul-float/2addr v1, v2

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    .line 19
    int-to-float v3, v2

    .line 20
    sub-float/2addr v1, v3

    .line 21
    .line 22
    iget v3, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    .line 23
    .line 24
    mul-int/lit8 v4, v3, 0x4

    .line 25
    int-to-float v4, v4

    .line 26
    sub-float/2addr v1, v4

    .line 27
    .line 28
    const/high16 v4, 0x40000000    # 2.0f

    .line 29
    div-float/2addr v1, v4

    .line 30
    .line 31
    .line 32
    const v5, 0x3fa51eb8    # 1.29f

    .line 33
    mul-float/2addr v1, v5

    .line 34
    mul-float/2addr v1, v4

    .line 35
    .line 36
    mul-int/lit8 v3, v3, 0x4

    .line 37
    int-to-float v3, v3

    .line 38
    add-float/2addr v1, v3

    .line 39
    int-to-float v2, v2

    .line 40
    add-float/2addr v1, v2

    .line 41
    float-to-int v1, v1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    move v6, v3

    .line 45
    move v7, v6

    .line 46
    move v8, v7

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    move-result v9

    .line 51
    const/4 v10, 0x1

    .line 52
    .line 53
    if-ge v3, v9, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 61
    move-result v11

    .line 62
    .line 63
    sget v12, Lcom/narvii/mediaeditor/R$id;->stub1:I

    .line 64
    .line 65
    if-eq v11, v12, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 69
    move-result v11

    .line 70
    .line 71
    sget v12, Lcom/narvii/mediaeditor/R$id;->grid:I

    .line 72
    .line 73
    if-eq v11, v12, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 77
    move-result v11

    .line 78
    .line 79
    sget v12, Lcom/narvii/mediaeditor/R$id;->question:I

    .line 80
    .line 81
    if-ne v11, v12, :cond_0

    .line 82
    move v8, v10

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    move-result v10

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object v11

    .line 91
    .line 92
    instance-of v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    .line 94
    if-eqz v11, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    move-result-object v9

    .line 99
    .line 100
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .line 102
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    .line 104
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 105
    add-int/2addr v11, v9

    .line 106
    add-int/2addr v10, v11

    .line 107
    :cond_1
    add-int/2addr v6, v10

    .line 108
    .line 109
    if-nez v8, :cond_2

    .line 110
    add-int/2addr v7, v10

    .line 111
    .line 112
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_3
    sub-int v3, v0, v6

    .line 116
    .line 117
    mul-int/lit8 v6, v7, 0x2

    .line 118
    .line 119
    sub-int v6, v0, v6

    .line 120
    .line 121
    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 125
    move-result v8

    .line 126
    sub-int/2addr v6, v8

    .line 127
    .line 128
    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    .line 129
    sub-int/2addr v6, v8

    .line 130
    .line 131
    if-le v6, v1, :cond_4

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move v10, v2

    .line 134
    .line 135
    :goto_1
    if-eqz v10, :cond_5

    .line 136
    sub-int/2addr v6, v1

    .line 137
    .line 138
    div-int/lit8 v6, v6, 0x2

    .line 139
    goto :goto_2

    .line 140
    .line 141
    :cond_5
    if-le v3, v1, :cond_6

    .line 142
    move v6, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move v6, v2

    .line 145
    move v1, v3

    .line 146
    .line 147
    :goto_2
    if-nez v10, :cond_7

    .line 148
    .line 149
    iget-boolean v3, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    const/high16 v8, 0x420c0000    # 35.0f

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 161
    move-result v3

    .line 162
    .line 163
    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->statusBar:Landroid/view/View;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    move-result v8

    .line 168
    add-int/2addr v3, v8

    .line 169
    sub-int/2addr v0, v1

    .line 170
    .line 171
    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 175
    move-result v8

    .line 176
    sub-int/2addr v0, v8

    .line 177
    .line 178
    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    .line 179
    sub-int/2addr v0, v8

    .line 180
    .line 181
    div-int/lit8 v0, v0, 0x2

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v0

    .line 186
    sub-int/2addr v0, v7

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 190
    move-result v0

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    move v0, v2

    .line 193
    .line 194
    :goto_3
    iget v3, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    .line 195
    .line 196
    mul-int/lit8 v7, v3, 0x4

    .line 197
    .line 198
    sub-int v7, v1, v7

    .line 199
    .line 200
    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    .line 201
    sub-int/2addr v7, v8

    .line 202
    int-to-float v7, v7

    .line 203
    div-float/2addr v7, v4

    .line 204
    div-float/2addr v7, v5

    .line 205
    mul-float/2addr v7, v4

    .line 206
    .line 207
    mul-int/lit8 v3, v3, 0x4

    .line 208
    int-to-float v3, v3

    .line 209
    add-float/2addr v7, v3

    .line 210
    int-to-float v3, v8

    .line 211
    add-float/2addr v7, v3

    .line 212
    float-to-int v3, v7

    .line 213
    .line 214
    iget-object v4, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    .line 215
    .line 216
    if-eqz v4, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    .line 224
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    .line 226
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .line 231
    :cond_8
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    .line 232
    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 241
    move-result v2

    .line 242
    .line 243
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    .line 245
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    .line 247
    if-eqz v2, :cond_9

    .line 248
    move-object v2, v1

    .line 249
    .line 250
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    .line 252
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 253
    .line 254
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 261
    return-void
.end method

.method public setForceCenter(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method
