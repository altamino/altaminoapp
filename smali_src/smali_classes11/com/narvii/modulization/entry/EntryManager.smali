.class public Lcom/narvii/modulization/entry/EntryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAT_PUBLIC_CHAT_PATH:[Ljava/lang/String;

.field public static final CHAT_PUBLIC_GO_LIVE_PATH:[Ljava/lang/String;

.field public static final ENTRY_BLOG:Ljava/lang/String; = "blog"

.field public static final ENTRY_CHAT_PUBLIC_CHATROOMS:Ljava/lang/String; = "chat_publicChat"

.field public static final ENTRY_DRAFT:Ljava/lang/String; = "draft"

.field public static final ENTRY_GO_LIVE:Ljava/lang/String; = "go_live"

.field public static final ENTRY_IMAGE_POST:Ljava/lang/String; = "image"

.field public static final ENTRY_LINK_POST:Ljava/lang/String; = "webLink"

.field public static final ENTRY_POLL:Ljava/lang/String; = "poll"

.field public static final ENTRY_POST_PUBLIC_CHATROOMS:Ljava/lang/String; = "post_publicChat"

.field public static final ENTRY_QUEATION:Ljava/lang/String; = "question"

.field public static final ENTRY_QUIZZES:Ljava/lang/String; = "quiz"

.field public static final ENTRY_WIKI:Ljava/lang/String; = "wikiEntry"

.field public static final POST_ENTRY_BLOGPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_IMAGEPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_POLLPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_PUBLIC_CHAT_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_QUESTIONPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_QUIZPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_WEB_LINKPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_WIKI_ENTRYPOST_PATH:[Ljava/lang/String;

.field public static entryItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/modulization/entry/EntryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static entryPathHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cid:I

.field public communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "post"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "postType"

    .line 21
    .line 22
    const-string v3, "image"

    .line 23
    .line 24
    .line 25
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    sput-object v4, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_IMAGEPOST_PATH:[Ljava/lang/String;

    .line 29
    .line 30
    const-string v5, "blog"

    .line 31
    .line 32
    .line 33
    filled-new-array {v1, v2, v5}, [Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    sput-object v6, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_BLOGPOST_PATH:[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v7, "quiz"

    .line 40
    .line 41
    .line 42
    filled-new-array {v1, v2, v7}, [Ljava/lang/String;

    .line 43
    move-result-object v8

    .line 44
    .line 45
    sput-object v8, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUIZPOST_PATH:[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v9, "question"

    .line 49
    .line 50
    .line 51
    filled-new-array {v1, v2, v9}, [Ljava/lang/String;

    .line 52
    move-result-object v10

    .line 53
    .line 54
    sput-object v10, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUESTIONPOST_PATH:[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v11, "webLink"

    .line 58
    .line 59
    .line 60
    filled-new-array {v1, v2, v11}, [Ljava/lang/String;

    .line 61
    move-result-object v12

    .line 62
    .line 63
    sput-object v12, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WEB_LINKPOST_PATH:[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v13, "poll"

    .line 67
    .line 68
    .line 69
    filled-new-array {v1, v2, v13}, [Ljava/lang/String;

    .line 70
    move-result-object v14

    .line 71
    .line 72
    sput-object v14, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_POLLPOST_PATH:[Ljava/lang/String;

    .line 73
    .line 74
    const-string v15, "catalogEntry"

    .line 75
    .line 76
    .line 77
    filled-new-array {v1, v2, v15}, [Ljava/lang/String;

    .line 78
    move-result-object v15

    .line 79
    .line 80
    sput-object v15, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WIKI_ENTRYPOST_PATH:[Ljava/lang/String;

    .line 81
    .line 82
    move-object/from16 v16, v15

    .line 83
    .line 84
    .line 85
    const-string/jumbo v15, "publicChatRooms"

    .line 86
    .line 87
    .line 88
    filled-new-array {v1, v2, v15}, [Ljava/lang/String;

    .line 89
    move-result-object v15

    .line 90
    .line 91
    sput-object v15, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v17, v9

    .line 94
    .line 95
    const-string v9, "chat"

    .line 96
    .line 97
    move-object/from16 v18, v10

    .line 98
    .line 99
    .line 100
    const-string/jumbo v10, "publicChat"

    .line 101
    .line 102
    .line 103
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    sput-object v9, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    .line 107
    .line 108
    const-string v10, "liveMode"

    .line 109
    .line 110
    .line 111
    filled-new-array {v1, v2, v10}, [Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_GO_LIVE_PATH:[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v2, "post_publicChat"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 148
    .line 149
    move-object/from16 v4, v17

    .line 150
    .line 151
    move-object/from16 v6, v18

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 157
    .line 158
    .line 159
    const-string/jumbo v6, "wikiEntry"

    .line 160
    .line 161
    move-object/from16 v8, v16

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 167
    .line 168
    const-string v8, "chat_publicChat"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 174
    .line 175
    const-string v9, "go_live"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 181
    .line 182
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 183
    .line 184
    sget v10, Lcom/narvii/lib/R$string;->post_type_public_chat:I

    .line 185
    .line 186
    sget v12, Lcom/narvii/lib/R$color;->chat_theme_color:I

    .line 187
    .line 188
    sget v14, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    .line 189
    .line 190
    sget v15, Lcom/narvii/lib/R$string;->compose_hint_chat:I

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v10, v12, v14, v15}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 199
    .line 200
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v10, v12, v14, v15}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 209
    .line 210
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 211
    .line 212
    sget v2, Lcom/narvii/lib/R$string;->chat_go_live:I

    .line 213
    .line 214
    sget v8, Lcom/narvii/lib/R$color;->go_live_theme_color:I

    .line 215
    .line 216
    sget v10, Lcom/narvii/lib/R$drawable;->ic_chat_go_live:I

    .line 217
    .line 218
    sget v12, Lcom/narvii/lib/R$string;->_empty:I

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v2, v8, v10, v12}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 227
    .line 228
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 229
    .line 230
    sget v2, Lcom/narvii/lib/R$string;->post_type_image_post:I

    .line 231
    .line 232
    sget v8, Lcom/narvii/lib/R$color;->page_image_post:I

    .line 233
    .line 234
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_image_post:I

    .line 235
    .line 236
    sget v10, Lcom/narvii/lib/R$string;->compose_hint_image_post:I

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, v2, v8, v9, v10}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 245
    .line 246
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 247
    .line 248
    sget v2, Lcom/narvii/lib/R$string;->post_type_blog:I

    .line 249
    .line 250
    sget v3, Lcom/narvii/lib/R$color;->page_blog:I

    .line 251
    .line 252
    sget v8, Lcom/narvii/lib/R$drawable;->ic_page_blog:I

    .line 253
    .line 254
    sget v9, Lcom/narvii/lib/R$string;->compose_hint_blog:I

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v2, v3, v8, v9}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 263
    .line 264
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 265
    .line 266
    sget v2, Lcom/narvii/lib/R$string;->post_type_quiz:I

    .line 267
    .line 268
    sget v3, Lcom/narvii/lib/R$color;->page_quizzes:I

    .line 269
    .line 270
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    .line 271
    .line 272
    sget v8, Lcom/narvii/lib/R$string;->compose_hint_quiz:I

    .line 273
    .line 274
    .line 275
    invoke-direct {v1, v2, v3, v5, v8}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 281
    .line 282
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 283
    .line 284
    sget v2, Lcom/narvii/lib/R$string;->post_type_link:I

    .line 285
    .line 286
    sget v3, Lcom/narvii/lib/R$color;->page_link_post:I

    .line 287
    .line 288
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_link_posts:I

    .line 289
    .line 290
    sget v7, Lcom/narvii/lib/R$string;->compose_hint_link:I

    .line 291
    .line 292
    .line 293
    invoke-direct {v1, v2, v3, v5, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 299
    .line 300
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 301
    .line 302
    sget v2, Lcom/narvii/lib/R$string;->post_type_poll:I

    .line 303
    .line 304
    sget v3, Lcom/narvii/lib/R$color;->page_poll:I

    .line 305
    .line 306
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_poll:I

    .line 307
    .line 308
    sget v7, Lcom/narvii/lib/R$string;->compose_hint_poll:I

    .line 309
    .line 310
    .line 311
    invoke-direct {v1, v2, v3, v5, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 317
    .line 318
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 319
    .line 320
    sget v2, Lcom/narvii/lib/R$string;->post_type_question:I

    .line 321
    .line 322
    sget v3, Lcom/narvii/lib/R$color;->page_question:I

    .line 323
    .line 324
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_questions:I

    .line 325
    .line 326
    sget v7, Lcom/narvii/lib/R$string;->compose_hint_question:I

    .line 327
    .line 328
    .line 329
    invoke-direct {v1, v2, v3, v5, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 335
    .line 336
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 337
    .line 338
    sget v2, Lcom/narvii/lib/R$string;->post_type_wiki_entry:I

    .line 339
    .line 340
    sget v3, Lcom/narvii/lib/R$color;->page_wiki:I

    .line 341
    .line 342
    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_wiki:I

    .line 343
    .line 344
    sget v5, Lcom/narvii/lib/R$string;->compose_hint_item:I

    .line 345
    .line 346
    .line 347
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 353
    .line 354
    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    .line 355
    .line 356
    sget v2, Lcom/narvii/lib/R$string;->compose_draft:I

    .line 357
    .line 358
    sget v3, Lcom/narvii/lib/R$color;->page_draft:I

    .line 359
    .line 360
    sget v4, Lcom/narvii/lib/R$drawable;->ic_draft:I

    .line 361
    const/4 v5, 0x0

    .line 362
    .line 363
    .line 364
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    .line 365
    .line 366
    const-string v2, "draft"

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/modulization/entry/EntryManager;->cid:I

    .line 4
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v1, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    iput p2, p0, Lcom/narvii/modulization/entry/EntryManager;->cid:I

    .line 6
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public static getEntryItem(Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryItem;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/modulization/entry/EntryItem;

    .line 9
    return-object p0
.end method

.method public static getEntryPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, [Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method private varargs isEntryEnabled(Lcom/narvii/model/User;[Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 3
    :cond_1
    iget-boolean v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->enabled:Z

    if-nez v2, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v0

    .line 5
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/modulization/entry/EntrySetting;->getPrivilegeType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean p1, p2, Lcom/narvii/modulization/entry/EntrySetting;->enabled:Z

    return p1
.end method


# virtual methods
.method public canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    const-string v2, "draft"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_1
    sget-object v2, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_2
    iget-object v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_3
    iget v2, p1, Lcom/narvii/model/User;->level:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 53
    move-result p1

    .line 54
    .line 55
    iget-object v4, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 56
    .line 57
    iget v5, v4, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 58
    const/4 v6, 0x5

    .line 59
    .line 60
    if-ne v5, v3, :cond_4

    .line 61
    .line 62
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    const/4 v7, 0x3

    .line 65
    .line 66
    if-ne v5, v7, :cond_5

    .line 67
    .line 68
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/4 v7, 0x2

    .line 71
    .line 72
    if-ne v5, v7, :cond_8

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    iget p1, v4, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 77
    .line 78
    if-lt v2, p1, :cond_6

    .line 79
    goto :goto_0

    .line 80
    :cond_6
    move p1, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_7
    :goto_0
    move p1, v3

    .line 83
    .line 84
    :goto_1
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 85
    goto :goto_4

    .line 86
    :cond_8
    const/4 p1, 0x4

    .line 87
    .line 88
    if-ne v5, p1, :cond_9

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 91
    .line 92
    const-string v2, "membership"

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 102
    move-result p1

    .line 103
    .line 104
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 105
    .line 106
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->needMembership:Z

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :cond_9
    if-ne v5, v6, :cond_c

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 112
    .line 113
    const-string v2, "account"

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 122
    .line 123
    const-string v4, "config"

    .line 124
    .line 125
    .line 126
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    if-eqz p1, :cond_b

    .line 140
    .line 141
    iget p1, p1, Lcom/narvii/model/User;->membersCount:I

    .line 142
    .line 143
    iget-object v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 144
    .line 145
    iget v2, v2, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 146
    .line 147
    if-lt p1, v2, :cond_a

    .line 148
    goto :goto_2

    .line 149
    :cond_a
    move p1, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_b
    :goto_2
    move p1, v3

    .line 152
    .line 153
    :goto_3
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 154
    .line 155
    :cond_c
    :goto_4
    iget-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 156
    .line 157
    if-nez p1, :cond_e

    .line 158
    .line 159
    iget-object p1, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 160
    .line 161
    iget v2, p1, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 162
    .line 163
    iput v2, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->minLevel:I

    .line 164
    .line 165
    if-lez v2, :cond_e

    .line 166
    .line 167
    iget p1, p1, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 168
    .line 169
    if-ne p1, v6, :cond_d

    .line 170
    .line 171
    sget p1, Lcom/narvii/lib/R$string;->chat_entry_limit:I

    .line 172
    goto :goto_5

    .line 173
    .line 174
    :cond_d
    sget p1, Lcom/narvii/lib/R$string;->post_entry_limit:I

    .line 175
    .line 176
    :goto_5
    iget-object v2, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 177
    .line 178
    .line 179
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    new-array v3, v3, [Ljava/lang/Object;

    .line 183
    .line 184
    iget-object p2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 185
    .line 186
    iget p2, p2, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 187
    .line 188
    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object p2

    .line 191
    .line 192
    aput-object p2, v3, v1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    iput-object p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->errorString:Ljava/lang/String;

    .line 199
    :cond_e
    return-object v0
.end method

.method public canUserChat(Lcom/narvii/model/User;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "go_live"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "post_publicChat"

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/modulization/entry/EntryManager;->canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/modulization/entry/EntrySetting;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/narvii/modulization/entry/EntrySetting;-><init>()V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 16
    .line 17
    const-class v2, Lcom/narvii/modulization/entry/EntrySetting;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/modulization/entry/EntrySetting;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v0, p1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    return-object v0
.end method

.method public isEntryEnabled(Lcom/narvii/model/User;Ljava/lang/String;)Z
    .locals 3

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "draft"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 10
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/narvii/modulization/entry/EntryManager;->isEntryEnabled(Lcom/narvii/model/User;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
