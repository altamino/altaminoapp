.class public Lcom/narvii/list/DivideColumnAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# static fields
.field private static final EMPTY_CELLS:[Landroid/view/View;

.field public static final GRID_CONTAINER:Lcom/narvii/util/Tag;


# instance fields
.field private backGroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected column:I

.field private context:Lcom/narvii/app/NVContext;

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field protected paddingBottom:I

.field protected paddingLeft:I

.field protected paddingRight:I

.field protected paddingTop:I

.field public recyclerItem:Z

.field private supportLongClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "gridContainer"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    new-array v0, v0, [Landroid/view/View;

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IIII)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingLeft:I

    iput p3, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingRight:I

    iput p5, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingBottom:I

    iput p4, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingTop:I

    return-void
.end method

.method public static getDividedCells(Landroid/view/View;)[Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    instance-of v0, p0, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p0, Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v1

    .line 14
    .line 15
    :goto_0
    if-ge v3, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    sget-object v6, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 26
    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    check-cast v4, Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x1

    .line 35
    .line 36
    if-ne v5, v6, :cond_1

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    if-nez v2, :cond_3

    .line 56
    .line 57
    sget-object p0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p0

    .line 63
    .line 64
    new-array p0, p0, [Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    check-cast p0, [Landroid/view/View;

    .line 71
    :goto_1
    return-object p0

    .line 72
    .line 73
    :cond_4
    sget-object p0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    .line 74
    return-object p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected fullWidth(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    div-int/2addr v0, v1

    .line 17
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    check-cast p2, Landroid/widget/LinearLayout;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "divide row convert view not reusable: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 35
    :cond_1
    move-object p2, p3

    .line 36
    :goto_0
    const/4 v0, 0x0

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    new-instance p2, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    sget-object v1, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 59
    .line 60
    iget v1, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingLeft:I

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingRight:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 72
    move-result v1

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingTop:I

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v2, v0

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 82
    move-result v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    .line 86
    move-result v4

    .line 87
    const/4 v5, 0x1

    .line 88
    sub-int/2addr v4, v5

    .line 89
    .line 90
    if-ne p1, v4, :cond_4

    .line 91
    .line 92
    iget v4, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingBottom:I

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v4, v0

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    move-result v1

    .line 102
    .line 103
    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 104
    .line 105
    if-ge v1, v2, :cond_6

    .line 106
    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    const/16 v2, 0x11

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    .line 121
    sget-object v2, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const v2, 0x7fffffff

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/list/DivideColumnAdapter;->context:Lcom/narvii/app/NVContext;

    .line 139
    .line 140
    instance-of v3, v2, Lcom/narvii/list/NVListFragment;

    .line 141
    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    check-cast v2, Lcom/narvii/list/NVListFragment;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    :cond_5
    iget-object v2, p0, Lcom/narvii/list/DivideColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    goto :goto_3

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 163
    move-result v1

    .line 164
    .line 165
    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 166
    .line 167
    if-le v1, v2, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 171
    move-result v1

    .line 172
    sub-int/2addr v1, v5

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 176
    goto :goto_4

    .line 177
    .line 178
    :cond_7
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 179
    .line 180
    .line 181
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 182
    move-result v1

    .line 183
    move v2, v0

    .line 184
    .line 185
    :goto_5
    iget v3, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 186
    .line 187
    if-ge v2, v3, :cond_13

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    check-cast v3, Landroid/widget/LinearLayout;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    .line 197
    move-result v4

    .line 198
    add-int/2addr v4, v2

    .line 199
    .line 200
    if-ge v4, v1, :cond_12

    .line 201
    .line 202
    add-int/lit8 v6, p1, 0x1

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    .line 206
    move-result v7

    .line 207
    .line 208
    if-eq v6, v7, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v6}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    .line 212
    move-result v6

    .line 213
    .line 214
    if-ge v4, v6, :cond_12

    .line 215
    .line 216
    :cond_8
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 217
    .line 218
    .line 219
    invoke-interface {v6, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 220
    move-result-object v6

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v6}, Lcom/narvii/list/DivideColumnAdapter;->fullWidth(Ljava/lang/Object;)Z

    .line 224
    move-result v6

    .line 225
    .line 226
    if-eqz v6, :cond_9

    .line 227
    .line 228
    goto/16 :goto_c

    .line 229
    .line 230
    :cond_9
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 231
    .line 232
    .line 233
    invoke-interface {v6, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 234
    move-result v6

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 238
    move-result v7

    .line 239
    .line 240
    if-ne v7, v5, :cond_a

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 244
    move-result v7

    .line 245
    .line 246
    if-ne v7, v6, :cond_a

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 250
    move-result-object v7

    .line 251
    goto :goto_6

    .line 252
    :cond_a
    move-object v7, p3

    .line 253
    .line 254
    :goto_6
    iget-boolean v8, p0, Lcom/narvii/list/DivideColumnAdapter;->recyclerItem:Z

    .line 255
    .line 256
    if-nez v8, :cond_b

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    goto :goto_7

    .line 261
    .line 262
    :cond_b
    if-nez v7, :cond_c

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    .line 267
    :cond_c
    :goto_7
    iget-object v8, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 268
    .line 269
    .line 270
    invoke-interface {v8, v4, v7, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 271
    move-result-object v8

    .line 272
    .line 273
    iget-boolean v9, p0, Lcom/narvii/list/DivideColumnAdapter;->recyclerItem:Z

    .line 274
    .line 275
    if-nez v9, :cond_d

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    goto :goto_8

    .line 280
    .line 281
    :cond_d
    if-nez v7, :cond_e

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    :cond_e
    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 288
    .line 289
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 290
    .line 291
    .line 292
    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 293
    move-result v4

    .line 294
    .line 295
    if-eqz v4, :cond_f

    .line 296
    .line 297
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 298
    goto :goto_9

    .line 299
    :cond_f
    move-object v6, p3

    .line 300
    .line 301
    .line 302
    :goto_9
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 306
    .line 307
    iget-boolean v6, p0, Lcom/narvii/list/DivideColumnAdapter;->supportLongClick:Z

    .line 308
    .line 309
    if-eqz v6, :cond_11

    .line 310
    .line 311
    if-eqz v4, :cond_10

    .line 312
    .line 313
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 314
    goto :goto_a

    .line 315
    :cond_10
    move-object v6, p3

    .line 316
    .line 317
    .line 318
    :goto_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 322
    .line 323
    .line 324
    :cond_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    goto :goto_b

    .line 326
    .line 327
    .line 328
    :cond_12
    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 338
    const/4 v4, 0x4

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 344
    .line 345
    goto/16 :goto_5

    .line 346
    .line 347
    :cond_13
    :goto_c
    iget-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    if-eqz p1, :cond_14

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :cond_14
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_5

    .line 4
    .line 5
    instance-of p3, p4, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz p3, :cond_5

    .line 8
    .line 9
    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    goto :goto_5

    .line 13
    :cond_0
    move-object p3, p5

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object p4

    .line 18
    .line 19
    instance-of p4, p4, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz p4, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    check-cast p4, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v1, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 34
    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    move v1, p1

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v2

    .line 47
    .line 48
    if-ge v1, v2, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eq v2, p3, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    .line 61
    move-result p2

    .line 62
    .line 63
    add-int v4, p2, v1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    check-cast p3, Landroid/view/ViewGroup;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    if-eq p5, p4, :cond_3

    .line 78
    .line 79
    if-eq p5, v6, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    sget-object p2, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 86
    .line 87
    if-ne p1, p2, :cond_2

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    :goto_2
    move-object v7, p5

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    :goto_3
    const/4 p5, 0x0

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :goto_4
    iget-object v3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 95
    move-object v2, v3

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_4
    move-object p3, p4

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    :goto_5
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_5

    .line 4
    .line 5
    instance-of p3, p4, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz p3, :cond_5

    .line 8
    .line 9
    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    goto :goto_5

    .line 13
    :cond_0
    move-object p3, p5

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object p4

    .line 18
    .line 19
    instance-of p4, p4, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz p4, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    check-cast p4, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v1, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 34
    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    move v1, p1

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v2

    .line 47
    .line 48
    if-ge v1, v2, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eq v2, p3, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    .line 61
    move-result p2

    .line 62
    .line 63
    add-int v4, p2, v1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    check-cast p3, Landroid/view/ViewGroup;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    if-eq p5, p4, :cond_3

    .line 78
    .line 79
    if-ne p5, v6, :cond_2

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    :goto_2
    move-object v7, p5

    .line 82
    goto :goto_4

    .line 83
    :cond_3
    :goto_3
    const/4 p5, 0x0

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :goto_4
    iget-object v3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 87
    move-object v2, v3

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_4
    move-object p3, p4

    .line 94
    goto :goto_0

    .line 95
    :cond_5
    :goto_5
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p3, p0, Lcom/narvii/list/DivideColumnAdapter;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSupportLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/DivideColumnAdapter;->supportLongClick:Z

    return-void
.end method

.method protected startPosition(I)I
    .locals 1

    iget v0, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    mul-int/2addr p1, v0

    return p1
.end method
