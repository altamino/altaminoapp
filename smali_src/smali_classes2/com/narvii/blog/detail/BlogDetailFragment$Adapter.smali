.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;
.super Lcom/narvii/detail/FeedDetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailAdapter<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field final optinAds:Z

.field private pollAdapter:Lcom/narvii/poll/PollAdapter;

.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field private voting:Z


# direct methods
.method public constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->preview()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->disableOptinAds()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->optinAds:Z

    .line 29
    return-void
.end method

.method private configLinkPostCustomContentBackground(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/Blog;

    .line 10
    .line 11
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 12
    const/4 v1, 0x5

    .line 13
    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    const v1, -0x9090a

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendImagePostUpdateNotificaion(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/Blog;

    .line 10
    .line 11
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 12
    const/4 v1, 0x7

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 21
    .line 22
    const-string v1, "update"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public allowTipping()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->allowTipping()Z

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method protected buildCells(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    move-object v8, v0

    .line 10
    .line 11
    check-cast v8, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->taggedObjects()Ljava/util/List;

    .line 15
    move-result-object v9

    .line 16
    .line 17
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 18
    const/4 v11, 0x1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v12, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v12, v11

    .line 30
    .line 31
    :goto_1
    if-nez v12, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 44
    .line 45
    .line 46
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    :cond_2
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 49
    .line 50
    .line 51
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 54
    const/4 v13, 0x6

    .line 55
    .line 56
    if-ne v0, v13, :cond_3

    .line 57
    .line 58
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 59
    .line 60
    .line 61
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    :cond_3
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    iget-object v1, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 68
    .line 69
    iget-boolean v2, v1, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/4 v1, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    :goto_2
    move v1, v11

    .line 82
    .line 83
    .line 84
    :goto_3
    invoke-virtual {v0, v1}, Lcom/narvii/poll/PollAdapter;->setPreview(Z)V

    .line 85
    .line 86
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v7}, Lcom/narvii/poll/PollAdapter;->buildCells(Ljava/util/List;)V

    .line 90
    .line 91
    :cond_6
    if-eqz v12, :cond_7

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f12075e

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :cond_7
    const-string v0, ""

    .line 106
    .line 107
    :goto_4
    iget-object v1, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    if-eqz v12, :cond_9

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    const v2, 0x7f12075f

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    :cond_8
    :goto_5
    move-object v1, v0

    .line 143
    goto :goto_6

    .line 144
    .line 145
    :cond_9
    iget-object v1, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-nez v1, :cond_8

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    iget-object v0, v8, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    goto :goto_5

    .line 170
    .line 171
    .line 172
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 173
    move-result v14

    .line 174
    .line 175
    new-instance v15, Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    new-instance v16, Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    iget-object v2, v8, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 186
    .line 187
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 188
    .line 189
    const/16 v5, 0x8

    .line 190
    .line 191
    if-eq v0, v5, :cond_b

    .line 192
    .line 193
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2700(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-nez v0, :cond_a

    .line 200
    goto :goto_7

    .line 201
    .line 202
    :cond_a
    const/16 v17, 0x0

    .line 203
    goto :goto_8

    .line 204
    .line 205
    :cond_b
    :goto_7
    move/from16 v17, v11

    .line 206
    .line 207
    :goto_8
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v3, v16

    .line 210
    move-object v4, v15

    .line 211
    move v10, v5

    .line 212
    .line 213
    move/from16 v5, v17

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 217
    .line 218
    iget-boolean v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->optinAds:Z

    .line 219
    const/4 v1, 0x7

    .line 220
    .line 221
    if-eqz v0, :cond_e

    .line 222
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    move-result-object v2

    .line 231
    .line 232
    .line 233
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    move-result v3

    .line 235
    .line 236
    if-eqz v3, :cond_d

    .line 237
    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    move-result-object v3

    .line 241
    .line 242
    instance-of v4, v3, Ljava/lang/String;

    .line 243
    .line 244
    if-eqz v4, :cond_c

    .line 245
    .line 246
    check-cast v3, Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    invoke-static {v3}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->breakParagraph(Ljava/lang/String;)Ljava/util/List;

    .line 250
    move-result-object v3

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    goto :goto_9

    .line 255
    .line 256
    .line 257
    :cond_c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    goto :goto_9

    .line 259
    :cond_d
    move v2, v1

    .line 260
    const/4 v3, 0x0

    .line 261
    .line 262
    .line 263
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 264
    move-result v4

    .line 265
    .line 266
    if-ge v2, v4, :cond_f

    .line 267
    .line 268
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    .line 269
    .line 270
    add-int/lit8 v5, v3, 0x1

    .line 271
    .line 272
    .line 273
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 274
    move-result v16

    .line 275
    .line 276
    rem-int v3, v3, v16

    .line 277
    .line 278
    .line 279
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v3

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 284
    .line 285
    add-int/lit8 v2, v2, 0x5

    .line 286
    move v3, v5

    .line 287
    goto :goto_a

    .line 288
    .line 289
    :cond_e
    move-object/from16 v0, v16

    .line 290
    .line 291
    .line 292
    :cond_f
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    .line 294
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 295
    const/4 v2, 0x5

    .line 296
    .line 297
    if-ne v0, v2, :cond_10

    .line 298
    .line 299
    .line 300
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 301
    move-result v0

    .line 302
    sub-int/2addr v0, v11

    .line 303
    .line 304
    .line 305
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    instance-of v0, v0, Ljava/lang/String;

    .line 309
    .line 310
    if-eqz v0, :cond_10

    .line 311
    .line 312
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 313
    .line 314
    .line 315
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    :cond_10
    :goto_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 319
    move-result v0

    .line 320
    .line 321
    if-ge v14, v0, :cond_12

    .line 322
    .line 323
    .line 324
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    instance-of v0, v0, Lcom/narvii/model/Media;

    .line 328
    .line 329
    if-eqz v0, :cond_11

    .line 330
    .line 331
    move/from16 v18, v11

    .line 332
    goto :goto_c

    .line 333
    .line 334
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 335
    goto :goto_b

    .line 336
    .line 337
    :cond_12
    const/16 v18, 0x0

    .line 338
    .line 339
    :goto_c
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 340
    .line 341
    if-ne v0, v13, :cond_13

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 345
    move-result-object v0

    .line 346
    .line 347
    if-eqz v0, :cond_13

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    .line 354
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    :cond_13
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    if-eqz v0, :cond_14

    .line 361
    .line 362
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 363
    .line 364
    if-ne v0, v2, :cond_14

    .line 365
    .line 366
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 367
    .line 368
    .line 369
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    :cond_14
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 373
    move-result v0

    .line 374
    .line 375
    if-lez v0, :cond_17

    .line 376
    .line 377
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 378
    .line 379
    if-eq v0, v1, :cond_16

    .line 380
    .line 381
    if-eq v0, v10, :cond_16

    .line 382
    .line 383
    if-eqz v18, :cond_15

    .line 384
    .line 385
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->MORE_PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 386
    goto :goto_d

    .line 387
    .line 388
    :cond_15
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 389
    .line 390
    .line 391
    :goto_d
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    :cond_16
    invoke-interface {v7, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    .line 396
    :cond_17
    if-eqz v12, :cond_1a

    .line 397
    .line 398
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 399
    .line 400
    if-eqz v0, :cond_19

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 404
    move-result v0

    .line 405
    .line 406
    if-eqz v0, :cond_18

    .line 407
    .line 408
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 409
    .line 410
    .line 411
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    goto :goto_e

    .line 413
    .line 414
    :cond_18
    iget-object v0, v8, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 415
    .line 416
    .line 417
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_e

    .line 419
    .line 420
    :cond_19
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 421
    .line 422
    .line 423
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    :cond_1a
    :goto_e
    iget v0, v8, Lcom/narvii/model/Blog;->type:I

    .line 426
    .line 427
    if-eq v0, v2, :cond_1b

    .line 428
    .line 429
    if-ne v0, v10, :cond_1c

    .line 430
    .line 431
    :cond_1b
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 432
    .line 433
    .line 434
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/detail/FeedDetailAdapter;->addDivider(Ljava/util/List;)V

    .line 438
    .line 439
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 440
    .line 441
    .line 442
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 443
    move-result v0

    .line 444
    .line 445
    if-nez v0, :cond_1d

    .line 446
    return-void

    .line 447
    .line 448
    :cond_1d
    if-eqz v9, :cond_1e

    .line 449
    .line 450
    .line 451
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 452
    move-result v0

    .line 453
    .line 454
    if-lez v0, :cond_1e

    .line 455
    .line 456
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 457
    .line 458
    .line 459
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 462
    .line 463
    .line 464
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->allowTipping()Z

    .line 468
    move-result v0

    .line 469
    .line 470
    if-eqz v0, :cond_1f

    .line 471
    .line 472
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 473
    .line 474
    .line 475
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    :cond_1f
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 478
    .line 479
    const-string v1, "fromHeadline"

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 483
    move-result v0

    .line 484
    .line 485
    if-eqz v0, :cond_20

    .line 486
    .line 487
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 488
    .line 489
    .line 490
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->O(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    if-eqz v0, :cond_20

    .line 494
    .line 495
    iget-object v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->O(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    .line 499
    move-result-object v0

    .line 500
    .line 501
    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 503
    move-result v0

    .line 504
    .line 505
    if-lez v0, :cond_20

    .line 506
    .line 507
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 508
    .line 509
    .line 510
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    :cond_20
    iget-boolean v0, v6, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->optinAds:Z

    .line 513
    .line 514
    if-eqz v0, :cond_21

    .line 515
    .line 516
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 517
    .line 518
    .line 519
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    :cond_21
    invoke-virtual {v8}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 523
    move-result v0

    .line 524
    .line 525
    if-lez v0, :cond_22

    .line 526
    .line 527
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v0}, Lcom/narvii/detail/DetailAdapter$HeaderTag;->setCount(I)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 536
    .line 537
    .line 538
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    :cond_22
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 541
    .line 542
    .line 543
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 546
    .line 547
    .line 548
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public commentNew()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 1
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 18
    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 9
    const/4 v2, 0x5

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0d016c

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    const v1, 0x7f0d016b

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/narvii/detail/FeedDetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 31
    move-result p3

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    .line 36
    const v3, 0x7f0a06eb

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 42
    move-result-object v6

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x1

    .line 45
    move-object v2, p2

    .line 46
    move-object v4, p1

    .line 47
    move-object v5, p1

    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v8}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 51
    .line 52
    .line 53
    :cond_2
    const p1, 0x7f0a092b

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    .line 61
    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 27
    .line 28
    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/narvii/model/extension/FeedExtensionKt;->apiTypeNameForBlog(Z)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 9
    const/4 v1, 0x5

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d017c

    .line 15
    :goto_0
    move v3, v0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    const v0, 0x7f0d017b

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v6, 0x1

    .line 22
    .line 23
    sget-object v7, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/detail/FeedDetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0a0e51

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    .line 42
    return-object p1
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 27
    .line 28
    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/narvii/model/extension/FeedExtensionKt;->apiTypeNameForBlog(Z)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const-string v2, "/g-vote"

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const-string v2, "/vote"

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v2, "start"

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    const-string v1, "size"

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    const-string p2, "cv"

    .line 94
    .line 95
    const-string v1, "1.2"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 102
    move-result-object p1

    .line 103
    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    const v5, -0xcccccd

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-ne v1, v4, :cond_8

    const v1, 0x7f0d016f

    .line 2
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 4
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v6

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v7, v10

    :goto_0
    const v4, 0x7f0a0d49

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_1

    :cond_2
    move v7, v9

    .line 7
    :goto_1
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0a0d43

    .line 9
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 10
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a0d46

    .line 11
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/NVImageView;

    .line 12
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v9

    goto :goto_3

    :cond_4
    move v13, v10

    :goto_3
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {v11, v12}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object v12, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f0a0d44

    .line 16
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    iget-object v12, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 17
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060078

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-static {v12}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v12

    .line 18
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f0802f3

    invoke-static {v6, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 22
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4
    const v6, 0x7f0a0d48

    .line 23
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 24
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    move v9, v10

    :goto_5
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {v0, v1, v4, v5, v8}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 27
    invoke-virtual {v0, v1, v7, v5, v8}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    const v4, -0x404041

    const v5, -0x77000001

    .line 28
    invoke-virtual {v0, v1, v6, v4, v5}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 29
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v2

    if-eqz v2, :cond_7

    const v12, 0x7f0a0d46

    .line 30
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v1

    invoke-static/range {v11 .. v17}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_7
    return-object v1

    .line 31
    :cond_8
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v11, 0x7f0a055e

    if-ne v1, v4, :cond_c

    const v1, 0x7f0d017d

    .line 32
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0e9e

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_9

    move v5, v8

    .line 34
    :cond_9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v3

    if-eqz v3, :cond_a

    move v9, v10

    :cond_a
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-object v1

    .line 38
    :cond_c
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_e

    const v1, 0x7f0d0153

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    const v3, 0x7f0a06d5

    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/TintButton;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_d

    const v5, -0x66000001

    goto :goto_6

    :cond_d
    const v5, -0x818182

    .line 42
    :goto_6
    invoke-virtual {v3, v5}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const v3, 0x7f0a00a8

    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/AddressView;

    iget v5, v2, Lcom/narvii/model/Feed;->latitude:I

    iget v6, v2, Lcom/narvii/model/Feed;->longitude:I

    iget-object v2, v2, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 44
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/AddressView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v2, v4}, Lcom/narvii/widget/AddressView;->setDarkTheme(Z)V

    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/AddressView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    return-object v1

    .line 46
    :cond_e
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v12, -0xaaaaab

    if-ne v1, v4, :cond_2e

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 48
    iget v4, v1, Lcom/narvii/model/Blog;->type:I

    if-ne v4, v9, :cond_f

    move v13, v7

    goto :goto_7

    :cond_f
    move v13, v10

    :goto_7
    if-eqz v13, :cond_10

    const v4, 0x7f0d015c

    goto :goto_8

    :cond_10
    const/4 v14, 0x7

    if-ne v4, v14, :cond_11

    const v4, 0x7f0d0180

    goto :goto_8

    :cond_11
    const v4, 0x7f0d017e

    .line 49
    :goto_8
    invoke-virtual {v0, v4, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0171

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const v4, 0x7f0a0f36

    .line 51
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/UserAvatarLayout;

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v13, :cond_12

    if-eqz v14, :cond_12

    if-eqz v3, :cond_12

    .line 53
    invoke-virtual {v3, v14}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    .line 54
    iget-object v3, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v4, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v6, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 55
    invoke-static {v6}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2900(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v6

    invoke-virtual {v4, v3, v6, v10}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    goto :goto_a

    :cond_13
    if-eqz v3, :cond_15

    .line 56
    iget-object v4, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    :goto_9
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_15
    :goto_a
    const v3, 0x7f0a09f9

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 58
    instance-of v4, v3, Lcom/narvii/widget/NicknameView;

    if-eqz v4, :cond_17

    if-eqz v13, :cond_16

    .line 59
    move-object v4, v3

    check-cast v4, Lcom/narvii/widget/NicknameView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 60
    :cond_16
    move-object v4, v3

    check-cast v4, Lcom/narvii/widget/NicknameView;

    iget-object v13, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v4, v13}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 61
    :goto_b
    check-cast v3, Lcom/narvii/widget/NicknameView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    goto :goto_d

    .line 62
    :cond_17
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_19

    .line 63
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_18

    move v4, v8

    goto :goto_c

    :cond_18
    const v4, -0x555556

    .line 64
    :goto_c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    :goto_d
    const v3, 0x7f0a0408

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1d

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v4

    iget-object v13, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v13}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v13, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_1b

    .line 68
    iget-object v13, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, " | "

    if-ne v13, v7, :cond_1a

    .line 69
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v14, 0x7f120762

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 70
    :cond_1a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v14, v7, [Ljava/lang/Object;

    iget-object v15, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v5, v15

    invoke-static {v5, v6}, Lcom/narvii/util/text/TextUtils;->getLiteCount2(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    const v5, 0x7f120763

    invoke-virtual {v4, v5, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    :cond_1b
    :goto_e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v4, :cond_1c

    const v5, -0x555556

    goto :goto_f

    :cond_1c
    const v5, -0x66000001

    .line 72
    :goto_f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    const v3, 0x7f0a0f4b

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_1e
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 76
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v10

    goto :goto_10

    :cond_1f
    move v4, v9

    :goto_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_20
    iget-object v3, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v3, :cond_22

    iget v3, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    goto :goto_11

    :cond_21
    move v7, v10

    :cond_22
    :goto_11
    const v3, 0x7f0a044f

    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v7, :cond_24

    .line 79
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget v4, v1, Lcom/narvii/model/Feed;->latitude:I

    if-eqz v4, :cond_24

    iget v4, v1, Lcom/narvii/model/Feed;->longitude:I

    if-nez v4, :cond_23

    goto :goto_12

    :cond_23
    move v4, v10

    goto :goto_13

    :cond_24
    :goto_12
    move v4, v9

    :goto_13
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_25

    const v4, 0x14ffffff

    goto :goto_14

    :cond_25
    const v4, -0x171718

    .line 80
    :goto_14
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0a0ffb

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 82
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 83
    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->N(Lcom/narvii/blog/detail/BlogDetailFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 84
    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 85
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_26

    .line 86
    invoke-static {v4}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v4

    if-nez v4, :cond_26

    const v4, 0x7f080250

    goto :goto_15

    :cond_26
    const v4, 0x7f08024f

    goto :goto_15

    :cond_27
    const v4, 0x7f08024e

    .line 87
    :goto_15
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x7f0a1002

    .line 88
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/VoteIcon;

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 89
    invoke-virtual {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    iget-boolean v5, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v5, :cond_28

    move v5, v12

    goto :goto_16

    :cond_28
    move v5, v8

    .line 90
    :goto_16
    invoke-virtual {v4, v5}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    iget-boolean v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    if-eqz v5, :cond_29

    move v5, v9

    goto :goto_17

    :cond_29
    move v5, v10

    .line 91
    :goto_17
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, -0x111112

    const v5, 0x7f0a0ffd

    .line 92
    invoke-virtual {v0, v2, v5, v12, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    const v4, 0x7f0a1006

    .line 93
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/SpinningView;

    if-eqz v4, :cond_2c

    iget-boolean v6, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v6, :cond_2a

    move v8, v12

    .line 94
    :cond_2a
    invoke-virtual {v4, v8}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    iget-boolean v6, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->voting:Z

    if-eqz v6, :cond_2b

    move v9, v10

    .line 95
    :cond_2b
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_2c
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v4

    if-nez v4, :cond_2d

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v4, 0x7f120b8c

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 98
    :cond_2d
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_18
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_2e
    sget-object v4, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_2f

    .line 100
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 101
    :cond_2f
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_31

    const v1, 0x7f0d0176

    .line 102
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0a35

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_30

    goto :goto_19

    :cond_30
    move v8, v12

    .line 104
    :goto_19
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1

    .line 105
    :cond_31
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_34

    const v1, 0x7f0d007a

    .line 106
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0bde

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_32

    goto :goto_1a

    :cond_32
    const v8, -0x8b8b8c

    .line 108
    :goto_1a
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_33

    const v4, 0x7f080924

    goto :goto_1b

    :cond_33
    const v4, 0x7f080923

    :goto_1b
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    .line 111
    :cond_34
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v5, 0x4

    const v7, 0x7f0a0d88

    if-ne v1, v4, :cond_3d

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    const v4, 0x7f0d0171

    .line 113
    invoke-virtual {v0, v4, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0bb6

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 115
    new-instance v9, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v9, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    invoke-virtual {v9, v1}, Lcom/narvii/feed/FeedHelper;->getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x777778

    .line 117
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const v3, 0x7f0a0bac

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/feed/quizzes/QuizCoverView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 119
    invoke-virtual {v3, v4}, Lcom/narvii/feed/quizzes/QuizCoverView;->setDarkTheme(Z)V

    .line 120
    invoke-virtual {v3, v1}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;)V

    const v4, 0x7f0a0bb5

    .line 121
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 122
    iget-object v9, v1, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v9, :cond_35

    iget v9, v9, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    if-eqz v9, :cond_35

    goto :goto_1c

    :cond_35
    move v10, v5

    :goto_1c
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_36
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-nez v4, :cond_37

    goto :goto_1d

    :cond_37
    iget-object v6, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    :goto_1d
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_38

    const v4, 0x7f080134

    goto :goto_1e

    :cond_38
    const v4, 0x7f080133

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0a0bb9

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0bb7

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    const v5, -0x646465

    if-eqz v4, :cond_39

    move v4, v8

    goto :goto_1f

    :cond_39
    move v4, v5

    .line 128
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3a

    const v4, 0x7f0805a6

    goto :goto_20

    :cond_3a
    const v4, 0x7f0805a5

    :goto_20
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a0bb8

    .line 130
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0a0bba

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_3b

    goto :goto_21

    :cond_3b
    move v8, v5

    .line 132
    :goto_21
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v3

    if-eqz v3, :cond_3c

    const v12, 0x7f0a0bae

    .line 134
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v11, v2

    invoke-static/range {v11 .. v17}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_3c
    return-object v2

    .line 135
    :cond_3d
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_3e

    const v1, 0x7f0d016a

    .line 136
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0ab8

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->configLinkPostCustomContentBackground(Landroid/view/View;)V

    return-object v1

    .line 138
    :cond_3e
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_42

    const v1, 0x7f0d0409

    .line 139
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a060b

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 142
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    :cond_3f
    new-instance v3, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->O(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v0, v4}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 144
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-boolean v2, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 145
    invoke-virtual {v3, v2}, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->setDarkTheme(Z)V

    const v2, 0x7f0a0cb6

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_40

    goto :goto_22

    :cond_40
    const v8, -0xb5b5b6

    :goto_22
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    move-result v3

    goto :goto_23

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060139

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v1

    .line 148
    :cond_42
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne v1, v4, :cond_43

    .line 149
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_43
    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-eqz v4, :cond_44

    .line 151
    invoke-virtual {v4, v1, v2, v3}, Lcom/narvii/poll/PollAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_44

    return-object v4

    .line 152
    :cond_44
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v6, 0x7f0a0c06

    if-ne v1, v4, :cond_45

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 153
    iget-object v4, v4, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    if-eqz v4, :cond_45

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v4, v4, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    iget-object v4, v4, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v4, :cond_45

    const v1, 0x7f0d0173

    .line 154
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/feed/FeedListItem;

    iget-boolean v3, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 156
    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3100(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 157
    iget-object v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v3}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 158
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    .line 159
    :cond_45
    instance-of v4, v1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_4a

    .line 160
    move-object v4, v1

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_46

    const v4, 0x7f0d0179

    :goto_24
    move v10, v4

    goto :goto_25

    :cond_46
    const/4 v8, 0x6

    if-ne v4, v8, :cond_47

    const v4, 0x7f0d0178

    goto :goto_24

    :cond_47
    if-ne v4, v5, :cond_48

    const v4, 0x7f0d0177

    goto :goto_24

    :cond_48
    if-ne v4, v9, :cond_49

    const v4, 0x7f0d0174

    goto :goto_24

    :cond_49
    const v4, 0x7f0d0172

    goto :goto_24

    .line 161
    :cond_4a
    instance-of v4, v1, Lcom/narvii/model/Item;

    if-eqz v4, :cond_4b

    const v10, 0x7f0d0175

    .line 162
    :cond_4b
    :goto_25
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4c

    .line 163
    sget-object v4, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v4, :cond_4d

    :cond_4c
    iget-object v4, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 164
    invoke-static {v4, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3200(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4d

    return-object v4

    :cond_4d
    if-eqz v10, :cond_4f

    .line 165
    invoke-virtual {v0, v10, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/feed/FeedListItem;

    iget-boolean v4, v0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 167
    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3300(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 168
    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v3, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 169
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 171
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4e
    return-object v2

    .line 172
    :cond_4f
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 51
    .line 52
    const-class v1, Lcom/narvii/model/Blog;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 61
    .line 62
    const-class v1, Lcom/narvii/model/Item;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/poll/PollAdapter;->getCellTypes(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isPageBackgroundEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->isListShown()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method protected notJoined()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/poll/PollAdapter;->destory()V

    .line 11
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/poll/PollAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v9

    .line 2
    :cond_0
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    const/16 v2, 0x8

    const-string v3, "Page Detailed View"

    const-string v4, "Source"

    if-ne v7, v1, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0f4b

    if-ne v5, v6, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 4
    instance-of v5, v1, Lcom/narvii/model/Blog;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/narvii/model/Blog;

    iget v6, v5, Lcom/narvii/model/Blog;->type:I

    if-ne v6, v2, :cond_2

    iget-object v2, v5, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/narvii/model/ExternalSource;->isNotAvaileable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 7
    invoke-virtual {v1}, Lcom/narvii/feed/FeedHelper;->showExternalSourceNotAvailable()V

    return v9

    :cond_1
    const-class v1, Lcom/narvii/feed/ExternalPostListFragment;

    .line 8
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "KEY_EXTERNAL_SOURCE"

    .line 9
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "KEY_EXTERNAL_SOURCE_ID"

    .line 10
    iget-object v2, v2, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v9

    :cond_2
    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 12
    sget-object v5, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {v2, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v5, "UserIcon"

    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v5, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 13
    invoke-static {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3400(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    return v9

    .line 14
    :cond_3
    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_4

    return v9

    .line 15
    :cond_4
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v9

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v7, v1, :cond_8

    if-eqz v8, :cond_8

    .line 17
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v10, 0x7f0a0ffb

    if-ne v1, v10, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->notJoined()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 19
    invoke-virtual {v1, v6, v6, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v2, 0x7f0a1002

    .line 20
    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 21
    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 22
    invoke-virtual {v1, v6, v6, v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    .line 23
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "vote"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    :goto_0
    return v9

    :cond_8
    const-string v1, "Repost"

    const-string v10, "isAnnouncement"

    if-eqz v8, :cond_d

    .line 24
    sget-object v11, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v11, :cond_d

    .line 25
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_c

    .line 26
    iget-object v3, v2, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_c

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 27
    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->M(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v5}, Lcom/narvii/blog/detail/BlogDetailFragment;->M(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    goto :goto_1

    :cond_9
    move-object v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 28
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d024a

    .line 29
    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0059

    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;

    invoke-direct {v4, p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_a
    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return v9

    .line 34
    :cond_b
    iget-object v2, v2, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 35
    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :cond_c
    return v9

    :cond_d
    if-eqz v8, :cond_e

    .line 38
    instance-of v11, v7, Lcom/narvii/model/Feed;

    if-eqz v11, :cond_e

    .line 39
    move-object v2, v7

    check-cast v2, Lcom/narvii/model/Feed;

    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 40
    iget-boolean v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v9

    .line 43
    :cond_e
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v10, "position"

    const-string v11, "list"

    const-string v12, "parentClass"

    const-string v13, "parent"

    const-class v14, Lcom/narvii/media/MediaGalleryOptionActivity;

    if-ne v7, v1, :cond_13

    if-eqz v8, :cond_12

    .line 44
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0d46

    if-ne v1, v2, :cond_12

    .line 45
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    if-nez v1, :cond_f

    goto :goto_2

    .line 46
    :cond_f
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummaryMedia()Lcom/narvii/model/Media;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_12

    .line 47
    invoke-virtual {v6}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 48
    invoke-static {v6}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_3

    .line 49
    :cond_10
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v3, Lcom/narvii/model/Feed;

    .line 51
    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 54
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_11
    invoke-interface {v3, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :cond_12
    :goto_3
    return v9

    .line 59
    :cond_13
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v1, :cond_1b

    if-eqz v8, :cond_15

    .line 60
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0bac

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 61
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 62
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 63
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 64
    invoke-static {v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_4

    .line 65
    :cond_14
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v4, Lcom/narvii/model/Blog;

    .line 67
    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    iget-object v4, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMediaIndex()I

    move-result v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-static {p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :cond_15
    :goto_4
    const-string v1, "statistics"

    if-eqz v8, :cond_18

    .line 71
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0bb9

    if-ne v2, v4, :cond_18

    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 72
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 73
    new-instance v4, Lcom/narvii/influencer/InfluencerHelper;

    iget-object v6, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, v6}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 74
    invoke-virtual {v4, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v9

    :cond_16
    const-class v4, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 75
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "quizzes"

    .line 76
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, v2, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v2, :cond_17

    const-string v2, "isGuestMode"

    .line 78
    invoke-virtual {v4, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_17
    const-string v2, "showNextQuizLayout"

    .line 79
    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v5}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v5, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 81
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 82
    invoke-static {p0, v4}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 83
    invoke-interface {v2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    const-string v4, "Quiz Rankings in Detail View"

    .line 84
    invoke-interface {v2, v4}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v2

    const-string v4, "Quiz Rankings Total"

    invoke-virtual {v2, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_18
    if-eqz v8, :cond_1a

    .line 85
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0d88

    if-ne v2, v4, :cond_1a

    iget-object v2, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 86
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 87
    new-instance v4, Lcom/narvii/influencer/InfluencerHelper;

    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, v5}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 88
    invoke-virtual {v4, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v9

    .line 89
    :cond_19
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 90
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v3, v2, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 91
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v2, v4, v3}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 93
    invoke-interface {v2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v2, "Start Quiz"

    .line 94
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v1

    const-string v2, "Quiz Detail"

    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v1

    const-string v2, "Start Quiz Total"

    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_1a
    return v9

    .line 95
    :cond_1b
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v7, v1, :cond_1e

    .line 96
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 97
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v3

    .line 98
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    iget v3, v1, Lcom/narvii/model/Blog;->type:I

    if-ne v3, v2, :cond_1c

    const-string v2, "External Content"

    .line 100
    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_1c
    const/4 v2, 0x5

    if-ne v3, v2, :cond_1d

    const-string v2, "Link Post"

    .line 101
    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    :goto_5
    const-string v2, "loggingObjectType"

    .line 102
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "loggingObjectId"

    .line 103
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "loggingBlogType"

    .line 104
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-static {p0, v5}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 106
    :cond_1e
    sget-object v1, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne v7, v1, :cond_1f

    .line 107
    invoke-virtual {p0, v8, v6}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    return v9

    .line 108
    :cond_1f
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/FeedDetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "update"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "new"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "delete"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/model/Blog;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    .line 59
    const/4 v3, 0x2

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    iget-object v2, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    instance-of v2, v1, Lcom/narvii/model/Feed;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/model/Feed;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    iget-object v2, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lcom/narvii/model/Feed;

    .line 102
    .line 103
    iput-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    :cond_2
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 125
    .line 126
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    check-cast v1, Lcom/narvii/model/Comment;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 136
    .line 137
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$400(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    .line 141
    :cond_4
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 2
    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, p2, Lcom/narvii/model/api/BlogResponse;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 5
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/BlogResponse;

    .line 6
    iget-object v1, v1, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    iput v2, v1, Lcom/narvii/model/Blog;->type:I

    .line 7
    iget-object v2, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 8
    iget-object v2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 9
    iget-object v2, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 10
    iget-object v2, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 11
    iget v2, v0, Lcom/narvii/model/Feed;->latitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->latitude:I

    .line 12
    iget v2, v0, Lcom/narvii/model/Feed;->longitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->longitude:I

    .line 13
    iget-object v2, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 14
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 15
    iget-object v2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    iget-object v2, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 17
    iget-object v2, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 18
    iget-object v2, v0, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    .line 19
    iget-object v2, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 20
    iget-object v0, v0, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->onFeedObjectResponse()V

    .line 23
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 24
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 25
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1100(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->sendImagePostUpdateNotificaion(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected onTipBoxClicked(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onTipBoxClicked(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$500(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkAllLikes:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "nvObject"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    .line 52
    move-result v0

    .line 53
    .line 54
    :goto_0
    const-string v1, "__communityId"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 61
    move-result v0

    .line 62
    xor-int/2addr v0, p2

    .line 63
    .line 64
    const-string v1, "__model"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 71
    :cond_1
    return p2
.end method

.method protected openCommentSetting()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "blogId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected preview()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/FeedResponse<",
            "Lcom/narvii/model/Blog;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 18
    return-void
.end method

.method public setObject(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/BlogResponse;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/BlogResponse;-><init>()V

    .line 4
    :cond_0
    iput-object p1, v0, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setObject(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/FeedResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 4
    instance-of v1, p1, Lcom/narvii/model/api/BlogResponse;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/narvii/model/api/BlogResponse;

    iget-object v2, v2, Lcom/narvii/model/api/BlogResponse;->suggestedCommunityList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->R(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 6
    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v3, "__communityId"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 8
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 10
    invoke-virtual {v2, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    :cond_3
    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->hasBackground()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1402(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 12
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v2

    :goto_1
    invoke-static {v3, v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1502(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 13
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1602(Lcom/narvii/blog/detail/BlogDetailFragment;I)I

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 14
    invoke-static {v3}, Lcom/narvii/blog/detail/BlogDetailFragment;->U(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 15
    invoke-static {v3}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1700(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    .line 16
    :cond_6
    iget-boolean v3, p1, Lcom/narvii/model/api/FeedResponse;->isBookmarked:Z

    iput-boolean v3, p0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 17
    iget-object v3, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-interface {v3, v4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 19
    :cond_7
    instance-of v3, p1, Lcom/narvii/model/api/BlogResponse;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 20
    move-object v4, p1

    check-cast v4, Lcom/narvii/model/api/BlogResponse;

    iget-object v4, v4, Lcom/narvii/model/api/BlogResponse;->taggedBlogCategoryList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->Q(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)V

    :cond_8
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 21
    invoke-static {v3, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->T(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    :cond_9
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 22
    iget-object v3, v3, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 23
    invoke-virtual {v3}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    :cond_a
    if-eqz v1, :cond_c

    .line 24
    iget v0, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {v0, p0, p0, v3}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$2;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 26
    invoke-static {v3}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$1900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2000(Lcom/narvii/blog/detail/BlogDetailFragment;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/narvii/poll/PollAdapter;->setDarkTheme(ZI)V

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 27
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 28
    new-instance v3, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;

    invoke-direct {v3, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V

    iput-object v3, v0, Lcom/narvii/poll/PollAdapter;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    :cond_b
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->pollAdapter:Lcom/narvii/poll/PollAdapter;

    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollAdapter;->setBlog(Lcom/narvii/model/Blog;)V

    :cond_c
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 30
    invoke-static {p1, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 31
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->resetHover()V

    if-eqz v1, :cond_11

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 32
    iget-boolean v0, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    if-nez v0, :cond_11

    .line 33
    iput-boolean v2, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    const-string p1, "statistics"

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 35
    iget-boolean v3, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    const-string v4, "Source"

    if-eqz v3, :cond_d

    .line 36
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Open Global Announcement Detail Page"

    .line 37
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    goto :goto_2

    .line 38
    :cond_d
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Detailed Page Opened"

    .line 40
    invoke-interface {p1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v3, "Detailed Page Opened Total"

    invoke-virtual {p1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v3, "type"

    .line 41
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v3, "moreFeaturedPost"

    .line 42
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "More Featured Post"

    .line 43
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_e
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v3, "SBB"

    .line 44
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_f
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const-string v3, "pinned"

    .line 46
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Pinned"

    .line 47
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    const-string v0, "Pinned Open Total"

    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_10
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 49
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v2, "Gated"

    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detailed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Page Opened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_11
    :goto_2
    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected shouldBlockShareMedia()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3700(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "Page Detailed View"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->shouldBlockShareMedia()Z

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method protected showEmojiOnly()Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "affiliations"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Blog;

    .line 17
    .line 18
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/model/Blog;

    .line 31
    .line 32
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 41
    .line 42
    const-string v4, "__communityId"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 46
    move-result v1

    .line 47
    .line 48
    if-lez v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    :cond_1
    move v0, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v0, v2

    .line 64
    .line 65
    :goto_0
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 66
    .line 67
    iget-boolean v4, v1, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    .line 68
    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    :cond_3
    move v2, v3

    .line 79
    :cond_4
    return v2
.end method

.method protected showEmptyContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showShareMediaBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showUserCommentSetting()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public taggedObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "taggedObjects"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/Item;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
