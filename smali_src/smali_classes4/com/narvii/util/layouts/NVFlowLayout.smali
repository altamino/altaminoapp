.class public Lcom/narvii/util/layouts/NVFlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final CENTER:I = 0x0

.field private static final LEFT:I = -0x1

.field private static final RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NVFlowLayout"


# instance fields
.field protected layoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lineViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field protected mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected maxTagCount:I

.field protected maxTagLines:I

.field protected moreView:Landroid/view/View;

.field public needShowMore:Z

.field protected showEndItem:Z

.field public showMore:Z

.field protected showStartItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    .line 13
    sget-object v0, Lcom/narvii/lib/R$styleable;->NVFlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_flow_gravity:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 15
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_max_tag_count:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    .line 16
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_max_tag_lines:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 17
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_show_end_item:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showEndItem:Z

    .line 18
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_show_start_item:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showStartItem:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private setUpLineInfo(Z)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v3

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    move v6, v4

    .line 38
    move v7, v6

    .line 39
    move v9, v7

    .line 40
    move v8, v5

    .line 41
    .line 42
    :goto_0
    if-ge v6, v3, :cond_8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v10

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 50
    move-result v11

    .line 51
    .line 52
    const/16 v12, 0x8

    .line 53
    .line 54
    if-ne v11, v12, :cond_0

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    iget-object v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 59
    .line 60
    if-ne v10, v11, :cond_1

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_1
    iget v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    .line 65
    .line 66
    if-lez v11, :cond_2

    .line 67
    .line 68
    if-lt v6, v11, :cond_2

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    move-result-object v11

    .line 75
    .line 76
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result v12

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    move-result v13

    .line 85
    .line 86
    add-int v14, v12, v7

    .line 87
    .line 88
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 89
    add-int/2addr v14, v15

    .line 90
    .line 91
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 92
    add-int/2addr v14, v15

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 96
    move-result v15

    .line 97
    .line 98
    sub-int v15, v2, v15

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 102
    move-result v16

    .line 103
    .line 104
    sub-int v15, v15, v16

    .line 105
    .line 106
    if-le v14, v15, :cond_7

    .line 107
    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 109
    .line 110
    iget v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 111
    .line 112
    if-lez v14, :cond_5

    .line 113
    .line 114
    if-le v8, v14, :cond_5

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .line 128
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 132
    move-result v4

    .line 133
    .line 134
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 135
    add-int/2addr v4, v6

    .line 136
    .line 137
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 138
    add-int/2addr v4, v6

    .line 139
    add-int/2addr v7, v4

    .line 140
    .line 141
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 145
    move-result v4

    .line 146
    .line 147
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    add-int/2addr v4, v6

    .line 149
    .line 150
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 151
    add-int/2addr v4, v3

    .line 152
    .line 153
    .line 154
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 155
    move-result v9

    .line 156
    .line 157
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 158
    .line 159
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 160
    .line 161
    .line 162
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 166
    move-result v3

    .line 167
    sub-int/2addr v2, v3

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 171
    move-result v3

    .line 172
    sub-int/2addr v2, v3

    .line 173
    .line 174
    if-le v7, v2, :cond_8

    .line 175
    .line 176
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 177
    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 180
    move-result v2

    .line 181
    .line 182
    if-le v2, v5, :cond_8

    .line 183
    .line 184
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 185
    .line 186
    add-int/lit8 v2, v2, -0x2

    .line 187
    .line 188
    .line 189
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    check-cast v3, Landroid/view/View;

    .line 193
    .line 194
    if-eqz v3, :cond_3

    .line 195
    .line 196
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    move-result-object v4

    .line 201
    .line 202
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 206
    move-result v3

    .line 207
    .line 208
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    add-int/2addr v3, v6

    .line 210
    .line 211
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 212
    add-int/2addr v3, v4

    .line 213
    sub-int/2addr v7, v3

    .line 214
    .line 215
    :cond_3
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    goto :goto_2

    .line 220
    .line 221
    :cond_4
    iput-boolean v5, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :cond_5
    iget-object v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 225
    .line 226
    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v9

    .line 229
    .line 230
    .line 231
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 234
    .line 235
    iget-object v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 236
    .line 237
    .line 238
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 241
    .line 242
    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v7

    .line 245
    .line 246
    .line 247
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 250
    add-int/2addr v7, v13

    .line 251
    .line 252
    iget v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 253
    add-int/2addr v9, v7

    .line 254
    .line 255
    new-instance v7, Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    iput-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 261
    .line 262
    if-eqz v1, :cond_6

    .line 263
    .line 264
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 265
    .line 266
    if-ne v8, v7, :cond_6

    .line 267
    .line 268
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 269
    .line 270
    if-eqz v7, :cond_6

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 274
    move-result v2

    .line 275
    .line 276
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 280
    move-result v7

    .line 281
    sub-int/2addr v2, v7

    .line 282
    :cond_6
    move v7, v4

    .line 283
    .line 284
    :cond_7
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 285
    add-int/2addr v12, v14

    .line 286
    .line 287
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 288
    add-int/2addr v12, v14

    .line 289
    add-int/2addr v7, v12

    .line 290
    .line 291
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 292
    add-int/2addr v13, v12

    .line 293
    .line 294
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 295
    add-int/2addr v13, v11

    .line 296
    .line 297
    .line 298
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 299
    move-result v9

    .line 300
    .line 301
    iget-object v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 302
    .line 303
    .line 304
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_8
    :goto_2
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 311
    .line 312
    .line 313
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    move-result-object v3

    .line 315
    .line 316
    .line 317
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 320
    .line 321
    .line 322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v3

    .line 324
    .line 325
    .line 326
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 329
    .line 330
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 331
    .line 332
    .line 333
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    if-eqz v1, :cond_9

    .line 336
    return-void

    .line 337
    .line 338
    :cond_9
    iget-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 339
    .line 340
    if-eqz v1, :cond_a

    .line 341
    .line 342
    iget-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    .line 343
    .line 344
    if-eqz v1, :cond_a

    .line 345
    .line 346
    iget-object v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 347
    .line 348
    if-eqz v1, :cond_a

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v5}, Lcom/narvii/util/layouts/NVFlowLayout;->setUpLineInfo(Z)V

    .line 352
    :cond_a
    return-void
