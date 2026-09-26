.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreFeedRecycleAdapter"
.end annotation


# static fields
.field private static final TYPE_MEDIA_BIG:I = 0x3

.field private static final TYPE_MEDIA_SMALL:I = 0x0

.field private static final TYPE_MORE_BIG:I = 0x5

.field private static final TYPE_MORE_SMALL:I = 0x2

.field private static final TYPE_TEXT_BIG:I = 0x4

.field private static final TYPE_TEXT_SMALL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;


# direct methods
.method private constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Lcom/narvii/feed/featured/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    return v0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 8
    .line 9
    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    const/4 p1, 0x5

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x2

    .line 15
    :goto_0
    return p1

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/Feed;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 34
    .line 35
    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 36
    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    const/4 p1, 0x3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_1
    return p1

    .line 42
    .line 43
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 44
    .line 45
    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 46
    .line 47
    if-ne p1, v1, :cond_4

    .line 48
    const/4 v1, 0x4

    .line 49
    :cond_4
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    instance-of v3, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v3, :cond_4

    .line 13
    move-object v3, v1

    .line 14
    .line 15
    check-cast v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 18
    .line 19
    iget-object v6, v6, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v6

    .line 24
    .line 25
    check-cast v6, Lcom/narvii/model/Feed;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const/high16 v4, 0x40000000    # 2.0f

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 39
    move-result v2

    .line 40
    float-to-int v2, v2

    .line 41
    .line 42
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 46
    move-result v7

    .line 47
    .line 48
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 52
    move-result v8

    .line 53
    .line 54
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    move-result v9

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 68
    move-result v7

    .line 69
    .line 70
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 74
    move-result v8

    .line 75
    .line 76
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 80
    move-result v9

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {v6}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v6}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 93
    .line 94
    iget-object v4, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    .line 95
    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    .line 99
    const v7, 0x7f0a06eb

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    check-cast v4, Lcom/narvii/widget/ThumbImageView;

    .line 106
    .line 107
    iget-object v10, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    .line 108
    .line 109
    iget-object v4, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->access$000(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)Lcom/narvii/app/NVContext;

    .line 113
    move-result-object v11

    .line 114
    const/4 v13, 0x1

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v17, 0x0

    .line 121
    .line 122
    const/high16 v18, 0x3f800000    # 1.0f

    .line 123
    .line 124
    const/16 v19, 0x0

    .line 125
    .line 126
    const/16 v20, 0x0

    .line 127
    .line 128
    iget-object v4, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    .line 139
    const v7, 0x7f0701b3

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 143
    move-result v21

    .line 144
    .line 145
    const/16 v22, 0x3

    .line 146
    move-object v12, v2

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {v10 .. v22}, Lcom/narvii/feed/PopularFeedListItem;->setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V

    .line 150
    .line 151
    iget-object v4, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v5}, Lcom/narvii/feed/PopularFeedListItem;->setDarkTheme(Z)V

    .line 155
    .line 156
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    .line 158
    new-instance v7, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;

    .line 159
    .line 160
    .line 161
    invoke-direct {v7, v0, v6, v1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;Lcom/narvii/model/Feed;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    :cond_1
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    .line 167
    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v5}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 172
    .line 173
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    .line 174
    .line 175
    .line 176
    const v4, 0x7f0a058f

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    check-cast v1, Landroid/widget/TextView;

    .line 183
    .line 184
    if-eqz v2, :cond_2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 188
    move-result v4

    .line 189
    .line 190
    if-lez v4, :cond_2

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 194
    move-result v4

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    const/4 v4, 0x0

    .line 201
    .line 202
    .line 203
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    .line 206
    .line 207
    .line 208
    const v4, 0x7f0a0590

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 215
    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    iget-object v4, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 222
    move-result v4

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v4}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 226
    move-result v4

    .line 227
    .line 228
    if-nez v4, :cond_3

    .line 229
    .line 230
    iget-object v2, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    .line 237
    const v3, 0x7f080687

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    const/4 v2, -0x1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 249
    .line 250
    goto/16 :goto_4

    .line 251
    .line 252
    :cond_3
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    .line 256
    goto :goto_4

    .line 257
    .line 258
    :cond_4
    instance-of v2, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    .line 259
    .line 260
    if-eqz v2, :cond_8

    .line 261
    .line 262
    new-instance v2, Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    new-instance v3, Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    const/16 v6, 0xa

    .line 273
    .line 274
    :goto_2
    iget-object v7, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 275
    .line 276
    iget-object v7, v7, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 277
    .line 278
    .line 279
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 280
    move-result v7

    .line 281
    .line 282
    if-ge v6, v7, :cond_7

    .line 283
    .line 284
    iget-object v7, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 285
    .line 286
    iget-object v7, v7, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 287
    .line 288
    .line 289
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    move-result-object v7

    .line 291
    .line 292
    check-cast v7, Lcom/narvii/model/Blog;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getRealFeed()Lcom/narvii/model/Feed;

    .line 296
    move-result-object v7

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 300
    move-result-object v8

    .line 301
    .line 302
    if-eqz v8, :cond_6

    .line 303
    .line 304
    instance-of v8, v7, Lcom/narvii/model/Blog;

    .line 305
    .line 306
    if-eqz v8, :cond_5

    .line 307
    move-object v8, v7

    .line 308
    .line 309
    check-cast v8, Lcom/narvii/model/Blog;

    .line 310
    .line 311
    iget v8, v8, Lcom/narvii/model/Blog;->type:I

    .line 312
    const/4 v9, 0x7

    .line 313
    .line 314
    if-ne v8, v9, :cond_5

    .line 315
    .line 316
    iget-boolean v8, v7, Lcom/narvii/model/Feed;->needHidden:Z

    .line 317
    .line 318
    if-eqz v8, :cond_5

    .line 319
    move v8, v5

    .line 320
    goto :goto_3

    .line 321
    :cond_5
    move v8, v4

    .line 322
    .line 323
    .line 324
    :goto_3
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 325
    move-result-object v7

    .line 326
    .line 327
    iget-object v7, v7, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 334
    move-result-object v7

    .line 335
    .line 336
    .line 337
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 340
    goto :goto_2

    .line 341
    :cond_7
    move-object v4, v1

    .line 342
    .line 343
    check-cast v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    .line 344
    .line 345
    iget-object v5, v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v3}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->setNeedBlurImage(Ljava/util/List;)V

    .line 349
    .line 350
    iget-object v3, v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v2}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->setThumbUrls(Ljava/util/List;)V

    .line 354
    .line 355
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 356
    .line 357
    new-instance v2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;

    .line 358
    .line 359
    .line 360
    invoke-direct {v2, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_8
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x1

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    if-eq p2, v4, :cond_2

    .line 10
    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    .line 14
    const v5, 0x7f0d05bd

    .line 15
    .line 16
    if-eq p2, v1, :cond_4

    .line 17
    .line 18
    if-eq p2, v3, :cond_0

    .line 19
    .line 20
    if-eq p2, v0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    const v5, 0x7f0d05c0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    const v5, 0x7f0d05be

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_2
    const v5, 0x7f0d05c1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_3
    const v5, 0x7f0d05bf

    .line 37
    .line 38
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v5, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget-object v5, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 54
    .line 55
    .line 56
    invoke-static {v5, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->f(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    .line 57
    .line 58
    if-eq p2, v4, :cond_5

    .line 59
    .line 60
    if-ne p2, v3, :cond_6

    .line 61
    .line 62
    .line 63
    :cond_5
    const v5, 0x7f0a057b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    iget-object v6, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 70
    .line 71
    iget-object v6, v6, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    :cond_6
    if-eq p2, v2, :cond_a

    .line 81
    .line 82
    if-ne p2, v0, :cond_7

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_7
    if-eq p2, v1, :cond_9

    .line 86
    .line 87
    if-eqz p2, :cond_9

    .line 88
    .line 89
    if-eq p2, v3, :cond_9

    .line 90
    .line 91
    if-ne p2, v4, :cond_8

    .line 92
    goto :goto_1

    .line 93
    :cond_8
    const/4 p1, 0x0

    .line 94
    return-object p1

    .line 95
    .line 96
    :cond_9
    :goto_1
    new-instance p2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, v0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    .line 102
    return-object p2

    .line 103
    .line 104
    :cond_a
    :goto_2
    new-instance p2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, v0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    .line 110
    return-object p2
.end method
