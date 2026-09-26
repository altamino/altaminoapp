.class public Lcom/narvii/modulization/page/PageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PAGE_BEST_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/best"

.field public static final PAGE_BLOG_CATEGORY_URI:Ljava/lang/String; = "ndc://blog-category/"

.field public static final PAGE_BLOG_URI:Ljava/lang/String; = "ndc://blogs"

.field public static final PAGE_CATALOG_URI:Ljava/lang/String; = "ndc://catalog"

.field public static final PAGE_CHAT_THREAD_URI:Ljava/lang/String; = "ndc://chat-thread/"

.field public static final PAGE_EXTERNAL_POSTS_URI:Ljava/lang/String; = "ndc://external-posts"

.field public static final PAGE_FEATURED_URI:Ljava/lang/String; = "ndc://featured"

.field public static final PAGE_FOLLOWING_FEED_URI:Ljava/lang/String; = "ndc://following-feed"

.field public static final PAGE_GUIDELINES_URI:Ljava/lang/String; = "ndc://guidelines"

.field public static final PAGE_HOME_URI:Ljava/lang/String; = "ndc://default"

.field public static final PAGE_IMAGE_POST_URI:Ljava/lang/String; = "ndc://image-posts"

.field public static final PAGE_LATEST_FEED_URI:Ljava/lang/String; = "ndc://latest-posts"

.field public static final PAGE_LATEST_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/latest"

.field public static final PAGE_LEADERBOARDS_URI:Ljava/lang/String; = "ndc://leaderboards"

.field public static final PAGE_LINK_POST_URI:Ljava/lang/String; = "ndc://link-posts"

.field public static final PAGE_MY_CHAT_URI:Ljava/lang/String; = "ndc://my-chats"

.field public static final PAGE_POLL_URI:Ljava/lang/String; = "ndc://polls"

.field public static final PAGE_PUBLIC_CHATROOMS_URI:Ljava/lang/String; = "ndc://public-chats"

.field public static final PAGE_QUESTION_URI:Ljava/lang/String; = "ndc://questions"

.field public static final PAGE_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes"

.field public static final PAGE_RECOMMENDED_URI:Ljava/lang/String; = "ndc://recommended-posts"

.field public static final PAGE_SHARED_FOLDER_ALBUMS_URI:Ljava/lang/String; = "ndc://shared-folder/albums"

.field public static final PAGE_SHARED_FOLDER_LATEST_PHOTOS_URI:Ljava/lang/String; = "ndc://shared-folder/photos"

.field public static final PAGE_SHARED_FOLDER_URI:Ljava/lang/String; = "ndc://shared-folder"

.field public static final PAGE_STORIES_URI:Ljava/lang/String; = "ndc://stories"

.field public static final PAGE_TOPIC_CATEGORIES_URI:Ljava/lang/String; = "ndc://blog-categories"

.field public static final PAGE_TRENDING_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/trending"

.field public static final PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

.field public static final PAGE_URL:Lcom/narvii/modulization/page/PageItem;

.field public static pageItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/modulization/page/PageItem;",
            ">;"
        }
    .end annotation
.end field

