.class public Lcom/narvii/services/DraftManagerProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/post/DraftManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V
    .locals 11

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    const-string v1, "post"

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-eqz v2, :cond_b

    .line 11
    .line 12
    const-string v2, "convert"

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    move-result v4

    .line 18
    .line 19
    if-nez v4, :cond_b

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    const-class v7, Lcom/narvii/model/Media;

    .line 36
    .line 37
    const-string v8, "http://"

    .line 38
    .line 39
    const-string v9, "mediaList"

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 49
    .line 50
    instance-of v10, v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 51
    .line 52
    if-eqz v10, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    .line 59
    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 64
    move-result v7

    .line 65
    .line 66
    if-lez v7, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    check-cast v7, Lcom/narvii/model/Media;

    .line 73
    .line 74
    iget-object v7, v7, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    move-result v7

    .line 81
    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    const-string v7, "icon"

    .line 85
    .line 86
    .line 87
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v10

    .line 89
    .line 90
    check-cast v10, Lcom/narvii/model/Media;

    .line 91
    .line 92
    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v7, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p2

    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    .line 102
    :cond_0
    :goto_0
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v7

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v10

    .line 111
    .line 112
    if-eqz v10, :cond_2

    .line 113
    .line 114
    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v10

    .line 117
    .line 118
    check-cast v10, Lcom/narvii/model/Media;

    .line 119
    .line 120
    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    move-result v10

    .line 125
    .line 126
    if-nez v10, :cond_1

    .line 127
    .line 128
    .line 129
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 134
    move-result v7

    .line 135
    .line 136
    if-lez v7, :cond_3

    .line 137
    .line 138
    sget-object v7, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 142
    move-result-object v6

    .line 143
    .line 144
    check-cast v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v9, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    const-class v6, Lcom/narvii/item/post/ItemPost;

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Lcom/narvii/post/PostObject;

    .line 160
    goto :goto_3

    .line 161
    .line 162
    .line 163
    :cond_4
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 168
    .line 169
    instance-of v10, v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 170
    .line 171
    if-eqz v10, :cond_7

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 176
    .line 177
    .line 178
    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 179
    move-result-object v6

    .line 180
    .line 181
    .line 182
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v7

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v10

    .line 188
    .line 189
    if-eqz v10, :cond_6

    .line 190
    .line 191
    .line 192
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v10

    .line 194
    .line 195
    check-cast v10, Lcom/narvii/model/Media;

    .line 196
    .line 197
    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    move-result v10

    .line 202
    .line 203
    if-nez v10, :cond_5

    .line 204
    .line 205
    .line 206
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 207
    goto :goto_2

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 211
    move-result v7

    .line 212
    .line 213
    if-lez v7, :cond_7

    .line 214
    .line 215
    sget-object v7, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 219
    move-result-object v6

    .line 220
    .line 221
    check-cast v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v9, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 225
    .line 226
    .line 227
    :cond_7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    const-class v6, Lcom/narvii/blog/post/BlogPost;

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    check-cast v1, Lcom/narvii/post/PostObject;

    .line 237
    .line 238
    :goto_3
    const-string v6, "id"

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v6

    .line 243
    .line 244
    .line 245
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    move-result v7

    .line 247
    .line 248
    if-nez v7, :cond_a

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 252
    move-result-object v5

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v0

    .line 257
    .line 258
    if-eqz v0, :cond_9

    .line 259
    .line 260
    .line 261
    const-string/jumbo v0, "|"

    .line 262
    .line 263
    .line 264
    invoke-static {v6, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    const-string v6, "itemId"

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v7

    .line 272
    .line 273
    check-cast v7, Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 277
    .line 278
    .line 279
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 280
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .line 282
    const-string v7, "fork"

    .line 283
    .line 284
    if-le v6, v4, :cond_8

    .line 285
    .line 286
    .line 287
    :try_start_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object v0

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v0

    .line 293
    .line 294
    if-eqz v0, :cond_8

    .line 295
    move v3, v4

    .line 296
    .line 297
    .line 298
    :cond_8
    invoke-virtual {v5, v7, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 299
    goto :goto_4

    .line 300
    .line 301
    :cond_9
    const-string v0, "blogId"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 305
    .line 306
    .line 307
    :cond_a
    :goto_4
    invoke-virtual {p2, p1, v5, v1}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    goto :goto_6

    .line 309
    .line 310
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    const-string v1, "fail to convert old draft "

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    .line 328
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    :goto_6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 332
    move-result-object p0

    .line 333
    .line 334
    .line 335
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    move-result-object p0

    .line 337
    .line 338
    .line 339
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    :cond_b
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;
    .locals 4

    .line 2
    new-instance v0, Lcom/narvii/post/DraftManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/post/DraftManager;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "post_blog"

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "blog"

    invoke-static {v2, v3, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    const-string v2, "post_item"

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "item"

    invoke-static {v2, v3, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    const-string v2, "post_topic"

    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v1, "topic"

    invoke-static {p1, v1, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/DraftManagerProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method
