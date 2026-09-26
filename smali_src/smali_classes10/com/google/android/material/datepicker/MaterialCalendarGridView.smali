.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;

.field private final nestedScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/google/android/material/datepicker/s;->k()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Ld3/f;->cancel_button:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    sget p1, Ld3/f;->confirm_button:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->w(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 9
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$a;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x21

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/j;->i()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x82

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/j;->b()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 37
    :goto_0
    return-void
.end method

.method private c(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private static d(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p0

    .line 9
    .line 10
    div-int/lit8 p0, p0, 0x2

    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method private static e(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 3
    .param p0    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    cmp-long p1, v1, p1

    .line 21
    .line 22
    if-gtz p1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v1

    .line 31
    .line 32
    cmp-long p0, p1, v1

    .line 33
    .line 34
    if-gez p0, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public b()Lcom/google/android/material/datepicker/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/material/datepicker/j;

    .line 7
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/material/datepicker/j;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/material/datepicker/j;->calendarStyle:Lcom/google/android/material/datepicker/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/j;->b()I

    .line 17
    move-result v4

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 21
    move-result v5

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/j;->i()I

    .line 29
    move-result v5

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 33
    move-result v6

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result v5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/j;->c(I)Ljava/lang/Long;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/j;->c(I)Ljava/lang/Long;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->g0()Ljava/util/Collection;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v8

    .line 58
    .line 59
    if-eqz v8, :cond_f

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    check-cast v8, Landroidx/core/util/Pair;

    .line 66
    .line 67
    iget-object v9, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    if-eqz v9, :cond_e

    .line 70
    .line 71
    iget-object v10, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 72
    .line 73
    if-nez v10, :cond_0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_0
    check-cast v9, Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 80
    move-result-wide v9

    .line 81
    .line 82
    iget-object v8, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v8, Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 88
    move-result-wide v11

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    move-result-object v8

    .line 93
    .line 94
    .line 95
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    move-result-object v13

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v7, v8, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 100
    move-result v8

    .line 101
    .line 102
    if-eqz v8, :cond_1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/u;->g(Landroid/view/View;)Z

    .line 107
    move-result v8

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 111
    move-result-wide v13

    .line 112
    .line 113
    cmp-long v13, v9, v13

    .line 114
    const/4 v14, 0x5

    .line 115
    .line 116
    if-gez v13, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/j;->f(I)Z

    .line 120
    move-result v9

    .line 121
    .line 122
    if-eqz v9, :cond_2

    .line 123
    const/4 v9, 0x0

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_2
    if-nez v8, :cond_3

    .line 127
    .line 128
    add-int/lit8 v9, v4, -0x1

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 136
    move-result v9

    .line 137
    goto :goto_1

    .line 138
    .line 139
    :cond_3
    add-int/lit8 v9, v4, -0x1

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 143
    move-result-object v9

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 147
    move-result v9

    .line 148
    :goto_1
    move v10, v9

    .line 149
    move v9, v4

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_4
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v13, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    .line 157
    iget-object v9, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    .line 161
    move-result v9

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/j;->a(I)I

    .line 165
    move-result v9

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 169
    move-result-object v10

    .line 170
    .line 171
    .line 172
    invoke-static {v10}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->d(Landroid/view/View;)I

    .line 173
    move-result v10

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 177
    move-result-wide v16

    .line 178
    .line 179
    cmp-long v13, v11, v16

    .line 180
    .line 181
    if-lez v13, :cond_7

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/j;->g(I)Z

    .line 185
    move-result v11

    .line 186
    .line 187
    if-eqz v11, :cond_5

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 191
    move-result v11

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_5
    if-nez v8, :cond_6

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 198
    move-result-object v11

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 202
    move-result v11

    .line 203
    goto :goto_3

    .line 204
    .line 205
    .line 206
    :cond_6
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 207
    move-result-object v11

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 211
    move-result v11

    .line 212
    :goto_3
    move v12, v11

    .line 213
    move v11, v5

    .line 214
    goto :goto_4

    .line 215
    .line 216
    :cond_7
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 220
    .line 221
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    .line 225
    move-result v11

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/j;->a(I)I

    .line 229
    move-result v11

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 233
    move-result-object v12

    .line 234
    .line 235
    .line 236
    invoke-static {v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->d(Landroid/view/View;)I

    .line 237
    move-result v12

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/j;->getItemId(I)J

    .line 241
    move-result-wide v13

    .line 242
    long-to-int v13, v13

    .line 243
    move v14, v4

    .line 244
    .line 245
    move/from16 v16, v5

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/j;->getItemId(I)J

    .line 249
    move-result-wide v4

    .line 250
    long-to-int v4, v4

    .line 251
    .line 252
    :goto_5
    if-gt v13, v4, :cond_d

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 256
    move-result v5

    .line 257
    mul-int/2addr v5, v13

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 261
    move-result v17

    .line 262
    .line 263
    add-int v17, v5, v17

    .line 264
    .line 265
    add-int/lit8 v15, v17, -0x1

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c(I)Landroid/view/View;

    .line 269
    move-result-object v17

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    .line 273
    move-result v18

    .line 274
    .line 275
    iget-object v0, v3, Lcom/google/android/material/datepicker/b;->day:Lcom/google/android/material/datepicker/a;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->c()I

    .line 279
    move-result v0

    .line 280
    .line 281
    add-int v0, v18, v0

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    .line 285
    move-result v17

    .line 286
    .line 287
    move-object/from16 v18, v1

    .line 288
    .line 289
    iget-object v1, v3, Lcom/google/android/material/datepicker/b;->day:Lcom/google/android/material/datepicker/a;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/a;->b()I

    .line 293
    move-result v1

    .line 294
    .line 295
    sub-int v1, v17, v1

    .line 296
    .line 297
    if-nez v8, :cond_a

    .line 298
    .line 299
    if-le v5, v9, :cond_8

    .line 300
    const/4 v5, 0x0

    .line 301
    goto :goto_6

    .line 302
    :cond_8
    move v5, v10

    .line 303
    .line 304
    :goto_6
    if-le v11, v15, :cond_9

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 308
    move-result v15

    .line 309
    goto :goto_9

    .line 310
    :cond_9
    move v15, v12

    .line 311
    goto :goto_9

    .line 312
    .line 313
    :cond_a
    if-le v11, v15, :cond_b

    .line 314
    const/4 v15, 0x0

    .line 315
    goto :goto_7

    .line 316
    :cond_b
    move v15, v12

    .line 317
    .line 318
    :goto_7
    if-le v5, v9, :cond_c

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 322
    move-result v5

    .line 323
    goto :goto_8

    .line 324
    :cond_c
    move v5, v10

    .line 325
    .line 326
    :goto_8
    move/from16 v25, v15

    .line 327
    move v15, v5

    .line 328
    .line 329
    move/from16 v5, v25

    .line 330
    :goto_9
    int-to-float v5, v5

    .line 331
    int-to-float v0, v0

    .line 332
    int-to-float v15, v15

    .line 333
    int-to-float v1, v1

    .line 334
    .line 335
    move-object/from16 v17, v2

    .line 336
    .line 337
    iget-object v2, v3, Lcom/google/android/material/datepicker/b;->rangeFill:Landroid/graphics/Paint;

    .line 338
    .line 339
    move-object/from16 v19, p1

    .line 340
    .line 341
    move/from16 v20, v5

    .line 342
    .line 343
    move/from16 v21, v0

    .line 344
    .line 345
    move/from16 v22, v15

    .line 346
    .line 347
    move/from16 v23, v1

    .line 348
    .line 349
    move-object/from16 v24, v2

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    .line 354
    add-int/lit8 v13, v13, 0x1

    .line 355
    .line 356
    move-object/from16 v0, p0

    .line 357
    .line 358
    move-object/from16 v2, v17

    .line 359
    .line 360
    move-object/from16 v1, v18

    .line 361
    goto :goto_5

    .line 362
    .line 363
    :cond_d
    move-object/from16 v0, p0

    .line 364
    move v4, v14

    .line 365
    .line 366
    move/from16 v5, v16

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_e
    move-object/from16 v0, p0

    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    :cond_f
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a(ILandroid/graphics/Rect;)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 11
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 12
    move-result p2

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eq p2, v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 20
    move-result p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/j;->b()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-lt p2, v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    const/16 p2, 0x13

    .line 34
    .line 35
    if-ne p2, p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/j;->b()I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 47
    return v2

    .line 48
    :cond_2
    return v0

    .line 49
    :cond_3
    :goto_0
    return v2
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p2, 0xffffff

    .line 8
    .line 9
    const/high16 v0, -0x80000000

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    move-result p2

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result p2

    .line 25
    .line 26
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 31
    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/google/android/material/datepicker/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/material/datepicker/j;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/j;->b()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/j;->b()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 26
    :goto_0
    return-void
.end method