.end method


# virtual methods
.method public addMoreView(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->setUpLineInfo(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v4

    .line 19
    .line 20
    iget-object v5, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 24
    move-result v5

    .line 25
    .line 26
    iget-object v6, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 30
    move v6, v1

    .line 31
    .line 32
    :goto_0
    if-ge v6, v5, :cond_a

    .line 33
    .line 34
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 35
    .line 36
    if-lez v7, :cond_0

    .line 37
    .line 38
    if-lt v6, v7, :cond_0

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    check-cast v7, Ljava/util/List;

    .line 49
    .line 50
    iput-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 51
    .line 52
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    check-cast v7, Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v7

    .line 63
    .line 64
    iget-object v8, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v8

    .line 69
    .line 70
    check-cast v8, Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v8

    .line 75
    .line 76
    iget v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 77
    .line 78
    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    .line 80
    move-result v10

    .line 81
    const/4 v11, -0x1

    .line 82
    .line 83
    if-eqz v10, :cond_1

    .line 84
    .line 85
    iget v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 86
    mul-int/2addr v9, v11

    .line 87
    :cond_1
    const/4 v10, 0x1

    .line 88
    .line 89
    if-eq v9, v11, :cond_5

    .line 90
    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    if-eq v9, v10, :cond_2

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_2
    sub-int v3, v2, v8

    .line 97
    .line 98
    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    .line 100
    move-result v8

    .line 101
    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 106
    move-result v8

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 111
    move-result v8

    .line 112
    :goto_1
    sub-int/2addr v3, v8

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 117
    move-result v3

    .line 118
    .line 119
    sub-int v3, v2, v3

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 123
    move-result v9

    .line 124
    sub-int/2addr v3, v9

    .line 125
    sub-int/2addr v3, v8

    .line 126
    .line 127
    div-int/lit8 v3, v3, 0x2

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 131
    move-result v8

    .line 132
    add-int/2addr v3, v8

    .line 133
    goto :goto_2

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 137
    move-result v3

    .line 138
    :goto_2
    move v8, v1

    .line 139
    .line 140
    :goto_3
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 141
    .line 142
    .line 143
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 144
    move-result v9

    .line 145
    .line 146
    if-ge v8, v9, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    .line 150
    move-result v9

    .line 151
    .line 152
    if-eqz v9, :cond_6

    .line 153
    .line 154
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 155
    .line 156
    .line 157
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 158
    move-result v11

    .line 159
    sub-int/2addr v11, v8

    .line 160
    sub-int/2addr v11, v10

    .line 161
    .line 162
    .line 163
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    check-cast v9, Landroid/view/View;

    .line 167
    goto :goto_4

    .line 168
    .line 169
    :cond_6
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 170
    .line 171
    .line 172
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v9

    .line 174
    .line 175
    check-cast v9, Landroid/view/View;

    .line 176
    .line 177
    .line 178
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 179
    move-result v11

    .line 180
    .line 181
    const/16 v12, 0x8

    .line 182
    .line 183
    if-ne v11, v12, :cond_7

    .line 184
    goto :goto_5

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 188
    move-result-object v11

    .line 189
    .line 190
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    .line 192
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 193
    add-int/2addr v12, v3

    .line 194
    .line 195
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 196
    add-int/2addr v13, v4

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 200
    move-result v14

    .line 201
    add-int/2addr v14, v12

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 205
    move-result v15

    .line 206
    .line 207
    sub-int v15, v2, v15

    .line 208
    .line 209
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    sub-int/2addr v15, v10

    .line 211
    .line 212
    if-le v14, v15, :cond_8

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 216
    move-result v10

    .line 217
    .line 218
    sub-int v10, v2, v10

    .line 219
    .line 220
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 221
    .line 222
    sub-int v14, v10, v14

    .line 223
    .line 224
    .line 225
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 226
    move-result v10

    .line 227
    add-int/2addr v10, v13

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v12, v13, v14, v10}, Landroid/view/View;->layout(IIII)V

    .line 231
    .line 232
    iget-object v10, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    .line 233
    .line 234
    .line 235
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 239
    move-result v9

    .line 240
    .line 241
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 242
    add-int/2addr v9, v10

    .line 243
    .line 244
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 245
    add-int/2addr v9, v10

    .line 246
    add-int/2addr v3, v9

    .line 247
    .line 248
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 249
    const/4 v10, 0x1

    .line 250
    goto :goto_3

    .line 251
    :cond_9
    add-int/2addr v4, v7

    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    :cond_a
    :goto_6
    move v2, v1

    .line 257
    .line 258
    .line 259
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 260
    move-result v3

    .line 261
    .line 262
    if-ge v2, v3, :cond_c

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    .line 269
    .line 270
    .line 271
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 272
    move-result v4

    .line 273
    .line 274
    if-nez v4, :cond_b

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->layout(IIII)V

    .line 278
    .line 279
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 280
    goto :goto_7

    .line 281
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v5

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x1

    .line 27
    move v9, v7

    .line 28
    move v10, v9

    .line 29
    move v11, v10

    .line 30
    move v12, v8

    .line 31
    move v8, v11

    .line 32
    .line 33
    :goto_0
    if-ge v7, v6, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v13

    .line 38
    .line 39
    .line 40
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result v14

    .line 42
    .line 43
    const/16 v15, 0x8

    .line 44
    .line 45
    if-eq v14, v15, :cond_0

    .line 46
    .line 47
    iget-object v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 48
    .line 49
    if-ne v13, v14, :cond_1

    .line 50
    .line 51
    :cond_0
    move/from16 v16, v4

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    iget v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    .line 56
    .line 57
    if-lez v14, :cond_3

    .line 58
    .line 59
    if-lt v7, v14, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result v8

    .line 64
    add-int/2addr v9, v11

    .line 65
    .line 66
    :cond_2
    move/from16 v16, v4

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object v14

    .line 73
    .line 74
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .line 76
    .line 77
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 78
    move-result v15

    .line 79
    .line 80
    move/from16 v16, v4

    .line 81
    .line 82
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 83
    sub-int/2addr v15, v4

    .line 84
    .line 85
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 86
    sub-int/2addr v15, v4

    .line 87
    .line 88
    .line 89
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 90
    move-result v4

    .line 91
    .line 92
    .line 93
    invoke-static {v15, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 94
    move-result v4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v13, v4, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    move-result v4

    .line 102
    .line 103
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 104
    add-int/2addr v4, v15

    .line 105
    .line 106
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 107
    add-int/2addr v4, v15

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    move-result v13

    .line 112
    .line 113
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 114
    add-int/2addr v13, v15

    .line 115
    .line 116
    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    add-int/2addr v13, v14

    .line 118
    .line 119
    add-int v14, v10, v4

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 123
    move-result v15

    .line 124
    .line 125
    sub-int v15, v2, v15

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 129
    move-result v17

    .line 130
    .line 131
    sub-int v15, v15, v17

    .line 132
    .line 133
    if-le v14, v15, :cond_5

    .line 134
    .line 135
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    iget v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 138
    .line 139
    if-lez v14, :cond_4

    .line 140
    .line 141
    if-le v12, v14, :cond_4

    .line 142
    .line 143
    .line 144
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 145
    move-result v8

    .line 146
    add-int/2addr v9, v11

    .line 147
    goto :goto_4

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v8

    .line 152
    add-int/2addr v9, v11

    .line 153
    goto :goto_1

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result v13

    .line 158
    move v4, v14

    .line 159
    .line 160
    :goto_1
    add-int/lit8 v10, v6, -0x1

    .line 161
    .line 162
    if-ne v7, v10, :cond_6

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result v8

    .line 167
    add-int/2addr v9, v13

    .line 168
    :cond_6
    move v10, v4

    .line 169
    move v11, v13

    .line 170
    goto :goto_3

    .line 171
    .line 172
    :goto_2
    add-int/lit8 v4, v6, -0x1

    .line 173
    .line 174
    if-ne v7, v4, :cond_7

    .line 175
    .line 176
    .line 177
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 178
    move-result v4

    .line 179
    add-int/2addr v9, v11

    .line 180
    move v8, v4

    .line 181
    .line 182
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 183
    .line 184
    move/from16 v4, v16

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :goto_4
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 189
    .line 190
    if-eqz v4, :cond_8

    .line 191
    .line 192
    move/from16 v6, p1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v4, v6, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 196
    .line 197
    :cond_8
    const/high16 v1, 0x40000000    # 2.0f

    .line 198
    .line 199
    if-ne v3, v1, :cond_9

    .line 200
    goto :goto_5

    .line 201
    .line 202
    .line 203
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 204
    move-result v2

    .line 205
    add-int/2addr v8, v2

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 209
    move-result v2

    .line 210
    add-int/2addr v2, v8

    .line 211
    .line 212
    :goto_5
    if-ne v5, v1, :cond_a

    .line 213
    .line 214
    move/from16 v4, v16

    .line 215
    goto :goto_6

    .line 216
    .line 217
    .line 218
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 219
    move-result v1

    .line 220
    add-int/2addr v9, v1

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 224
    move-result v1

    .line 225
    .line 226
    add-int v4, v9, v1

    .line 227
    .line 228
    .line 229
    :goto_6
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 230
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setMaxTagLines(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setShowEndItem(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showEndItem:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setShowMore(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method

.method public showingMoreView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