.field public static pagesNeedSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/modulization/page/PageItem;

    .line 17
    .line 18
    sget v1, Lcom/narvii/lib/R$color;->page_guidelines:I

    .line 19
    .line 20
    sget v2, Lcom/narvii/lib/R$drawable;->ic_page_guidelines:I

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/modulization/page/PageItem;

    .line 29
    .line 30
    sget v4, Lcom/narvii/lib/R$color;->page_url:I

    .line 31
    .line 32
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_url:I

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v3, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 36
    .line 37
    sput-object v0, Lcom/narvii/modulization/page/PageManager;->PAGE_URL:Lcom/narvii/modulization/page/PageItem;

    .line 38
    .line 39
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v4, "ndc://following-feed"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v5, "ndc://my-chats"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 56
    .line 57
    new-instance v6, Lcom/narvii/modulization/page/PageItem;

    .line 58
    .line 59
    sget v7, Lcom/narvii/lib/R$string;->page_home:I

    .line 60
    .line 61
    sget v8, Lcom/narvii/lib/R$color;->page_home:I

    .line 62
    .line 63
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_home:I

    .line 64
    .line 65
    .line 66
    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v7, "ndc://default"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 75
    .line 76
    new-instance v6, Lcom/narvii/modulization/page/PageItem;

    .line 77
    .line 78
    sget v7, Lcom/narvii/lib/R$string;->page_latest_feed:I

    .line 79
    .line 80
    sget v8, Lcom/narvii/lib/R$color;->page_latest_feed:I

    .line 81
    .line 82
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_latest_feed:I

    .line 83
    .line 84
    .line 85
    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v7, "ndc://latest-posts"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 94
    .line 95
    new-instance v6, Lcom/narvii/modulization/page/PageItem;

    .line 96
    .line 97
    sget v7, Lcom/narvii/lib/R$string;->recommended:I

    .line 98
    .line 99
    sget v8, Lcom/narvii/lib/R$color;->page_recommended_feed:I

    .line 100
    .line 101
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_recommended_feed:I

    .line 102
    .line 103
    .line 104
    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v7, "ndc://recommended-posts"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 113
    .line 114
    new-instance v6, Lcom/narvii/modulization/page/PageItem;

    .line 115
    .line 116
    sget v7, Lcom/narvii/lib/R$string;->page_following_feed:I

    .line 117
    .line 118
    sget v8, Lcom/narvii/lib/R$color;->page_following_feed:I

    .line 119
    .line 120
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_following_feed:I

    .line 121
    .line 122
    .line 123
    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 129
    .line 130
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 131
    .line 132
    sget v6, Lcom/narvii/lib/R$string;->page_public_chatroom:I

    .line 133
    .line 134
    sget v7, Lcom/narvii/lib/R$color;->chat_theme_color:I

    .line 135
    .line 136
    sget v8, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    .line 137
    .line 138
    .line 139
    invoke-direct {v4, v6, v7, v8}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v6, "ndc://public-chats"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 148
    .line 149
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 150
    .line 151
    sget v6, Lcom/narvii/lib/R$string;->page_my_chat:I

    .line 152
    .line 153
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_my_chat:I

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v6, v7, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 162
    .line 163
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 164
    .line 165
    sget v5, Lcom/narvii/lib/R$string;->page_leaderboards:I

    .line 166
    .line 167
    sget v6, Lcom/narvii/lib/R$color;->page_leaderboards:I

    .line 168
    .line 169
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_leaderboards:I

    .line 170
    .line 171
    .line 172
    invoke-direct {v4, v5, v6, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 173
    .line 174
    .line 175
    const-string/jumbo v5, "ndc://leaderboards"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 181
    .line 182
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 183
    .line 184
    sget v5, Lcom/narvii/lib/R$string;->post_categories:I

    .line 185
    .line 186
    sget v6, Lcom/narvii/lib/R$color;->page_topic_category:I

    .line 187
    .line 188
    sget v9, Lcom/narvii/lib/R$drawable;->ic_page_topic_category:I

    .line 189
    .line 190
    .line 191
    invoke-direct {v4, v5, v6, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 192
    .line 193
    .line 194
    const-string/jumbo v5, "ndc://blog-categories"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 200
    .line 201
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 202
    .line 203
    sget v5, Lcom/narvii/lib/R$string;->page_image_post:I

    .line 204
    .line 205
    sget v10, Lcom/narvii/lib/R$color;->page_image_post:I

    .line 206
    .line 207
    sget v11, Lcom/narvii/lib/R$drawable;->ic_page_image_post:I

    .line 208
    .line 209
    .line 210
    invoke-direct {v4, v5, v10, v11}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v5, "ndc://image-posts"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 219
    .line 220
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 221
    .line 222
    sget v5, Lcom/narvii/lib/R$string;->page_blog:I

    .line 223
    .line 224
    sget v10, Lcom/narvii/lib/R$color;->page_blog:I

    .line 225
    .line 226
    sget v11, Lcom/narvii/lib/R$drawable;->ic_page_blog:I

    .line 227
    .line 228
    .line 229
    invoke-direct {v4, v5, v10, v11}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo v5, "ndc://blogs"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 238
    .line 239
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 240
    .line 241
    sget v5, Lcom/narvii/lib/R$string;->page_best_quizzes:I

    .line 242
    .line 243
    sget v12, Lcom/narvii/lib/R$color;->page_quizzes:I

    .line 244
    .line 245
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    .line 246
    .line 247
    .line 248
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 249
    .line 250
    .line 251
    const-string/jumbo v5, "ndc://quizzes/best"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 257
    .line 258
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 259
    .line 260
    sget v5, Lcom/narvii/lib/R$string;->page_trending_quizzes:I

    .line 261
    .line 262
    .line 263
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 264
    .line 265
    .line 266
    const-string/jumbo v5, "ndc://quizzes/trending"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 272
    .line 273
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 274
    .line 275
    sget v5, Lcom/narvii/lib/R$string;->page_latest_quizzes:I

    .line 276
    .line 277
    .line 278
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 279
    .line 280
    .line 281
    const-string/jumbo v5, "ndc://quizzes/latest"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 287
    .line 288
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 289
    .line 290
    sget v5, Lcom/narvii/lib/R$string;->page_quizzes:I

    .line 291
    .line 292
    .line 293
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 294
    .line 295
    .line 296
    const-string/jumbo v5, "ndc://quizzes"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 302
    .line 303
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 304
    .line 305
    sget v5, Lcom/narvii/lib/R$string;->albums:I

    .line 306
    .line 307
    sget v12, Lcom/narvii/lib/R$color;->page_shared_folder:I

    .line 308
    .line 309
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_shared_folder:I

    .line 310
    .line 311
    .line 312
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 313
    .line 314
    .line 315
    const-string/jumbo v5, "ndc://shared-folder/albums"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 321
    .line 322
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 323
    .line 324
    sget v5, Lcom/narvii/lib/R$string;->all_photos:I

    .line 325
    .line 326
    .line 327
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 328
    .line 329
    .line 330
    const-string/jumbo v5, "ndc://shared-folder/photos"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 336
    .line 337
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 338
    .line 339
    sget v5, Lcom/narvii/lib/R$string;->shared_folder:I

    .line 340
    .line 341
    .line 342
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 343
    .line 344
    .line 345
    const-string/jumbo v5, "ndc://shared-folder"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 351
    .line 352
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 353
    .line 354
    sget v5, Lcom/narvii/lib/R$string;->page_link_post:I

    .line 355
    .line 356
    sget v12, Lcom/narvii/lib/R$color;->page_link_post:I

    .line 357
    .line 358
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_link_posts:I

    .line 359
    .line 360
    .line 361
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 362
    .line 363
    .line 364
    const-string/jumbo v5, "ndc://link-posts"

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 370
    .line 371
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 372
    .line 373
    sget v5, Lcom/narvii/lib/R$string;->page_poll:I

    .line 374
    .line 375
    sget v12, Lcom/narvii/lib/R$color;->page_poll:I

    .line 376
    .line 377
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_poll:I

    .line 378
    .line 379
    .line 380
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 381
    .line 382
    .line 383
    const-string/jumbo v5, "ndc://polls"

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 389
    .line 390
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 391
    .line 392
    sget v5, Lcom/narvii/lib/R$string;->page_featured:I

    .line 393
    .line 394
    sget v12, Lcom/narvii/lib/R$color;->page_featured:I

    .line 395
    .line 396
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_featured:I

    .line 397
    .line 398
    .line 399
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 400
    .line 401
    .line 402
    const-string/jumbo v5, "ndc://featured"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 408
    .line 409
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 410
    .line 411
    sget v5, Lcom/narvii/lib/R$string;->page_question:I

    .line 412
    .line 413
    sget v12, Lcom/narvii/lib/R$color;->page_question:I

    .line 414
    .line 415
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_questions:I

    .line 416
    .line 417
    .line 418
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 419
    .line 420
    .line 421
    const-string/jumbo v5, "ndc://questions"

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 427
    .line 428
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 429
    .line 430
    sget v5, Lcom/narvii/lib/R$string;->page_story:I

    .line 431
    .line 432
    sget v12, Lcom/narvii/lib/R$color;->page_story:I

    .line 433
    .line 434
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_story:I

    .line 435
    .line 436
    .line 437
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 438
    .line 439
    .line 440
    const-string/jumbo v5, "ndc://stories"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 446
    .line 447
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 448
    .line 449
    sget v5, Lcom/narvii/lib/R$string;->page_wiki:I

    .line 450
    .line 451
    sget v12, Lcom/narvii/lib/R$color;->page_wiki:I

    .line 452
    .line 453
    sget v13, Lcom/narvii/lib/R$drawable;->ic_page_wiki:I

    .line 454
    .line 455
    .line 456
    invoke-direct {v4, v5, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 457
    .line 458
    .line 459
    const-string/jumbo v5, "ndc://catalog"

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 465
    .line 466
    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    .line 467
    .line 468
    sget v5, Lcom/narvii/lib/R$string;->page_guidelines:I

    .line 469
    .line 470
    .line 471
    invoke-direct {v4, v5, v1, v2}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 472
    .line 473
    .line 474
    const-string/jumbo v1, "ndc://guidelines"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 480
    .line 481
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 482
    .line 483
    sget v2, Lcom/narvii/lib/R$string;->page_external_post:I

    .line 484
    .line 485
    sget v4, Lcom/narvii/lib/R$color;->page_external_post:I

    .line 486
    .line 487
    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_external_post:I

    .line 488
    .line 489
    .line 490
    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 491
    .line 492
    .line 493
    const-string/jumbo v2, "ndc://external-posts"

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 499
    .line 500
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 501
    .line 502
    .line 503
    invoke-direct {v1, v3, v10, v11}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 504
    .line 505
    .line 506
    const-string/jumbo v2, "ndc://blog/"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 512
    .line 513
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 514
    .line 515
    sget v2, Lcom/narvii/lib/R$drawable;->ic_page_wiki_entry:I

    .line 516
    .line 517
    .line 518
    invoke-direct {v1, v3, v12, v2}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 519
    .line 520
    .line 521
    const-string/jumbo v2, "ndc://item/"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 527
    .line 528
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 529
    .line 530
    sget v2, Lcom/narvii/lib/R$color;->page_object_user:I

    .line 531
    .line 532
    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_user:I

    .line 533
    .line 534
    .line 535
    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 536
    .line 537
    .line 538
    const-string/jumbo v2, "ndc://user-profile/"

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 544
    .line 545
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 546
    .line 547
    .line 548
    invoke-direct {v1, v3, v7, v8}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 549
    .line 550
    .line 551
    const-string/jumbo v2, "ndc://chat-thread/"

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 557
    .line 558
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v3, v12, v13}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 562
    .line 563
    .line 564
    const-string/jumbo v2, "ndc://item-category/"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 570
    .line 571
    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    .line 572
    .line 573
    .line 574
    invoke-direct {v1, v3, v6, v9}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    .line 575
    .line 576
    .line 577
    const-string/jumbo v2, "ndc://blog-category/"

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    const-string v0, "http://"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    const-string v0, "https://"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    check-cast p0, Lcom/narvii/modulization/page/PageItem;

    .line 67
    return-object p0

    .line 68
    .line 69
    :cond_3
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    .line 70
    return-object p0

    .line 71
    .line 72
    :cond_4
    :goto_0
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_URL:Lcom/narvii/modulization/page/PageItem;

    .line 73
    return-object p0
.end method

.method public static needSession(Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_2
    return v1
.end method
