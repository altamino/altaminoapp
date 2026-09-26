.class public Lcom/narvii/community/FTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field hash:I

.field markColor:I

.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;

.field final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 18
    const/4 p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    .line 23
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    new-instance p1, Ljava/util/Random;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/community/FTextView;->markColor:I

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget v3, v0, Lcom/narvii/community/FTextView;->markColor:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    .line 37
    iget-object v2, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 41
    move-result v2

    .line 42
    .line 43
    iget-object v3, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 47
    move-result v3

    .line 48
    .line 49
    sub-float v4, v3, v2

    .line 50
    .line 51
    .line 52
    const v5, 0x3e4ccccd    # 0.2f

    .line 53
    mul-float/2addr v4, v5

    .line 54
    .line 55
    iget-object v5, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    .line 56
    .line 57
    iget v6, v0, Lcom/narvii/community/FTextView;->hash:I

    .line 58
    int-to-long v6, v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v6, v7}, Ljava/util/Random;->setSeed(J)V

    .line 62
    const/4 v5, 0x0

    .line 63
    move v6, v5

    .line 64
    move v7, v6

    .line 65
    .line 66
    :goto_0
    if-ge v6, v1, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 70
    move-result-object v8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineLeft(I)F

    .line 74
    move-result v9

    .line 75
    sub-float/2addr v9, v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineRight(I)F

    .line 79
    move-result v10

    .line 80
    add-float/2addr v10, v4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 84
    move-result v8

    .line 85
    int-to-float v8, v8

    .line 86
    .line 87
    add-float v11, v8, v2

    .line 88
    add-float/2addr v8, v3

    .line 89
    .line 90
    iget-object v12, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 94
    .line 95
    if-nez v6, :cond_0

    .line 96
    .line 97
    iget-object v7, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    .line 101
    move-result v7

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_0
    if-nez v7, :cond_1

    .line 105
    const/4 v7, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v7, v5

    .line 108
    .line 109
    :goto_1
    const/high16 v12, 0x40000000    # 2.0f

    .line 110
    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    div-float v13, v4, v12

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    neg-float v13, v4

    .line 116
    div-float/2addr v13, v12

    .line 117
    .line 118
    :goto_2
    iget-object v14, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 119
    .line 120
    add-float v15, v9, v13

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v15, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    .line 125
    iget-object v14, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 126
    sub-float/2addr v9, v13

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    .line 131
    iget-object v9, v0, Lcom/narvii/community/FTextView;->random:Ljava/util/Random;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/util/Random;->nextBoolean()Z

    .line 135
    move-result v9

    .line 136
    .line 137
    if-eqz v9, :cond_3

    .line 138
    .line 139
    div-float v9, v4, v12

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    neg-float v9, v4

    .line 142
    div-float/2addr v9, v12

    .line 143
    .line 144
    :goto_3
    iget-object v12, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 145
    .line 146
    add-float v13, v10, v9

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v13, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    .line 151
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 152
    sub-float/2addr v10, v9

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    .line 157
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 161
    .line 162
    iget-object v8, v0, Lcom/narvii/community/FTextView;->path:Landroid/graphics/Path;

    .line 163
    .line 164
    iget-object v9, v0, Lcom/narvii/community/FTextView;->paint:Landroid/graphics/Paint;

    .line 165
    .line 166
    move-object/from16 v10, p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    .line 171
    add-int/lit8 v6, v6, 0x1

    .line 172
    goto :goto_0

    .line 173
    .line 174
    :cond_4
    move-object/from16 v10, p1

    .line 175
    .line 176
    .line 177
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    return-void
.end method

.method public setMarkColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/community/FTextView;->markColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result p1

    .line 12
    .line 13
    :goto_0
    iput p1, p0, Lcom/narvii/community/FTextView;->hash:I

    .line 14
    return-void
.end method
