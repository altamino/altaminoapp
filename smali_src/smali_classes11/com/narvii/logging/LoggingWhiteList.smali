.class public final Lcom/narvii/logging/LoggingWhiteList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "getContentLanguage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ADD_HTTP_METHOD_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final B:Ljava/lang/String; = "getAppearanceLanguage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final C:Ljava/lang/String; = "checkMembership"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final D:Ljava/lang/String; = "checkDeviceStatus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/logging/LoggingWhiteList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MONIZTOR_HASHSET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PERSIONA:Ljava/lang/String; = "persona"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static patternHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/LoggingWhiteList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/logging/LoggingWhiteList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->INSTANCE:Lcom/narvii/logging/LoggingWhiteList;

    .line 8
    .line 9
    const/16 v0, 0x1c

    .line 10
    .line 11
    new-array v0, v0, [Lw7/u;

    .line 12
    .line 13
    const-string v1, "/community/trending"

    .line 14
    .line 15
    const-string v2, "getTrendingCommunity"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    const-string v1, "/community/search"

    .line 25
    .line 26
    const-string v2, "searchCommunity"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    const-string v1, "/post/search"

    .line 36
    .line 37
    const-string v2, "searchPost"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    const-string v1, "/chat/thread/explore/search"

    .line 47
    .line 48
    const-string v2, "searchChat"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x3

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    const-string v1, "/user-profile/search"

    .line 58
    .line 59
    const-string v2, "searchUser"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x4

    .line 65
    .line 66
    aput-object v1, v0, v2

    .line 67
    .line 68
    const-string v1, "/api/v1/g/s/community/suggested"

    .line 69
    .line 70
    const-string v2, "recommendCommunity"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x5

    .line 76
    .line 77
    aput-object v1, v0, v2

    .line 78
    .line 79
    const-string v1, "/api/v1/g/s/community/joined"

    .line 80
    .line 81
    const-string v2, "getJoinedCommunity"

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x6

    .line 87
    .line 88
    aput-object v1, v0, v2

    .line 89
    .line 90
    const-string v1, "/g/s/community-collection/view"

    .line 91
    .line 92
    const-string v2, "fetchCommunityCollectionView"

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 96
    move-result-object v1

    .line 97
    const/4 v2, 0x7

    .line 98
    .line 99
    aput-object v1, v0, v2

    .line 100
    .line 101
    const-string v1, "/g/s/community-collection/.*/communities"

    .line 102
    .line 103
    const-string v2, "fetchCommunityCollectionCom"

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    const/16 v2, 0x8

    .line 110
    .line 111
    aput-object v1, v0, v2

    .line 112
    .line 113
    const-string v1, "/s/community/join"

    .line 114
    .line 115
    const-string v2, "joinCommunity"

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    const/16 v2, 0x9

    .line 122
    .line 123
    aput-object v1, v0, v2

    .line 124
    .line 125
    const-string v1, "topic/suggest-topics"

    .line 126
    .line 127
    const-string v2, "suggestTopic"

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    const/16 v4, 0xa

    .line 134
    .line 135
    aput-object v3, v0, v4

    .line 136
    .line 137
    const-string v3, "/topic/0/feed/story"

    .line 138
    .line 139
    const-string v4, "recommendStory"

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    const/16 v4, 0xb

    .line 146
    .line 147
    aput-object v3, v0, v4

    .line 148
    .line 149
    const-string v3, "/api/v1/g/s/topic/.*/metadata"

    .line 150
    .line 151
    const-string v4, "fetchTopicHeader"

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    const/16 v4, 0xc

    .line 158
    .line 159
    aput-object v3, v0, v4

    .line 160
    .line 161
    const-string v3, "/topic/featured-topics"

    .line 162
    .line 163
    const-string v4, "fetchFeaturedTopic"

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    const/16 v4, 0xd

    .line 170
    .line 171
    aput-object v3, v0, v4

    .line 172
    .line 173
    const/16 v3, 0xe

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    aput-object v1, v0, v3

    .line 180
    .line 181
    const-string v1, "topic/.*/feed/story/explore"

    .line 182
    .line 183
    const-string v2, "fetchTopicStatic"

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    const/16 v2, 0xf

    .line 190
    .line 191
    aput-object v1, v0, v2

    .line 192
    .line 193
    const-string v1, "topic/.*/feed/story/latest"

    .line 194
    .line 195
    const-string v2, "fetchTopicLatest"

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    const/16 v2, 0x10

    .line 202
    .line 203
    aput-object v1, v0, v2

    .line 204
    .line 205
    const-string v1, "topic/.*/feed/story/popular"

    .line 206
    .line 207
    const-string v2, "fetchTopicPopular"

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 211
    move-result-object v1

    .line 212
    .line 213
    const/16 v3, 0x11

    .line 214
    .line 215
    aput-object v1, v0, v3

    .line 216
    .line 217
    const-string v1, "topic/.*/feed/story/recommendation"

    .line 218
    .line 219
    const-string v3, "fetchTopicRecommend"

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    const/16 v3, 0x12

    .line 226
    .line 227
    aput-object v1, v0, v3

    .line 228
    .line 229
    const-string v1, "/x.*/s/feed/story"

    .line 230
    .line 231
    const-string v3, "fetchStoryInCommunity"

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    const/16 v3, 0x13

    .line 238
    .line 239
    aput-object v1, v0, v3

    .line 240
    .line 241
    const-string v1, "/api/v1/g/s/persona/interest"

    .line 242
    .line 243
    const-string v3, "persona"

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    const/16 v4, 0x14

    .line 250
    .line 251
    aput-object v1, v0, v4

    .line 252
    .line 253
    const-string v1, "client-config/content-language-settings"

    .line 254
    .line 255
    const-string v4, "getContentLanguage"

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 259
    move-result-object v1

    .line 260
    .line 261
    const/16 v5, 0x15

    .line 262
    .line 263
    aput-object v1, v0, v5

    .line 264
    .line 265
    const-string v1, "/client-config/appearance-settings"

    .line 266
    .line 267
    const-string v5, "getAppearanceLanguage"

    .line 268
    .line 269
    .line 270
    invoke-static {v1, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    const/16 v6, 0x16

    .line 274
    .line 275
    aput-object v1, v0, v6

    .line 276
    .line 277
    const-string v1, "/membership$"

    .line 278
    .line 279
    const-string v6, "checkMembership"

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    const/16 v7, 0x17

    .line 286
    .line 287
    aput-object v1, v0, v7

    .line 288
    .line 289
    const-string v1, "/device$"

    .line 290
    .line 291
    const-string v7, "checkDeviceStatus"

    .line 292
    .line 293
    .line 294
    invoke-static {v1, v7}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    const/16 v8, 0x18

    .line 298
    .line 299
    aput-object v1, v0, v8

    .line 300
    .line 301
    const-string v1, "/topic/.*/feed/story"

    .line 302
    .line 303
    .line 304
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 305
    move-result-object v1

    .line 306
    .line 307
    const/16 v2, 0x19

    .line 308
    .line 309
    aput-object v1, v0, v2

    .line 310
    .line 311
    const-string v1, "/feed/story"

    .line 312
    .line 313
    const-string v2, "fetchStory"

    .line 314
    .line 315
    .line 316
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    const/16 v2, 0x1a

    .line 320
    .line 321
    aput-object v1, v0, v2

    .line 322
    .line 323
    const-string v1, "/persona/bookmarked-topics"

    .line 324
    .line 325
    const-string v2, "fetchBookmarkTopics"

    .line 326
    .line 327
    .line 328
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    const/16 v2, 0x1b

    .line 332
    .line 333
    aput-object v1, v0, v2

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lw7/u;)Ljava/util/LinkedHashMap;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;

    .line 340
    .line 341
    .line 342
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    .line 345
    .line 346
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 347
    move-result-object v0

    .line 348
    .line 349
    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->MONIZTOR_HASHSET:Ljava/util/Set;

    .line 350
    .line 351
    .line 352
    invoke-static {v3}, Lkotlin/collections/w0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 353
    move-result-object v0

    .line 354
    .line 355
    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->ADD_HTTP_METHOD_SET:Ljava/util/Set;

    .line 356
    .line 357
    new-instance v0, Ljava/util/HashMap;

    .line 358
    .line 359
    .line 360
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    .line 362
    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    .line 363
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/regex/Pattern;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public final getApiRequestSemantic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lcom/narvii/logging/LoggingWhiteList;->API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v3}, Lcom/narvii/logging/LoggingWhiteList;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    sget-object p1, Lcom/narvii/logging/LoggingWhiteList;->ADD_HTTP_METHOD_SET:Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const/16 v0, 0x5f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    :cond_2
    return-object v2

    .line 82
    :cond_3
    return-object v0
.end method

.method public final isMonitorRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "semantic"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/LoggingWhiteList;->MONIZTOR_HASHSET:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
