.class public Lcom/narvii/leaderboard/LeaderBoardTabBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;
    }
.end annotation


# static fields
.field private static final COUNT_COLUMN:I = 0x3


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;>;"
        }
    .end annotation
.end field

.field listener:Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public setCheckPosition(I)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ge v1, v2, :cond_5

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Landroid/view/ViewGroup;

    .line 29
    move v4, v0

    .line 30
    :goto_1
    const/4 v5, 0x3

    .line 31
    .line 32
    if-ge v4, v5, :cond_4

    .line 33
    .line 34
    if-lt v4, v2, :cond_0

    .line 35
    goto :goto_4

    .line 36
    .line 37
    :cond_0
    mul-int/lit8 v5, v1, 0x3

    .line 38
    add-int/2addr v5, v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    if-ne v5, p1, :cond_1

    .line 49
    .line 50
    .line 51
    const v8, 0x7f0806c8

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    const v8, 0x7f0806c7

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    const v8, 0x7f1211c1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Landroid/widget/TextView;

    .line 80
    const/4 v8, -0x1

    .line 81
    .line 82
    .line 83
    const v9, -0xe75b0a

    .line 84
    .line 85
    if-ne v5, p1, :cond_2

    .line 86
    move v10, v9

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    move v10, v8

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    .line 98
    const v10, 0x7f121181

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 106
    move-result-object v6

    .line 107
    .line 108
    check-cast v6, Landroid/widget/TextView;

    .line 109
    .line 110
    if-ne v5, p1, :cond_3

    .line 111
    move v8, v9

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void
.end method

.method public setLeaderBoardItems(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x3

    .line 23
    div-int/2addr v0, v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    move-result v2

    .line 28
    rem-int/2addr v2, v1

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v2, v3

    .line 36
    :goto_0
    add-int/2addr v0, v2

    .line 37
    move v2, v4

    .line 38
    .line 39
    :goto_1
    if-ge v2, v0, :cond_5

    .line 40
    .line 41
    new-instance v5, Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    move v6, v4

    .line 46
    .line 47
    :goto_2
    if-ge v6, v1, :cond_4

    .line 48
    .line 49
    mul-int/lit8 v7, v2, 0x3

    .line 50
    add-int/2addr v7, v6

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    move-result v8

    .line 55
    .line 56
    if-lt v7, v8, :cond_3

    .line 57
    goto :goto_3

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 62
    .line 63
    check-cast v7, Lcom/narvii/model/LeaderBoardItem;

    .line 64
    .line 65
    .line 66
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    move-result p1

    .line 82
    .line 83
    if-le p1, v0, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 87
    move-result p1

    .line 88
    sub-int/2addr p1, v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move p1, v4

    .line 94
    .line 95
    :goto_5
    if-ge p1, v0, :cond_f

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 99
    move-result v2

    .line 100
    .line 101
    if-le v2, p1, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    move-result-object v2

    .line 106
    goto :goto_6

    .line 107
    :cond_7
    const/4 v2, 0x0

    .line 108
    .line 109
    :goto_6
    if-nez v2, :cond_8

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->inflater:Landroid/view/LayoutInflater;

    .line 112
    .line 113
    .line 114
    const v3, 0x7f0d0419

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    .line 123
    :cond_8
    iget-object v3, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->lines:Ljava/util/List;

    .line 124
    .line 125
    .line 126
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    check-cast v3, Ljava/util/List;

    .line 130
    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 133
    move-result v5

    .line 134
    move v6, v4

    .line 135
    .line 136
    :goto_7
    if-ge v6, v1, :cond_e

    .line 137
    const/4 v7, 0x4

    .line 138
    .line 139
    if-lt v6, v5, :cond_9

    .line 140
    .line 141
    check-cast v2, Landroid/view/ViewGroup;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    .line 153
    :cond_9
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v8

    .line 155
    .line 156
    check-cast v8, Lcom/narvii/model/LeaderBoardItem;

    .line 157
    .line 158
    instance-of v9, v2, Landroid/view/ViewGroup;

    .line 159
    .line 160
    if-eqz v9, :cond_d

    .line 161
    move-object v9, v2

    .line 162
    .line 163
    check-cast v9, Landroid/view/ViewGroup;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 167
    move-result-object v10

    .line 168
    .line 169
    if-ge v6, v5, :cond_a

    .line 170
    move v7, v4

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    if-ge v6, v5, :cond_d

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    move-result-object v7

    .line 180
    .line 181
    iget v9, v8, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 182
    .line 183
    sget-object v10, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v9

    .line 188
    .line 189
    check-cast v9, Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v9

    .line 194
    .line 195
    sget-object v10, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 196
    .line 197
    iget v8, v8, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v8

    .line 202
    .line 203
    check-cast v8, Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 207
    move-result v8

    .line 208
    .line 209
    if-nez v9, :cond_b

    .line 210
    .line 211
    .line 212
    const v9, 0x7f120b6d

    .line 213
    .line 214
    :cond_b
    if-nez v8, :cond_c

    .line 215
    .line 216
    .line 217
    const v9, 0x7f120b79

    .line 218
    .line 219
    .line 220
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    move-result-object v10

    .line 222
    .line 223
    .line 224
    const v11, 0x7f1211c1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    move-result-object v10

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 232
    move-result-object v10

    .line 233
    .line 234
    check-cast v10, Landroid/widget/TextView;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 238
    move-result-object v11

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 242
    move-result-object v9

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 249
    move-result-object v9

    .line 250
    .line 251
    .line 252
    const v10, 0x7f121181

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 256
    move-result-object v9

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 260
    move-result-object v9

    .line 261
    .line 262
    check-cast v9, Landroid/widget/TextView;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 266
    move-result-object v10

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 270
    move-result-object v8

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    mul-int/lit8 v8, p1, 0x3

    .line 276
    add-int/2addr v8, v6

    .line 277
    .line 278
    new-instance v9, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;

    .line 279
    .line 280
    .line 281
    invoke-direct {v9, p0, v8}, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabBar;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 287
    .line 288
    goto/16 :goto_7

    .line 289
    .line 290
    :cond_e
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 291
    .line 292
    goto/16 :goto_5

    .line 293
    :cond_f
    return-void
.end method

.method public setLeaderBoardTabClickListener(Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar;->listener:Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;

    return-void
.end method
