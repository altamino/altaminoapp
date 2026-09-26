.class Lcom/narvii/feed/FeedContinuousViewer$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedContinuousViewer;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->fieldNames()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, v0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "blogList"

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    const-string v2, "featuredList"

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    new-instance v3, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v3}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->d(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)V

    .line 68
    .line 69
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 75
    .line 76
    iget-boolean v3, v0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v3

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    check-cast v3, Lcom/narvii/model/Feed;

    .line 99
    .line 100
    instance-of v4, v3, Lcom/narvii/model/Blog;

    .line 101
    .line 102
    if-eqz v4, :cond_2

    .line 103
    move-object v4, v3

    .line 104
    .line 105
    check-cast v4, Lcom/narvii/model/Blog;

    .line 106
    .line 107
    iget-object v4, v4, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    move-object v3, v4

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    .line 114
    move-result v4

    .line 115
    .line 116
    if-nez v4, :cond_1

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 127
    .line 128
    new-instance v3, Lcom/narvii/util/FilterHelper;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->a(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->d(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)V

    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 148
    move-result p2

    .line 149
    .line 150
    if-eqz p2, :cond_7

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 159
    .line 160
    const-class v0, Lcom/narvii/feed/FeaturedFeed;

    .line 161
    .line 162
    .line 163
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 164
    move-result-object p2

    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v3

    .line 178
    .line 179
    if-eqz v3, :cond_6

    .line 180
    .line 181
    .line 182
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    check-cast v3, Lcom/narvii/feed/FeaturedFeed;

    .line 186
    .line 187
    iget-object v3, v3, Lcom/narvii/feed/FeaturedFeed;->refObject:Lcom/narvii/model/Feed;

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_2

    .line 192
    .line 193
    :cond_6
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 194
    .line 195
    new-instance v3, Lcom/narvii/util/FilterHelper;

    .line 196
    .line 197
    .line 198
    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->a(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    .line 199
    move-result-object v4

    .line 200
    .line 201
    .line 202
    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    .line 209
    invoke-static {p2, v0}, Lcom/narvii/feed/FeedContinuousViewer;->d(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)V

    .line 210
    goto :goto_4

    .line 211
    .line 212
    :cond_7
    const-string p2, "childrenWrapper"

    .line 213
    .line 214
    .line 215
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    if-eqz v0, :cond_8

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    const-string v3, "itemList"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    if-eqz v0, :cond_8

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 240
    move-result-object p2

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 244
    move-result-object p2

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 248
    move-result-object p2

    .line 249
    goto :goto_3

    .line 250
    .line 251
    :cond_8
    const-string p2, ""

    .line 252
    .line 253
    :goto_3
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 254
    .line 255
    .line 256
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 260
    move-result-object p2

    .line 261
    .line 262
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 263
    .line 264
    new-instance v3, Lcom/narvii/util/FilterHelper;

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->a(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    .line 268
    move-result-object v4

    .line 269
    .line 270
    .line 271
    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 275
    move-result-object p2

    .line 276
    .line 277
    .line 278
    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->d(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)V

    .line 279
    .line 280
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 281
    .line 282
    .line 283
    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 284
    move-result-object p2

    .line 285
    const/4 v0, 0x1

    .line 286
    .line 287
    const-string v3, "nextPageToken"

    .line 288
    .line 289
    const-string v4, "paging"

    .line 290
    const/4 v5, 0x0

    .line 291
    .line 292
    if-eqz p2, :cond_e

    .line 293
    .line 294
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 295
    .line 296
    .line 297
    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 298
    move-result-object p2

    .line 299
    .line 300
    .line 301
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 302
    move-result p2

    .line 303
    .line 304
    if-nez p2, :cond_a

    .line 305
    .line 306
    goto/16 :goto_5

    .line 307
    .line 308
    :cond_a
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 309
    .line 310
    iget-object p2, p2, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    .line 314
    move-result p2

    .line 315
    .line 316
    if-eqz p2, :cond_b

    .line 317
    .line 318
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 319
    .line 320
    iget-object p2, p2, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 324
    .line 325
    :cond_b
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 326
    const/4 v1, 0x0

    .line 327
    .line 328
    iput v1, p2, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    .line 329
    .line 330
    .line 331
    filled-new-array {v4}, [Ljava/lang/String;

    .line 332
    move-result-object p2

    .line 333
    .line 334
    .line 335
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    if-eqz p1, :cond_c

    .line 339
    .line 340
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 341
    .line 342
    .line 343
    filled-new-array {v3}, [Ljava/lang/String;

    .line 344
    move-result-object v2

    .line 345
    .line 346
    .line 347
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object p1

    .line 349
    .line 350
    .line 351
    invoke-static {p2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->e(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)V

    .line 352
    .line 353
    :cond_c
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 354
    .line 355
    .line 356
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->c(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/lang/String;

    .line 357
    move-result-object p1

    .line 358
    .line 359
    if-nez p1, :cond_d

    .line 360
    .line 361
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 362
    .line 363
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 364
    .line 365
    if-eqz p1, :cond_d

    .line 366
    .line 367
    .line 368
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 369
    move-result-object p1

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 373
    move-result-object p2

    .line 374
    .line 375
    const-string v2, "pagingType"

    .line 376
    .line 377
    .line 378
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 379
    move-result p2

    .line 380
    .line 381
    if-eqz p2, :cond_d

    .line 382
    .line 383
    const-string p2, "t"

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    move-result-object p1

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    move-result p1

    .line 392
    .line 393
    if-eqz p1, :cond_d

    .line 394
    .line 395
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 396
    .line 397
    iput-object v5, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 398
    .line 399
    :cond_d
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 400
    .line 401
    .line 402
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 403
    move-result-object p1

    .line 404
    .line 405
    if-eqz p1, :cond_13

    .line 406
    .line 407
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 408
    .line 409
    .line 410
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 411
    move-result-object p1

    .line 412
    .line 413
    .line 414
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 415
    move-result p1

    .line 416
    .line 417
    if-lez p1, :cond_13

    .line 418
    .line 419
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 420
    .line 421
    .line 422
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    .line 423
    move-result-object p2

    .line 424
    .line 425
    .line 426
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 427
    move-result-object p2

    .line 428
    .line 429
    check-cast p2, Lcom/narvii/model/Feed;

    .line 430
    .line 431
    .line 432
    invoke-static {p1, p2, v0}, Lcom/narvii/feed/FeedContinuousViewer;->f(Lcom/narvii/feed/FeedContinuousViewer;Lcom/narvii/model/Feed;Z)V

    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    .line 437
    :cond_e
    :goto_5
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 438
    move-result p2

    .line 439
    .line 440
    if-eqz p2, :cond_f

    .line 441
    .line 442
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 443
    .line 444
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 448
    move-result-object p1

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 452
    move-result-object p1

    .line 453
    .line 454
    const-string p2, "featured"

    .line 455
    .line 456
    const-string v1, "blog-all"

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 460
    move-result-object v4

    .line 461
    .line 462
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 463
    .line 464
    iget-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 468
    move-result-object v3

    .line 469
    const/4 v5, 0x0

    .line 470
    .line 471
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 472
    .line 473
    iget-object v6, p2, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 474
    .line 475
    const-string v7, "t"

    .line 476
    move-object v2, p1

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    move-result-object p2

    .line 481
    .line 482
    iput-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 483
    .line 484
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 485
    .line 486
    iput-boolean v0, p1, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 487
    .line 488
    .line 489
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->g(Lcom/narvii/feed/FeedContinuousViewer;)V

    .line 490
    goto :goto_7

    .line 491
    .line 492
    .line 493
    :cond_f
    filled-new-array {v4}, [Ljava/lang/String;

    .line 494
    move-result-object p2

    .line 495
    .line 496
    .line 497
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 498
    move-result-object p1

    .line 499
    .line 500
    if-eqz p1, :cond_10

    .line 501
    .line 502
    .line 503
    filled-new-array {v3}, [Ljava/lang/String;

    .line 504
    move-result-object p2

    .line 505
    .line 506
    .line 507
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 508
    move-result-object p1

    .line 509
    goto :goto_6

    .line 510
    :cond_10
    move-object p1, v5

    .line 511
    .line 512
    :goto_6
    if-nez p1, :cond_12

    .line 513
    .line 514
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 515
    .line 516
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 520
    move-result p1

    .line 521
    .line 522
    if-eqz p1, :cond_11

    .line 523
    .line 524
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 525
    .line 526
    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 527
    .line 528
    .line 529
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 530
    .line 531
    :cond_11
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 532
    .line 533
    .line 534
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->h(Lcom/narvii/feed/FeedContinuousViewer;)V

    .line 535
    goto :goto_7

    .line 536
    .line 537
    :cond_12
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 538
    .line 539
    .line 540
    invoke-static {p2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->e(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)V

    .line 541
    .line 542
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 543
    .line 544
    iget-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 548
    move-result-object p2

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1, p2, v5}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    move-result-object p2

    .line 553
    .line 554
    iput-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 555
    .line 556
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    .line 557
    .line 558
    .line 559
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->g(Lcom/narvii/feed/FeedContinuousViewer;)V

    .line 560
    :cond_13
    :goto_7
    return-void
.end method
