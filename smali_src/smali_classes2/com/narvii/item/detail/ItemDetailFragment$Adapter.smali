.class Lcom/narvii/item/detail/ItemDetailFragment$Adapter;
.super Lcom/narvii/detail/FeedDetailAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/ThumbGallery$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailAdapter<",
        "Lcom/narvii/model/Item;",
        ">;",
        "Lcom/narvii/widget/ThumbGallery$OnItemClickListener;"
    }
.end annotation


# instance fields
.field contributorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/item/contributor/Contributor;",
            ">;"
        }
    .end annotation
.end field

.field final contributorListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/item/contributor/ContributorListResponse;",
            ">;"
        }
    .end annotation
.end field

.field contributorRequest:Lcom/narvii/util/http/ApiRequest;

.field contributorsErrorMsg:Ljava/lang/String;

.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field inMyFavorites:Z

.field final optinAds:Z

.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/item/contributor/ContributorListResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$Adapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->preview()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->disableOptinAds()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    .line 44
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->optinAds:Z

    .line 45
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 11
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
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->taggedObjects()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    .line 27
    :goto_0
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    iget-object v5, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    .line 39
    const-string v6, "props"

    .line 40
    .line 41
    .line 42
    filled-new-array {v6}, [Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 53
    move-result v6

    .line 54
    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 59
    move-result v6

    .line 60
    move v7, v3

    .line 61
    move v8, v7

    .line 62
    .line 63
    :goto_1
    if-ge v7, v6, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 67
    move-result-object v9

    .line 68
    .line 69
    const-string v10, "value"

    .line 70
    .line 71
    .line 72
    filled-new-array {v10}, [Ljava/lang/String;

    .line 73
    move-result-object v10

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v9

    .line 78
    .line 79
    .line 80
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v9

    .line 82
    .line 83
    if-nez v9, :cond_1

    .line 84
    .line 85
    add-int/lit8 v8, v8, 0x1

    .line 86
    .line 87
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_2
    if-lez v8, :cond_3

    .line 91
    .line 92
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    sget-object v5, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    :cond_3
    iget-object v5, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v5

    .line 107
    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    iget-object v5, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 114
    move-result v5

    .line 115
    .line 116
    if-eqz v5, :cond_4

    .line 117
    .line 118
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_4

    .line 123
    .line 124
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    new-instance v6, Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    iget-object v7, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v8, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v7, v8, v6, v5}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 140
    .line 141
    iget-boolean v5, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->optinAds:Z

    .line 142
    .line 143
    if-eqz v5, :cond_8

    .line 144
    .line 145
    new-instance v5, Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v6

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v7

    .line 157
    .line 158
    if-eqz v7, :cond_6

    .line 159
    .line 160
    .line 161
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v7

    .line 163
    .line 164
    instance-of v8, v7, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v8, :cond_5

    .line 167
    .line 168
    check-cast v7, Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-static {v7}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->breakParagraph(Ljava/lang/String;)Ljava/util/List;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    goto :goto_2

    .line 177
    .line 178
    .line 179
    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/4 v6, 0x7

    .line 182
    .line 183
    .line 184
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v7

    .line 186
    .line 187
    if-ge v6, v7, :cond_7

    .line 188
    .line 189
    sget-object v7, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    .line 190
    .line 191
    add-int/lit8 v8, v3, 0x1

    .line 192
    .line 193
    .line 194
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 195
    move-result v9

    .line 196
    rem-int/2addr v3, v9

    .line 197
    .line 198
    .line 199
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 204
    .line 205
    add-int/lit8 v6, v6, 0x5

    .line 206
    move v3, v8

    .line 207
    goto :goto_3

    .line 208
    :cond_7
    move-object v6, v5

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    .line 213
    :goto_4
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1200(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 217
    move-result v3

    .line 218
    .line 219
    if-nez v3, :cond_9

    .line 220
    return-void

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->addDivider(Ljava/util/List;)V

    .line 224
    .line 225
    iget-object v3, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 226
    .line 227
    if-eqz v3, :cond_a

    .line 228
    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 231
    move-result v3

    .line 232
    .line 233
    if-le v3, v4, :cond_a

    .line 234
    .line 235
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 236
    .line 237
    .line 238
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    :cond_a
    if-eqz v1, :cond_b

    .line 246
    .line 247
    .line 248
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 249
    move-result v1

    .line 250
    .line 251
    if-lez v1, :cond_b

    .line 252
    .line 253
    sget-object v1, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 254
    .line 255
    .line 256
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    sget-object v1, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 259
    .line 260
    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->allowTipping()Z

    .line 265
    move-result v1

    .line 266
    .line 267
    if-eqz v1, :cond_c

    .line 268
    .line 269
    sget-object v1, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    :cond_c
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->optinAds:Z

    .line 275
    .line 276
    if-eqz v1, :cond_d

    .line 277
    .line 278
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    :cond_d
    if-nez v2, :cond_e

    .line 284
    .line 285
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 291
    .line 292
    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    :cond_e
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 296
    .line 297
    if-eqz v1, :cond_f

    .line 298
    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 301
    move-result v1

    .line 302
    .line 303
    if-nez v1, :cond_f

    .line 304
    .line 305
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 306
    .line 307
    .line 308
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    :cond_f
    if-nez v2, :cond_11

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 319
    move-result v1

    .line 320
    .line 321
    if-lez v1, :cond_11

    .line 322
    .line 323
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 324
    .line 325
    .line 326
    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1300(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 327
    move-result v1

    .line 328
    .line 329
    if-eqz v1, :cond_10

    .line 330
    .line 331
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 332
    .line 333
    .line 334
    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1400(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 335
    move-result v1

    .line 336
    .line 337
    if-eqz v1, :cond_10

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 341
    move-result v1

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 345
    move-result v1

    .line 346
    .line 347
    if-eqz v1, :cond_10

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 351
    move-result v1

    .line 352
    .line 353
    if-ne v1, v4, :cond_10

    .line 354
    goto :goto_5

    .line 355
    .line 356
    :cond_10
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 360
    move-result v0

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0}, Lcom/narvii/detail/DetailAdapter$HeaderTag;->setCount(I)V

    .line 364
    .line 365
    .line 366
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 369
    .line 370
    .line 371
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    :cond_11
    :goto_5
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 374
    .line 375
    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 379
    .line 380
    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method public commentNew()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

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

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

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
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1100(Lcom/narvii/item/detail/ItemDetailFragment;)Z

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
    const-string v2, "/item/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

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
    const-string v2, "/item/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const-string v2, "/g-vote"

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    const-string v2, "/vote"

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "?start="

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, "&size="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p1, "&cv=1.2"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0163

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->P(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->T(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->N(Lcom/narvii/item/detail/ItemDetailFragment;)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0d015e

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Lcom/narvii/model/Item;

    .line 48
    .line 49
    iget-object p3, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 55
    move-result p3

    .line 56
    .line 57
    if-lez p3, :cond_1

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_1
    const p2, 0x7f0a0ac1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    check-cast p2, Lcom/narvii/widget/ThumbGallery;

    .line 77
    .line 78
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ThumbGallery;->setDarkTheme(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Lcom/narvii/widget/ThumbGallery;->setMediaList(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p0}, Lcom/narvii/widget/ThumbGallery;->setOnItemClickListener(Lcom/narvii/widget/ThumbGallery$OnItemClickListener;)V

    .line 88
    return-object p1

    .line 89
    .line 90
    :cond_2
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 91
    .line 92
    .line 93
    const v3, 0x7f0a0f36

    .line 94
    const/4 v4, 0x1

    .line 95
    .line 96
    if-ne p1, v0, :cond_4

    .line 97
    .line 98
    .line 99
    const p1, 0x7f0d0165

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    check-cast p2, Lcom/narvii/model/Item;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 116
    .line 117
    iget-object v0, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 121
    .line 122
    .line 123
    const p3, 0x7f0a09f9

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p3

    .line 128
    .line 129
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 130
    .line 131
    iget-object v0, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v0, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 140
    .line 141
    .line 142
    const p3, 0x7f0a0408

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 151
    .line 152
    iget-object p2, p2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    check-cast p2, Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 171
    move-result p3

    .line 172
    .line 173
    if-nez p3, :cond_3

    .line 174
    .line 175
    .line 176
    const p3, -0x555556

    .line 177
    goto :goto_0

    .line 178
    :cond_3
    const/4 p3, -0x1

    .line 179
    .line 180
    .line 181
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    return-object p1

    .line 183
    .line 184
    :cond_4
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 185
    .line 186
    if-ne p1, v0, :cond_11

    .line 187
    .line 188
    .line 189
    const p1, 0x7f0d0161

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    const/4 p2, 0x6

    .line 195
    .line 196
    new-array p3, p2, [Landroid/view/View;

    .line 197
    .line 198
    .line 199
    const v0, 0x7f0a03aa

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    aput-object v0, p3, v2

    .line 206
    .line 207
    .line 208
    const v0, 0x7f0a03ab

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    aput-object v0, p3, v4

    .line 215
    .line 216
    .line 217
    const v0, 0x7f0a03ac

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v0

    .line 222
    const/4 v5, 0x2

    .line 223
    .line 224
    aput-object v0, p3, v5

    .line 225
    .line 226
    .line 227
    const v0, 0x7f0a03ad

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v0

    .line 232
    const/4 v5, 0x3

    .line 233
    .line 234
    aput-object v0, p3, v5

    .line 235
    .line 236
    .line 237
    const v0, 0x7f0a03ae

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v0

    .line 242
    const/4 v5, 0x4

    .line 243
    .line 244
    aput-object v0, p3, v5

    .line 245
    .line 246
    .line 247
    const v0, 0x7f0a03af

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    move-result-object v0

    .line 252
    const/4 v5, 0x5

    .line 253
    .line 254
    aput-object v0, p3, v5

    .line 255
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    iget-object v6, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 262
    .line 263
    if-eqz v6, :cond_6

    .line 264
    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 267
    move-result-object v6

    .line 268
    move-object v7, v1

    .line 269
    .line 270
    .line 271
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result v8

    .line 273
    .line 274
    if-eqz v8, :cond_7

    .line 275
    .line 276
    .line 277
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object v8

    .line 279
    .line 280
    check-cast v8, Lcom/narvii/item/contributor/Contributor;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    .line 284
    move-result v9

    .line 285
    .line 286
    if-eqz v9, :cond_5

    .line 287
    move-object v7, v8

    .line 288
    goto :goto_1

    .line 289
    .line 290
    .line 291
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    goto :goto_1

    .line 293
    :cond_6
    move-object v7, v1

    .line 294
    :cond_7
    move v6, v2

    .line 295
    .line 296
    :goto_2
    const/16 v8, 0x8

    .line 297
    .line 298
    if-ge v6, p2, :cond_b

    .line 299
    .line 300
    aget-object v9, p3, v6

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 304
    move-result v10

    .line 305
    .line 306
    if-le v10, v6, :cond_8

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    move-result-object v10

    .line 311
    .line 312
    check-cast v10, Lcom/narvii/item/contributor/Contributor;

    .line 313
    goto :goto_3

    .line 314
    :cond_8
    move-object v10, v1

    .line 315
    .line 316
    :goto_3
    if-nez v10, :cond_9

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 320
    goto :goto_4

    .line 321
    .line 322
    :cond_9
    if-ne v6, v5, :cond_a

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 326
    move-result v11

    .line 327
    .line 328
    if-le v11, p2, :cond_a

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 332
    goto :goto_4

    .line 333
    .line 334
    .line 335
    :cond_a
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    move-result-object v8

    .line 345
    .line 346
    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8, v10}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 353
    move-result-object v8

    .line 354
    .line 355
    .line 356
    const v11, 0x7f120d56

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    move-result-object v8

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 364
    move-result-object v8

    .line 365
    .line 366
    check-cast v8, Lcom/narvii/widget/NicknameView;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8, v10}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 370
    .line 371
    iget-boolean v9, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 372
    .line 373
    .line 374
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 375
    .line 376
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 377
    goto :goto_2

    .line 378
    .line 379
    .line 380
    :cond_b
    const p3, 0x7f0a03b0

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    move-result-object p3

    .line 385
    .line 386
    if-nez v7, :cond_c

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 390
    goto :goto_5

    .line 391
    .line 392
    .line 393
    :cond_c
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    move-result-object v1

    .line 403
    .line 404
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v7}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 408
    .line 409
    .line 410
    const v1, 0x7f0a0a06

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 414
    move-result-object p3

    .line 415
    .line 416
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 420
    .line 421
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 425
    .line 426
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 427
    .line 428
    .line 429
    const v3, 0x7f120e33

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 434
    .line 435
    .line 436
    const v3, -0xcb6d25

    .line 437
    .line 438
    .line 439
    invoke-virtual {p3, v1, v3}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    .line 440
    .line 441
    .line 442
    :goto_5
    const p3, 0x7f0a0cbc

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 446
    move-result-object v1

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 450
    move-result v0

    .line 451
    .line 452
    if-le v0, p2, :cond_d

    .line 453
    move p2, v2

    .line 454
    goto :goto_6

    .line 455
    :cond_d
    move p2, v8

    .line 456
    .line 457
    .line 458
    :goto_6
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    move-result-object p2

    .line 463
    .line 464
    check-cast p2, Landroid/widget/TextView;

    .line 465
    .line 466
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 467
    .line 468
    new-array v1, v4, [Ljava/lang/Object;

    .line 469
    .line 470
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 471
    .line 472
    if-nez v3, :cond_e

    .line 473
    move v3, v2

    .line 474
    goto :goto_7

    .line 475
    .line 476
    .line 477
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 478
    move-result v3

    .line 479
    .line 480
    .line 481
    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    move-result-object v3

    .line 483
    .line 484
    aput-object v3, v1, v2

    .line 485
    .line 486
    .line 487
    const v3, 0x7f121070

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    const p2, 0x7f060491

    .line 498
    .line 499
    .line 500
    const v0, 0x7f060493

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/detail/DetailAdapter;->setTextColorSelector(Landroid/view/View;III)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 507
    move-result-object p2

    .line 508
    .line 509
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 510
    .line 511
    .line 512
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    const p2, 0x7f0a0c38

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 519
    move-result-object p3

    .line 520
    .line 521
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 522
    .line 523
    if-nez v0, :cond_f

    .line 524
    .line 525
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    .line 526
    .line 527
    if-eqz v0, :cond_f

    .line 528
    move v0, v2

    .line 529
    goto :goto_8

    .line 530
    :cond_f
    move v0, v8

    .line 531
    .line 532
    .line 533
    :goto_8
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 537
    move-result-object p2

    .line 538
    .line 539
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 540
    .line 541
    .line 542
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    const p2, 0x7f0a0b8a

    .line 546
    .line 547
    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 549
    move-result-object p2

    .line 550
    .line 551
    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 552
    .line 553
    if-nez p3, :cond_10

    .line 554
    .line 555
    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    .line 556
    .line 557
    if-nez p3, :cond_10

    .line 558
    goto :goto_9

    .line 559
    :cond_10
    move v2, v8

    .line 560
    .line 561
    .line 562
    :goto_9
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    return-object p1

    .line 564
    .line 565
    :cond_11
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 566
    .line 567
    if-ne p1, v0, :cond_12

    .line 568
    .line 569
    .line 570
    const p1, 0x7f0d0164

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 574
    move-result-object p1

    .line 575
    .line 576
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 577
    .line 578
    iget-object p2, p2, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 579
    .line 580
    .line 581
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 582
    move-result-object p2

    .line 583
    .line 584
    check-cast p2, Lcom/narvii/model/Item;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 588
    move-result-object p2

    .line 589
    .line 590
    check-cast p2, Lcom/narvii/model/Item;

    .line 591
    .line 592
    iget-object p2, p2, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 593
    .line 594
    const-string p3, "props"

    .line 595
    .line 596
    .line 597
    filled-new-array {p3}, [Ljava/lang/String;

    .line 598
    move-result-object p3

    .line 599
    .line 600
    .line 601
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 602
    move-result-object p2

    .line 603
    .line 604
    .line 605
    const p3, 0x7f0a0775

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 609
    move-result-object p3

    .line 610
    .line 611
    check-cast p3, Lcom/narvii/item/property/ItemPropertyList;

    .line 612
    .line 613
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 617
    move-result v0

    .line 618
    .line 619
    .line 620
    invoke-virtual {p3, p2, v0}, Lcom/narvii/item/property/ItemPropertyList;->setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;Z)V

    .line 621
    return-object p1

    .line 622
    .line 623
    :cond_12
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    .line 624
    .line 625
    .line 626
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 627
    move-result v0

    .line 628
    .line 629
    if-gez v0, :cond_13

    .line 630
    .line 631
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 632
    .line 633
    if-ne p1, v0, :cond_14

    .line 634
    .line 635
    :cond_13
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 636
    .line 637
    .line 638
    invoke-static {v0, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1500(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 639
    move-result-object v0

    .line 640
    .line 641
    if-eqz v0, :cond_14

    .line 642
    return-object v0

    .line 643
    .line 644
    .line 645
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 646
    move-result-object p2

    .line 647
    .line 648
    sget-object p3, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 649
    .line 650
    if-ne p1, p3, :cond_16

    .line 651
    .line 652
    .line 653
    const p1, 0x7f0a0358

    .line 654
    .line 655
    .line 656
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 657
    move-result-object p1

    .line 658
    .line 659
    check-cast p1, Landroid/widget/TextView;

    .line 660
    .line 661
    .line 662
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 663
    move-result-object p3

    .line 664
    .line 665
    check-cast p3, Lcom/narvii/model/Item;

    .line 666
    .line 667
    .line 668
    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 669
    move-result p3

    .line 670
    .line 671
    if-nez p3, :cond_15

    .line 672
    .line 673
    const-string p3, ""

    .line 674
    goto :goto_a

    .line 675
    .line 676
    :cond_15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .line 681
    const-string v0, "("

    .line 682
    .line 683
    .line 684
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 688
    move-result-object v0

    .line 689
    .line 690
    check-cast v0, Lcom/narvii/model/Item;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 694
    move-result v0

    .line 695
    .line 696
    .line 697
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    const-string v0, ")"

    .line 700
    .line 701
    .line 702
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    move-result-object p3

    .line 707
    .line 708
    .line 709
    :goto_a
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    return-object p2

    .line 711
    .line 712
    :cond_16
    sget-object p3, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 713
    .line 714
    if-ne p1, p3, :cond_17

    .line 715
    .line 716
    .line 717
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 718
    .line 719
    :cond_17
    sget-object p3, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 720
    .line 721
    if-ne p1, p3, :cond_18

    .line 722
    .line 723
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 724
    .line 725
    .line 726
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    :cond_18
    return-object p2
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
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
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

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
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

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
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

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
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$400(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->S(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->sendContributorRequest()V

    .line 16
    :cond_0
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/Item;

    return-object v0
.end method

.method public onItemClick(Lcom/narvii/model/Media;)V
    .locals 5

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 55
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1700(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 56
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const-string v0, "Page Detailed View"

    invoke-static {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 58
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1, v0, v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 61
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 62
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "parent"

    .line 63
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "parentClass"

    const-class v3, Lcom/narvii/model/Item;

    .line 64
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 65
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v3, "preview"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "list"

    .line 66
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p1, :cond_2

    const-string v0, "position"

    .line 67
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    :cond_2
    invoke-static {p0, v2}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1600(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const-string v1, "Page Detailed View"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-eq p3, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_2

    if-nez p5, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    .line 5
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "parent"

    .line 6
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "parentClass"

    const-class p4, Lcom/narvii/model/Item;

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 9
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "list"

    .line 10
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 11
    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p3, 0x7f0a0d25

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SlideshowView;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/narvii/widget/SlideshowView;->getCurrentIndex()I

    move-result p1

    const-string p3, "position"

    .line 13
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 14
    iget-boolean p1, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string p3, "preview"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    invoke-static {p0, p2}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v2

    .line 16
    :cond_2
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_4

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 17
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const-string p2, "Source"

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v2

    .line 21
    :cond_4
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_12

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object p3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/item/contributor/Contributor;

    .line 24
    invoke-virtual {p4}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p3, p4

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object p3, v1

    :cond_7
    if-nez p5, :cond_8

    goto/16 :goto_1

    .line 26
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p4, 0x7f0a03b0

    if-ne p2, p4, :cond_9

    .line 27
    invoke-static {p0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 28
    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03aa

    if-ne p2, p3, :cond_a

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 30
    :cond_a
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03ab

    if-ne p2, p3, :cond_b

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 32
    :cond_b
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03ac

    if-ne p2, p3, :cond_c

    const/4 p2, 0x2

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 34
    :cond_c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03ad

    if-ne p2, p3, :cond_d

    const/4 p2, 0x3

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 36
    :cond_d
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03ae

    const/4 p4, 0x4

    if-ne p2, p3, :cond_e

    .line 37
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_1

    .line 38
    :cond_e
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a03af

    if-ne p2, p3, :cond_f

    const/4 p2, 0x5

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_1

    .line 40
    :cond_f
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0c38

    if-ne p1, p2, :cond_10

    iput-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->sendContributorRequest()V

    .line 42
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 43
    :cond_10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0cbc

    if-ne p1, p2, :cond_11

    const-class p1, Lcom/narvii/item/contributor/ContributorListFragment;

    .line 44
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 45
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    iget-object p2, p2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string p3, "itemId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 46
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    iget-object p2, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSystem()Z

    move-result p2

    const-string p3, "canReorder"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 47
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "contributorList"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 48
    invoke-static {p2, p1, p4}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    :cond_11
    :goto_1
    return v2

    .line 49
    :cond_12
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    if-ne p3, v0, :cond_14

    if-eqz p5, :cond_13

    .line 50
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a009b

    if-ne p1, p2, :cond_13

    .line 51
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    :cond_13
    return v2

    .line 52
    :cond_14
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne p3, v0, :cond_16

    if-eqz p5, :cond_15

    .line 53
    invoke-virtual {p0, p5, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    :cond_15
    return v2

    .line 54
    :cond_16
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/FeedDetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    .line 5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "update"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "new"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "delete"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/model/Item;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    check-cast v1, Lcom/narvii/model/Comment;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$200(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V

    .line 76
    :cond_2
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
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 2
    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, p2, Lcom/narvii/model/api/ItemResponse;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    .line 5
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/ItemResponse;

    .line 6
    iget-object v1, v1, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    iget-object v2, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 8
    iget-object v2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 9
    iget-object v2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    iget v2, v0, Lcom/narvii/model/Feed;->latitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->latitude:I

    .line 11
    iget v2, v0, Lcom/narvii/model/Feed;->longitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->longitude:I

    .line 12
    iget-object v2, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 13
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 14
    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v0, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 15
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->onFeedObjectResponse()V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 18
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$500(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 19
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$600(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "inMyFavorites"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "inMyFavorites"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    return-object v0
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
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$300(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1800(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string p2, "Page Detailed View"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    .line 21
    return v1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    const-string v0, "nvObject"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 52
    :cond_1
    return v1
.end method

.method protected preview()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

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
            "Lcom/narvii/model/api/ItemResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/ItemResponse;

    return-object v0
.end method

.method sendContributorRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/Item;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "/item/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "/contributors"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    .line 58
    .line 59
    const-string v0, "api"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 18
    return-void
.end method

.method public setObject(Lcom/narvii/model/Item;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/model/api/ItemResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/ItemResponse;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/ItemResponse;

    :goto_0
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 5
    iput v1, v0, Lcom/narvii/model/api/ItemResponse;->inMyFavorites:I

    .line 6
    iput-object p1, v0, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setObject(Lcom/narvii/model/Item;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/FeedResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/api/ItemResponse;

    iget v1, v0, Lcom/narvii/model/api/ItemResponse;->inMyFavorites:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    .line 4
    iget-object v0, v0, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->hasBackground()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/narvii/item/detail/ItemDetailFragment;->access$702(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v1, v2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$802(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$902(Lcom/narvii/item/detail/ItemDetailFragment;I)I

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 8
    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->R(Lcom/narvii/item/detail/ItemDetailFragment;)V

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 9
    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1000(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 10
    :cond_3
    iget-boolean v1, p1, Lcom/narvii/model/api/FeedResponse;->isBookmarked:Z

    iput-boolean v1, p0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 11
    iget-object v1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v1, v1, Lcom/narvii/item/detail/ItemDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->resetHover()V

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected shouldBlockShareMedia()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2000(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

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
    .locals 3

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
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Item;

    .line 17
    .line 18
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/Item;

    .line 29
    .line 30
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 39
    .line 40
    const-string v2, "__communityId"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1900(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 71
    :goto_1
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
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

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
