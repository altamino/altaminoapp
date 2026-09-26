.class public Lcom/narvii/item/detail/ItemDetailFragment;
.super Lcom/narvii/detail/FeedDetailFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/item/detail/ItemDetailFragment$Adapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;,
        Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailFragment<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# static fields
.field static final ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

.field static final ADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;"
        }
    .end annotation
.end field

.field static final AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final CONTRIBUTOR_REQUEST:I = 0x4

.field static final COPY_AND_EDIT_REQUEST:I = 0x8

.field static final GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final USER:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field private final callback:Lcom/narvii/util/Callback;

.field commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field divAdapter:Lcom/narvii/list/DividerAdapter;

.field fromMyCatalog:Z

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field private final headerClickListener:Landroid/view/View$OnClickListener;

.field private headerLayout:Lcom/narvii/item/detail/HeaderLayout;

.field private headerPlaceHolder:Landroid/view/View;

.field itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

.field private itemHelper:Lcom/narvii/item/ItemHelper;

.field private keywordsHeight:I

.field private final longClickVote:Landroid/view/View$OnLongClickListener;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field optinPaidAds:Z

.field private relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

.field voteIconView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.item.header"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    const-string v1, "detail.property"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 22
    .line 23
    const-string v1, "detail.about.header"

    .line 24
    .line 25
    .line 26
    const v3, 0x7f1203c5

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 34
    .line 35
    const-string v1, "detail.gallery.header"

    .line 36
    .line 37
    .line 38
    const v3, 0x7f1207c4

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 46
    .line 47
    const-string v1, "detail.user.header"

    .line 48
    .line 49
    .line 50
    const v3, 0x7f120179

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 58
    .line 59
    const-string v1, "detail.add_desc"

    .line 60
    .line 61
    .line 62
    const v3, 0x7f1203c6

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$AddTag;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 70
    .line 71
    const-string v1, "detail.gallery"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 79
    .line 80
    const-string v1, "detail.contributors"

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 88
    .line 89
    const-string v1, "detail.contributors.header"

    .line 90
    .line 91
    .line 92
    const v3, 0x7f120343

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 98
    .line 99
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 100
    .line 101
    const-string v1, "detail.user"

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 105
    .line 106
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 109
    .line 110
    const-string v1, "detail.likes"

    .line 111
    .line 112
    .line 113
    const v3, 0x7f120b90

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1, v3}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 119
    .line 120
    const/16 v0, 0x14

    .line 121
    .line 122
    new-array v0, v0, [Lcom/narvii/detail/DetailAdapter$CellType;

    .line 123
    .line 124
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 125
    .line 126
    const-string v3, "adbanner1"

    .line 127
    const/4 v4, 0x0

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v3, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 131
    .line 132
    aput-object v1, v0, v4

    .line 133
    .line 134
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 135
    .line 136
    const-string v3, "adbanner2"

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v3, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 140
    .line 141
    aput-object v1, v0, v2

    .line 142
    .line 143
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 144
    .line 145
    const-string v2, "adbanner3"

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 149
    const/4 v2, 0x2

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 154
    .line 155
    const-string v2, "adbanner4"

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 159
    const/4 v2, 0x3

    .line 160
    .line 161
    aput-object v1, v0, v2

    .line 162
    .line 163
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 164
    .line 165
    const-string v2, "adbanner5"

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 169
    const/4 v2, 0x4

    .line 170
    .line 171
    aput-object v1, v0, v2

    .line 172
    .line 173
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 174
    .line 175
    const-string v2, "adbanner6"

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 179
    const/4 v2, 0x5

    .line 180
    .line 181
    aput-object v1, v0, v2

    .line 182
    .line 183
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 184
    .line 185
    const-string v2, "adbanner7"

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 189
    const/4 v2, 0x6

    .line 190
    .line 191
    aput-object v1, v0, v2

    .line 192
    .line 193
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 194
    .line 195
    const-string v2, "adbanner8"

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 199
    const/4 v2, 0x7

    .line 200
    .line 201
    aput-object v1, v0, v2

    .line 202
    .line 203
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 204
    .line 205
    const-string v2, "adbanner9"

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 209
    .line 210
    const/16 v2, 0x8

    .line 211
    .line 212
    aput-object v1, v0, v2

    .line 213
    .line 214
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 215
    .line 216
    const-string v2, "adbanner10"

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 220
    .line 221
    const/16 v2, 0x9

    .line 222
    .line 223
    aput-object v1, v0, v2

    .line 224
    .line 225
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 226
    .line 227
    const-string v2, "adbanner11"

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 231
    .line 232
    const/16 v2, 0xa

    .line 233
    .line 234
    aput-object v1, v0, v2

    .line 235
    .line 236
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 237
    .line 238
    const-string v2, "adbanner12"

    .line 239
    .line 240
    .line 241
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 242
    .line 243
    const/16 v2, 0xb

    .line 244
    .line 245
    aput-object v1, v0, v2

    .line 246
    .line 247
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 248
    .line 249
    const-string v2, "adbanner13"

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 253
    .line 254
    const/16 v2, 0xc

    .line 255
    .line 256
    aput-object v1, v0, v2

    .line 257
    .line 258
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 259
    .line 260
    const-string v2, "adbanner14"

    .line 261
    .line 262
    .line 263
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 264
    .line 265
    const/16 v2, 0xd

    .line 266
    .line 267
    aput-object v1, v0, v2

    .line 268
    .line 269
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 270
    .line 271
    const-string v2, "adbanner15"

    .line 272
    .line 273
    .line 274
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 275
    .line 276
    const/16 v2, 0xe

    .line 277
    .line 278
    aput-object v1, v0, v2

    .line 279
    .line 280
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 281
    .line 282
    const-string v2, "adbanner16"

    .line 283
    .line 284
    .line 285
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 286
    .line 287
    const/16 v2, 0xf

    .line 288
    .line 289
    aput-object v1, v0, v2

    .line 290
    .line 291
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 292
    .line 293
    const-string v2, "adbanner17"

    .line 294
    .line 295
    .line 296
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 297
    .line 298
    const/16 v2, 0x10

    .line 299
    .line 300
    aput-object v1, v0, v2

    .line 301
    .line 302
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 303
    .line 304
    const-string v2, "adbanner18"

    .line 305
    .line 306
    .line 307
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 308
    .line 309
    const/16 v2, 0x11

    .line 310
    .line 311
    aput-object v1, v0, v2

    .line 312
    .line 313
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 314
    .line 315
    const-string v2, "adbanner19"

    .line 316
    .line 317
    .line 318
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 319
    .line 320
    const/16 v2, 0x12

    .line 321
    .line 322
    aput-object v1, v0, v2

    .line 323
    .line 324
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 325
    .line 326
    const-string v2, "adbanner20"

    .line 327
    .line 328
    .line 329
    invoke-direct {v1, v2, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 330
    .line 331
    const/16 v2, 0x13

    .line 332
    .line 333
    aput-object v1, v0, v2

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    .line 340
    .line 341
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 342
    .line 343
    const-string v1, "adbanner_abovecomment"

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v1, v4}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 347
    .line 348
    sput-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 349
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$6;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$6;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$7;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$7;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$11;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$11;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    .line 25
    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    return-object p0
.end method

.method static bridge synthetic N(Lcom/narvii/item/detail/ItemDetailFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic O(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    return-object p0
.end method

.method static bridge synthetic P(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/item/detail/ItemDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateBackground()V

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeader()V

    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeaderPlaceHolder()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1300(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->getAdView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1700(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1900(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    .line 4
    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2500(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$2600(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2800(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2900(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    .line 4
    return-void
.end method

.method static synthetic access$3000(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 4
    return-void
.end method

.method static synthetic access$3100(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lcom/narvii/item/detail/ItemDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V

    .line 4
    return-void
.end method

.method static synthetic access$702(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/narvii/item/detail/ItemDetailFragment;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p1
.end method

.method private getHeaderVoteLayoutHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x42700000    # 60.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    return v0
.end method

.method private getOverlayHeaderHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getHeaderVoteLayoutHeight()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method private updateBackground()V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 7
    .line 8
    if-eqz v1, :cond_e

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/Item;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    new-array v4, v3, [Lcom/narvii/image/BackgroundSource;

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    aput-object v1, v4, v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 51
    move-result v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v2, v5

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/detail/FeedDetailFragment;->updateSBB(I)V

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 62
    move-result v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 73
    move-result v2

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v3, v5

    .line 78
    .line 79
    :goto_1
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 83
    move-result v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4, v3}, Lcom/narvii/item/detail/HeaderLayout;->setDarkTheme(ZZ)V

    .line 87
    .line 88
    :cond_4
    if-eqz v0, :cond_7

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 92
    move-result v1

    .line 93
    .line 94
    .line 95
    const v2, 0x7f0a062a

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    .line 102
    .line 103
    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    .line 104
    .line 105
    .line 106
    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 113
    move-result v4

    .line 114
    .line 115
    if-nez v4, :cond_5

    .line 116
    const/4 v1, -0x1

    .line 117
    :goto_2
    move v12, v1

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_5
    if-eqz v1, :cond_6

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_6
    const/high16 v1, -0x1000000

    .line 124
    .line 125
    .line 126
    const v4, 0x3e4ccccd    # 0.2f

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 130
    move-result v1

    .line 131
    goto :goto_2

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 144
    move-result-object v6

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v6

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    move-result-object v6

    .line 153
    .line 154
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 155
    .line 156
    div-int/lit8 v6, v6, 0x4

    .line 157
    int-to-float v10, v6

    .line 158
    .line 159
    .line 160
    const v6, 0xffffff

    .line 161
    .line 162
    and-int v11, v12, v6

    .line 163
    .line 164
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 165
    move-object v6, v4

    .line 166
    .line 167
    .line 168
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 172
    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    const v1, -0xcfcfd0

    .line 180
    .line 181
    .line 182
    const v2, 0x7f0a0799

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 195
    move-result v1

    .line 196
    .line 197
    if-nez v1, :cond_8

    .line 198
    goto :goto_4

    .line 199
    .line 200
    :cond_8
    const/high16 v5, -0x34000000    # -3.3554432E7f

    .line 201
    .line 202
    :goto_4
    const/high16 v1, 0x40400000    # 3.0f

    .line 203
    const/4 v2, 0x0

    .line 204
    .line 205
    const/high16 v3, 0x40000000    # 2.0f

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 209
    .line 210
    :cond_9
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 211
    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 216
    move-result v1

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 220
    .line 221
    :cond_a
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 222
    .line 223
    if-eqz v0, :cond_b

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 227
    move-result v1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 231
    .line 232
    :cond_b
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 233
    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 238
    move-result v1

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 242
    .line 243
    :cond_c
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 249
    move-result v1

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 253
    .line 254
    :cond_d
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 255
    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 260
    :cond_e
    :goto_5
    return-void
.end method

.method private updateHeader()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/Item;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v3, Lcom/narvii/util/FilterHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    move v3, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v1

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_3

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getOverlayHeaderHeight()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeaderPlaceHolder()V

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 51
    .line 52
    .line 53
    const v4, 0x7f0d0162

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 59
    .line 60
    .line 61
    const v4, 0x7f0a0767

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Lcom/narvii/item/detail/HeaderLayout;

    .line 68
    .line 69
    iput-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 70
    .line 71
    iget-boolean v4, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/narvii/item/detail/HeaderLayout;->removeActionBar2()V

    .line 77
    .line 78
    :cond_2
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 79
    .line 80
    iget-boolean v4, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lcom/narvii/item/detail/HeaderLayout;->setPreview(Z)V

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 89
    move-result v4

    .line 90
    xor-int/2addr v2, v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v2}, Lcom/narvii/item/detail/HeaderLayout;->setIsHiddenPost(Z)V

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Lcom/narvii/item/detail/HeaderLayout;->setItem(Lcom/narvii/model/Item;)V

    .line 99
    .line 100
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lcom/narvii/item/detail/HeaderLayout;->setHeight1(I)V

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setLongClickVoteListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    .line 137
    div-int/lit8 v2, v2, 0x4

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getHeaderVoteLayoutHeight()I

    .line 141
    move-result v3

    .line 142
    add-int/2addr v2, v3

    .line 143
    .line 144
    iget v3, p0, Lcom/narvii/item/detail/ItemDetailFragment;->keywordsHeight:I

    .line 145
    add-int/2addr v2, v3

    .line 146
    .line 147
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 157
    .line 158
    iget-object v1, v1, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 159
    .line 160
    new-instance v2, Lcom/narvii/item/detail/ItemDetailFragment$5;

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, p0}, Lcom/narvii/item/detail/ItemDetailFragment$5;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/narvii/widget/KeywordsView;->setOnSizeChangedListener(Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    .line 170
    return-void

    .line 171
    .line 172
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 173
    .line 174
    const/16 v1, 0x8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getOverlayHeaderHeight()I

    .line 13
    move-result v1

    .line 14
    .line 15
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerPlaceHolder:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method addToCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/model/Item;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method addToMyFavorites()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/model/Item;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->callback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method protected bookmark(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/item/detail/ItemDetailFragment$12;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$12;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 25
    return-void
.end method

.method protected bottomComment()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->commentNew()V

    .line 17
    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget-object p2, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$4;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$4;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->setFlags(I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 70
    .line 71
    .line 72
    const v1, 0x7f0d04e2

    .line 73
    .line 74
    .line 75
    filled-new-array {v1}, [I

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, p0, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    .line 104
    :cond_0
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->relatedBlogHeaderAdapter:Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    .line 111
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-nez p1, :cond_1

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->divAdapter:Lcom/narvii/list/DividerAdapter;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    .line 129
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 135
    return-object p1
.end method

.method protected disableOptinAds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/detail/FeedDetailAdapter<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    return-object v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "users-browsing-item-at"

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "wiki_entry_detail"

    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v1, "__savedInstanceState"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected hoverBelowOverlayPlaceHolder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHover(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_2
    return v1
.end method

.method protected objectType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const-string v0, "categoryList"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-class v2, Lcom/narvii/model/ItemCategory;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->addToCategory(Ljava/util/List;)V

    .line 25
    :cond_0
    const/4 v0, 0x4

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    if-ne p2, v1, :cond_1

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 34
    .line 35
    const-string v2, "contributorList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    const-class v3, Lcom/narvii/item/contributor/Contributor;

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iput-object v2, v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    :cond_1
    const/16 v0, 0x6f

    .line 55
    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    if-ne p2, v1, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 61
    .line 62
    const-string v1, "collectionId"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->commentNew(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "__savedInstanceState"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/item/ItemHelper;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    const-string v0, "fromMyCatalog"

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 69
    :goto_0
    const/4 v0, 0x1

    .line 70
    .line 71
    if-nez p1, :cond_6

    .line 72
    .line 73
    const-string p1, "statistics"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 80
    .line 81
    const-string v1, "Source"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    const-string v2, "fromOfficialCatalog"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    const-string v2, "official catalog"

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_2
    const-string/jumbo v2, "wiki"

    .line 99
    .line 100
    :goto_1
    const-string v3, "Detailed Page Opened"

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    const-string v3, "Detailed Page Opened Total"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    const-string v3, "type"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 120
    .line 121
    const-string v1, "moreFeaturedPost"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 125
    move-result v1

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    const-string v1, "More Featured Post"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    .line 134
    :cond_3
    const-string v1, "SBB"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 138
    move-result v3

    .line 139
    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 144
    .line 145
    :cond_4
    const-string v1, "pinned"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    const-string v1, "Pinned"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 157
    .line 158
    const-string v1, "Pinned Open Total"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 165
    move-result v1

    .line 166
    xor-int/2addr v1, v0

    .line 167
    .line 168
    const-string v3, "Gated"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v3, "Detailed "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v2, " Page Opened"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 197
    .line 198
    :cond_6
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 202
    .line 203
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 206
    .line 207
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 213
    const/4 v1, 0x0

    .line 214
    .line 215
    if-nez p1, :cond_7

    .line 216
    const/4 p1, 0x4

    .line 217
    .line 218
    .line 219
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 220
    move-result p1

    .line 221
    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->disableOptinAds()Z

    .line 226
    move-result p1

    .line 227
    .line 228
    if-nez p1, :cond_7

    .line 229
    goto :goto_2

    .line 230
    :cond_7
    move v0, v1

    .line 231
    .line 232
    :goto_2
    iput-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->optinPaidAds:Z

    .line 233
    .line 234
    const-string p1, "justCreated"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 238
    move-result p1

    .line 239
    .line 240
    if-eqz p1, :cond_8

    .line 241
    .line 242
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    .line 243
    .line 244
    .line 245
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 246
    .line 247
    const-string v0, "scenario_create_post"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->hideBottomAdsView()V

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f12034a

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p2

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0d042d

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/item/detail/ItemDetailFragment$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0, p2}, Lcom/narvii/item/detail/ItemDetailFragment$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/MenuItem;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    const v2, 0x7f0a04d9

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    const/4 v1, 0x1

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0a04da

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_0
    const v1, 0x7f080582

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    :goto_0
    const p2, 0x7f1201bb

    .line 79
    const/4 v1, 0x7

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    .line 88
    .line 89
    const p2, 0x7f121204

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    .line 98
    .line 99
    const p2, 0x7f120207

    .line 100
    .line 101
    const/16 v1, 0x8

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    const p2, 0x7f1201ea

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 111
    .line 112
    .line 113
    const p2, 0x7f120cd0

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 117
    .line 118
    const/16 p2, 0xa

    .line 119
    .line 120
    .line 121
    const v1, 0x7f12009d

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04ec

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "vote"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    const-string v1, "voteFromBottom"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "__adapterClass"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-class v2, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 54
    return-void

    .line 55
    .line 56
    :cond_1
    const-string p1, "voteValue"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move-object p1, v2

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v2, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120cd0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f12035e

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f120fe0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$2;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 44
    return v2

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    const v1, 0x7f120207

    .line 52
    .line 53
    if-ne v0, v1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->submitOfficialCatalog()V

    .line 57
    return v2

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    const v1, 0x7f1201ea

    .line 65
    .line 66
    .line 67
    const v3, 0x7f12034a

    .line 68
    .line 69
    if-eq v0, v1, :cond_6

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 73
    move-result v0

    .line 74
    .line 75
    if-ne v0, v3, :cond_2

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    const v1, 0x7f12009d

    .line 84
    .line 85
    if-eq v0, v1, :cond_5

    .line 86
    .line 87
    .line 88
    const v1, 0x7f1201bb

    .line 89
    .line 90
    if-eq v0, v1, :cond_4

    .line 91
    .line 92
    .line 93
    const v1, 0x7f121204

    .line 94
    .line 95
    if-eq v0, v1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    .line 102
    :cond_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    new-instance v1, Lcom/narvii/item/detail/ItemDetailFragment$3;

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/narvii/item/detail/ItemDetailFragment$3;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 118
    return v2

    .line 119
    .line 120
    :cond_4
    const-string p1, "Post Detail Menu"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 124
    return v2

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->showModerationDialog()V

    .line 128
    return v2

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 132
    move-result p1

    .line 133
    .line 134
    if-ne p1, v3, :cond_7

    .line 135
    .line 136
    const-string p1, "titlebar"

    .line 137
    goto :goto_1

    .line 138
    .line 139
    :cond_7
    const-string p1, "moremenu"

    .line 140
    .line 141
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 142
    .line 143
    iput-object p1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->addToMyFavorites()V

    .line 147
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 19
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/model/Item;

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/model/Item;->status()I

    .line 21
    move-result v4

    .line 22
    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    move v4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v3

    .line 29
    .line 30
    :goto_0
    iget-object v5, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iget-boolean v5, v5, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    move v5, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v5, v3

    .line 40
    .line 41
    :goto_1
    const-string v6, "account"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    check-cast v6, Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    const v8, 0x7f120cd0

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 58
    move-result-object v8

    .line 59
    .line 60
    const/16 v9, 0xfe

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    iget-object v10, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 71
    .line 72
    if-eqz v10, :cond_2

    .line 73
    .line 74
    iget v10, v10, Lcom/narvii/model/User;->role:I

    .line 75
    .line 76
    if-ne v10, v9, :cond_2

    .line 77
    move v10, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v10, v3

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    .line 84
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 85
    .line 86
    .line 87
    invoke-direct {v8, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 88
    .line 89
    .line 90
    const v10, 0x7f120207

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 94
    move-result-object v10

    .line 95
    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 102
    move-result v11

    .line 103
    .line 104
    if-eqz v11, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 108
    move-result v8

    .line 109
    .line 110
    if-eqz v8, :cond_3

    .line 111
    move v8, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    move v8, v3

    .line 114
    .line 115
    .line 116
    :goto_3
    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    .line 118
    .line 119
    const v8, 0x7f1210ad

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    if-nez v5, :cond_4

    .line 126
    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    if-eqz v7, :cond_4

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    iget-object v10, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 134
    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    iget v10, v10, Lcom/narvii/model/User;->role:I

    .line 138
    .line 139
    if-ne v10, v9, :cond_4

    .line 140
    move v10, v3

    .line 141
    goto :goto_4

    .line 142
    :cond_4
    const/4 v10, 0x2

    .line 143
    .line 144
    .line 145
    :goto_4
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 149
    move-result v8

    .line 150
    .line 151
    if-eqz v8, :cond_5

    .line 152
    .line 153
    if-nez v5, :cond_5

    .line 154
    .line 155
    if-eqz v4, :cond_5

    .line 156
    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    iget-object v0, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 166
    .line 167
    if-ne v0, v9, :cond_5

    .line 168
    move v0, v2

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move v0, v3

    .line 171
    .line 172
    .line 173
    :goto_5
    const v1, 0x7f12034a

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    const v1, 0x7f1201ea

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    if-eqz v0, :cond_6

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 206
    move-result v0

    .line 207
    .line 208
    if-eqz v0, :cond_6

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 212
    move-result v0

    .line 213
    .line 214
    if-nez v0, :cond_6

    .line 215
    move v0, v2

    .line 216
    goto :goto_6

    .line 217
    :cond_6
    move v0, v3

    .line 218
    .line 219
    .line 220
    :goto_6
    const v1, 0x7f12009d

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 230
    .line 231
    .line 232
    const v1, 0x7f1201bb

    .line 233
    .line 234
    .line 235
    const v4, 0x7f121204

    .line 236
    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 247
    move-result v0

    .line 248
    .line 249
    if-nez v0, :cond_9

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    iget-object v4, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 256
    .line 257
    iget-boolean v5, v4, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 258
    .line 259
    if-eqz v5, :cond_7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    if-eqz v4, :cond_7

    .line 266
    move v4, v2

    .line 267
    goto :goto_7

    .line 268
    :cond_7
    move v4, v3

    .line 269
    .line 270
    .line 271
    :goto_7
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    .line 273
    .line 274
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 275
    move-result-object p1

    .line 276
    .line 277
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 278
    .line 279
    iget-boolean v1, v0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 280
    .line 281
    if-nez v1, :cond_8

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 285
    move-result-object v0

    .line 286
    .line 287
    if-eqz v0, :cond_8

    .line 288
    goto :goto_8

    .line 289
    :cond_8
    move v2, v3

    .line 290
    .line 291
    .line 292
    :goto_8
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    goto :goto_9

    .line 294
    .line 295
    .line 296
    :cond_9
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    .line 300
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    .line 302
    .line 303
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    .line 307
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    :goto_9
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$8;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/item/detail/ItemDetailFragment$8;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->tagRelatedAdapter:Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "fromMyCatalog"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->fromMyCatalog:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ab1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/item/detail/ItemDetailFragment;->updateHeader()V

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a0e12

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 42
    .line 43
    if-nez p2, :cond_0

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 82
    move-result p2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 86
    move-result v0

    .line 87
    add-int/2addr p2, v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 91
    :cond_1
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    :cond_1
    :goto_0
    return v1

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method protected showModerationDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 23
    return-void
.end method

.method submitOfficialCatalog()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/model/Item;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 14
    .line 15
    const-string v1, "Profile"

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 18
    return-void
.end method

.method protected unVote()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 6
    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f12120e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 35
    .line 36
    .line 37
    const v1, 0x7f1202e7

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/item/detail/ItemDetailFragment$9;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0, p2, p3, v0}, Lcom/narvii/item/detail/ItemDetailFragment$9;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Item;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_0
    if-eqz p3, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 63
    move-result v3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 67
    move-result v3

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    move v3, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v3, 0x2

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    const v4, 0x7f0a0201

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v4, v3}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onStart(ILjava/lang/Object;)V

    .line 83
    .line 84
    :cond_2
    if-eqz p3, :cond_3

    .line 85
    .line 86
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->SBB:Lcom/narvii/util/logging/LoggingSource;

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_3
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 90
    .line 91
    :goto_1
    if-eqz v1, :cond_5

    .line 92
    .line 93
    const-string v3, "statistics"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Lcom/narvii/util/statistics/StatisticsService;

    .line 100
    .line 101
    iget-object v4, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    .line 105
    move-result v4

    .line 106
    .line 107
    const-string v5, "Page Detailed View"

    .line 108
    .line 109
    const-string v6, "post_type"

    .line 110
    .line 111
    const-string v7, "Likes Total"

    .line 112
    .line 113
    const-string v8, "Like Post"

    .line 114
    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v8}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v7}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    const-string v4, "official favorite"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v6, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    move-result-object v3

    .line 134
    goto :goto_2

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-interface {v3, v8}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v7}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    const-string/jumbo v4, "wiki"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v6, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-static {p0, v3}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 163
    .line 164
    new-instance v3, Lcom/narvii/story/detail/VoteHelper;

    .line 165
    .line 166
    .line 167
    invoke-direct {v3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 168
    .line 169
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 170
    .line 171
    const-string p1, "loggingOrigin"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    new-instance v4, Lcom/narvii/item/detail/ItemDetailFragment$10;

    .line 184
    .line 185
    .line 186
    invoke-direct {v4, p0, p3, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$10;-><init>(Lcom/narvii/item/detail/ItemDetailFragment;ZLcom/narvii/model/Item;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v0, p1, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 190
    .line 191
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->headerLayout:Lcom/narvii/item/detail/HeaderLayout;

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2}, Lcom/narvii/item/detail/HeaderLayout;->setVoting(Z)V

    .line 197
    .line 198
    :cond_6
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 199
    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    .line 204
    :cond_7
    return-void
.end method
