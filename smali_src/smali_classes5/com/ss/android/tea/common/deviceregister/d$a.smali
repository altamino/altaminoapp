.class Lcom/ss/android/tea/common/deviceregister/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/tea/common/deviceregister/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/ss/android/tea/common/deviceregister/d;


# direct methods
.method constructor <init>(Lcom/ss/android/tea/common/deviceregister/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 3
    .line 4
    const-string p1, "DeviceRegisterThread"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput p1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->a:I

    .line 11
    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->V()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/ss/android/tea/common/deviceregister/d;->b(Lcom/ss/android/tea/common/deviceregister/d;J)J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->O(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->O(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/e;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "user_agent"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_2
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    .line 64
    .line 65
    new-instance v1, Lorg/json/JSONTokener;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    :try_start_1
    const-string v1, "custom"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    new-instance v1, Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .line 96
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->X()Ljava/util/Map;

    .line 103
    move-result-object v3

    .line 104
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    .line 107
    :try_start_2
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->X()Ljava/util/Map;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v4

    .line 125
    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    check-cast v4, Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 136
    move-result v5

    .line 137
    .line 138
    if-nez v5, :cond_4

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_5
    const-string v2, "custom"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->q()Z

    .line 161
    move-result v1

    .line 162
    const/4 v2, 0x0

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->O(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/Context;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lr6/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    goto :goto_2

    .line 176
    :cond_6
    move-object v1, v2

    .line 177
    .line 178
    .line 179
    :goto_2
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 180
    move-result v3

    .line 181
    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/c;->a()Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 190
    move-result v3

    .line 191
    .line 192
    if-nez v3, :cond_8

    .line 193
    .line 194
    const-string v3, "google_aid"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    :cond_8
    const-string/jumbo v1, "user_unique_id"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    const-string v3, "device_id"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->Y()Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 218
    move-result v3

    .line 219
    .line 220
    if-nez v3, :cond_9

    .line 221
    .line 222
    .line 223
    const-string/jumbo v1, "user_unique_id"

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->Y()Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    goto :goto_3

    .line 232
    .line 233
    .line 234
    :cond_9
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 235
    move-result v1

    .line 236
    .line 237
    if-eqz v1, :cond_a

    .line 238
    .line 239
    .line 240
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 241
    move-result v1

    .line 242
    .line 243
    if-nez v1, :cond_a

    .line 244
    .line 245
    .line 246
    const-string/jumbo v1, "user_unique_id"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    goto :goto_3

    .line 251
    :catchall_0
    move-exception v1

    .line 252
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    .line 255
    :catchall_1
    :cond_a
    :goto_3
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .line 260
    const-string v2, "magic_tag"

    .line 261
    .line 262
    const-string v3, "ss_app_log"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    .line 267
    const-string v2, "header"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    .line 272
    const-string v0, "_gen_time"

    .line 273
    .line 274
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    move-result-wide v2

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 280
    const/4 v0, 0x1

    .line 281
    .line 282
    .line 283
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->s(Z)Z

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->a0()Ljava/lang/ThreadLocal;

    .line 287
    move-result-object v2

    .line 288
    .line 289
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    .line 299
    invoke-direct {p0, v1}, Lcom/ss/android/tea/common/deviceregister/d$a;->d(Ljava/lang/String;)Z

    .line 300
    move-result v1

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->c0()Ljava/lang/Object;

    .line 304
    move-result-object v2

    .line 305
    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 306
    const/4 v3, 0x0

    .line 307
    .line 308
    .line 309
    :try_start_7
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->s(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 310
    .line 311
    .line 312
    :try_start_8
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->c0()Ljava/lang/Object;

    .line 313
    move-result-object v4

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 317
    goto :goto_4

    .line 318
    :catchall_2
    move-exception v0

    .line 319
    goto :goto_5

    .line 320
    :catch_1
    move-exception v4

    .line 321
    .line 322
    .line 323
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    :goto_4
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 325
    .line 326
    .line 327
    :try_start_a
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->z(Z)Z

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/d;->a0()Ljava/lang/ThreadLocal;

    .line 331
    move-result-object v0

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 335
    .line 336
    if-nez v1, :cond_b

    .line 337
    .line 338
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 345
    .line 346
    .line 347
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 348
    move-result v0

    .line 349
    .line 350
    .line 351
    invoke-static {v1, v3, v0}, Lcom/ss/android/tea/common/deviceregister/d;->n(Lcom/ss/android/tea/common/deviceregister/d;ZZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 352
    goto :goto_7

    .line 353
    :goto_5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 354
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 355
    .line 356
    .line 357
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    :cond_b
    :goto_7
    return-void
.end method

.method static synthetic b(Lcom/ss/android/tea/common/deviceregister/d$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d$a;->a()V

    .line 4
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v2, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/e;->a()I

    .line 13
    move-result v3

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Lcom/ss/android/tea/common/deviceregister/d;->a(Lcom/ss/android/tea/common/deviceregister/d;I)I

    .line 17
    .line 18
    iget-object v2, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/ss/android/tea/common/deviceregister/d;->U(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/SharedPreferences;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v3, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->E(Lcom/ss/android/tea/common/deviceregister/d;)I

    .line 32
    move-result v3

    .line 33
    .line 34
    const-string v4, "last_config_version"

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->W(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    iget-object v4, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 53
    move-result v5

    .line 54
    .line 55
    const-string v6, "install_id"

    .line 56
    const/4 v7, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    .line 62
    const-string v9, "device_id"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v10

    .line 67
    .line 68
    const-string v11, "ssid"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 73
    .line 74
    .line 75
    invoke-static {v10}, Lcom/ss/android/tea/common/applog/y;->e(Ljava/lang/String;)Z

    .line 76
    move-result v12

    .line 77
    .line 78
    .line 79
    invoke-static {v8}, Lcom/ss/android/tea/common/applog/y;->e(Ljava/lang/String;)Z

    .line 80
    move-result v13

    .line 81
    .line 82
    if-nez v12, :cond_1

    .line 83
    .line 84
    if-nez v13, :cond_1

    .line 85
    .line 86
    iget-object v14, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 87
    move v15, v5

    .line 88
    .line 89
    move-object/from16 v16, v6

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v5

    .line 94
    .line 95
    .line 96
    invoke-static {v14, v5, v6}, Lcom/ss/android/tea/common/deviceregister/d;->A(Lcom/ss/android/tea/common/deviceregister/d;J)J

    .line 97
    .line 98
    iget-object v5, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lcom/ss/android/tea/common/deviceregister/d;->I(Lcom/ss/android/tea/common/deviceregister/d;)J

    .line 102
    move-result-wide v5

    .line 103
    .line 104
    const-string v14, "last_config_time"

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v14, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move v15, v5

    .line 110
    .line 111
    move-object/from16 v16, v6

    .line 112
    .line 113
    :goto_0
    if-eqz v12, :cond_2

    .line 114
    .line 115
    new-instance v5, Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    const-string v6, "response"

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 130
    .line 131
    .line 132
    const-string/jumbo v6, "tt_fetch_did_error"

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v6, v5}, Lcom/ss/android/tea/common/deviceregister/d;->l(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .line 137
    :cond_2
    const-string v1, "new_id"

    .line 138
    .line 139
    const-string v5, "old_id"

    .line 140
    const/4 v6, 0x1

    .line 141
    .line 142
    if-nez v13, :cond_4

    .line 143
    .line 144
    iget-object v12, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 145
    .line 146
    .line 147
    invoke-static {v12}, Lcom/ss/android/tea/common/deviceregister/d;->W(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 148
    move-result-object v12

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v12

    .line 153
    .line 154
    if-nez v12, :cond_4

    .line 155
    .line 156
    iget-object v12, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 157
    .line 158
    .line 159
    invoke-static {v12, v8}, Lcom/ss/android/tea/common/deviceregister/d;->f(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-static {v3}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 163
    move-result v12

    .line 164
    .line 165
    if-nez v12, :cond_3

    .line 166
    .line 167
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    iget-object v3, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    .line 183
    const-string/jumbo v19, "umeng"

    .line 184
    .line 185
    const-string v20, "iid_change"

    .line 186
    .line 187
    const/16 v21, 0x0

    .line 188
    .line 189
    const-wide/16 v22, 0x0

    .line 190
    .line 191
    const-wide/16 v24, 0x0

    .line 192
    .line 193
    move-object/from16 v17, v3

    .line 194
    .line 195
    move-object/from16 v26, v12

    .line 196
    .line 197
    .line 198
    invoke-static/range {v17 .. v26}, Lcom/ss/android/tea/common/deviceregister/d;->k(Lcom/ss/android/tea/common/deviceregister/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    :cond_3
    move v3, v6

    .line 200
    goto :goto_1

    .line 201
    :cond_4
    const/4 v3, 0x0

    .line 202
    .line 203
    :goto_1
    if-nez v13, :cond_6

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v8

    .line 208
    .line 209
    if-nez v8, :cond_6

    .line 210
    .line 211
    .line 212
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 213
    move-result v3

    .line 214
    .line 215
    if-nez v3, :cond_5

    .line 216
    .line 217
    :try_start_1
    iget-object v3, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/ss/android/tea/common/deviceregister/d;->u()Ljava/lang/String;

    .line 221
    move-result-object v3

    .line 222
    .line 223
    iget-object v8, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Lcom/ss/android/tea/common/deviceregister/d;->B()Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 228
    .line 229
    new-instance v12, Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    const-string v1, "openudid"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v12, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    const-string v1, "clientudid"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    .line 250
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 251
    .line 252
    const/16 v18, 0x0

    .line 253
    .line 254
    .line 255
    const-string/jumbo v19, "umeng"

    .line 256
    .line 257
    const-string v20, "did_change"

    .line 258
    .line 259
    const/16 v21, 0x0

    .line 260
    .line 261
    const-wide/16 v22, 0x0

    .line 262
    .line 263
    const-wide/16 v24, 0x0

    .line 264
    .line 265
    move-object/from16 v17, v1

    .line 266
    .line 267
    move-object/from16 v26, v12

    .line 268
    .line 269
    .line 270
    invoke-static/range {v17 .. v26}, Lcom/ss/android/tea/common/deviceregister/d;->k(Lcom/ss/android/tea/common/deviceregister/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :catch_1
    :cond_5
    move v3, v6

    .line 272
    .line 273
    .line 274
    :cond_6
    invoke-static {v7}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 275
    move-result v1

    .line 276
    .line 277
    if-nez v1, :cond_7

    .line 278
    .line 279
    const-string v1, "0"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 283
    move-result v1

    .line 284
    .line 285
    if-nez v1, :cond_7

    .line 286
    .line 287
    const-string v1, "None"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 291
    move-result v1

    .line 292
    .line 293
    if-nez v1, :cond_7

    .line 294
    .line 295
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 296
    .line 297
    .line 298
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->Z(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v1

    .line 304
    .line 305
    if-nez v1, :cond_7

    .line 306
    .line 307
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v7}, Lcom/ss/android/tea/common/deviceregister/d;->w(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move v3, v6

    .line 312
    .line 313
    :cond_7
    if-eqz v3, :cond_8

    .line 314
    .line 315
    :try_start_2
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 316
    .line 317
    .line 318
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 319
    move-result-object v1

    .line 320
    .line 321
    iget-object v4, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 322
    .line 323
    .line 324
    invoke-static {v4}, Lcom/ss/android/tea/common/deviceregister/d;->W(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 325
    move-result-object v4

    .line 326
    .line 327
    move-object/from16 v5, v16

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    .line 332
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 333
    .line 334
    .line 335
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 336
    move-result-object v1

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    .line 341
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 342
    .line 343
    .line 344
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    iget-object v4, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 348
    .line 349
    .line 350
    invoke-static {v4}, Lcom/ss/android/tea/common/deviceregister/d;->Z(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 351
    move-result-object v4

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    .line 356
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 357
    .line 358
    .line 359
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->W(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 360
    move-result-object v1

    .line 361
    .line 362
    .line 363
    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    .line 365
    .line 366
    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    .line 368
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 369
    .line 370
    .line 371
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->Z(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;

    .line 372
    move-result-object v1

    .line 373
    .line 374
    .line 375
    invoke-interface {v2, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    .line 377
    .line 378
    :catch_2
    :cond_8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    .line 380
    if-eqz v3, :cond_9

    .line 381
    .line 382
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 383
    .line 384
    .line 385
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->b0(Lcom/ss/android/tea/common/deviceregister/d;)V

    .line 386
    .line 387
    :cond_9
    iget-object v1, v0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 388
    move v2, v15

    .line 389
    .line 390
    .line 391
    invoke-static {v1, v6, v2}, Lcom/ss/android/tea/common/deviceregister/d;->n(Lcom/ss/android/tea/common/deviceregister/d;ZZ)V

    .line 392
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 10

    .line 1
    .line 2
    const-string v0, "RegisterServiceController"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v3, "app_log_config: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string v2, "UTF-8"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/b;->e()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/ss/android/tea/common/deviceregister/d;->Q(Lcom/ss/android/tea/common/deviceregister/d;)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    sub-long v6, v2, v6

    .line 46
    .line 47
    .line 48
    const-wide/32 v8, 0x927c0

    .line 49
    .line 50
    cmp-long p1, v6, v8

    .line 51
    const/4 v9, 0x1

    .line 52
    .line 53
    if-gez p1, :cond_0

    .line 54
    move p1, v9

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p1, v1

    .line 57
    .line 58
    :goto_0
    iget-object v6, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 59
    .line 60
    .line 61
    invoke-static {v6, v2, v3}, Lcom/ss/android/tea/common/deviceregister/d;->t(Lcom/ss/android/tea/common/deviceregister/d;J)J

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v3, "request url : "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_4

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_1
    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    check-cast v2, [B

    .line 97
    .line 98
    iget-object v3, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->T(Lcom/ss/android/tea/common/deviceregister/d;)Z

    .line 102
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    :try_start_1
    iget-object v3, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->O(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/Context;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v2, v3, p1}, Lcom/ss/android/tea/common/applog/y;->g(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;

    .line 114
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 119
    move-result-object v3

    .line 120
    const/4 v6, 0x1

    .line 121
    .line 122
    const-string v7, "application/json; charset=utf-8"

    .line 123
    const/4 v8, 0x0

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    goto :goto_2

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 132
    move-result-object v3

    .line 133
    const/4 v6, 0x1

    .line 134
    .line 135
    const-string v7, "application/json; charset=utf-8"

    .line 136
    const/4 v8, 0x0

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    :goto_2
    if-eqz p1, :cond_4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 146
    move-result v2

    .line 147
    .line 148
    if-nez v2, :cond_3

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    const-string v3, "device_register response: "

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v2}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    new-instance v0, Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v0}, Lcom/ss/android/tea/common/deviceregister/d$a;->c(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    return v9

    .line 179
    :cond_4
    :goto_3
    return v1

    .line 180
    .line 181
    .line 182
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    return v1
.end method

.method private e()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->a:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/y;->e(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->J()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/y;->e(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .line 35
    :goto_0
    iget v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->a:I

    .line 36
    add-int/2addr v1, v2

    .line 37
    .line 38
    iput v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->a:I

    .line 39
    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "device_id"

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    xor-int/2addr v0, v2

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/android/tea/common/deviceregister/d;->m(Lcom/ss/android/tea/common/deviceregister/d;Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->x(Lcom/ss/android/tea/common/deviceregister/d;)V

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->D(Lcom/ss/android/tea/common/deviceregister/d;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lcom/ss/android/tea/common/deviceregister/d;->E(Lcom/ss/android/tea/common/deviceregister/d;)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/e;->a()I

    .line 56
    move-result v4

    .line 57
    .line 58
    if-ne v3, v4, :cond_1

    .line 59
    move v3, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/b;->d()Z

    .line 65
    move-result v4

    .line 66
    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    iget-object v4, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lcom/ss/android/tea/common/deviceregister/d;->G(Lcom/ss/android/tea/common/deviceregister/d;)J

    .line 75
    move-result-wide v7

    .line 76
    .line 77
    cmp-long v4, v7, v5

    .line 78
    .line 79
    if-gez v4, :cond_2

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    .line 84
    const-wide/32 v7, 0x2932e00

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_2
    const-wide/32 v7, 0x1499700

    .line 89
    .line 90
    :goto_2
    if-eqz v3, :cond_3

    .line 91
    .line 92
    .line 93
    const-wide/32 v3, 0x2bf20

    .line 94
    goto :goto_3

    .line 95
    .line 96
    .line 97
    :cond_3
    const-wide/32 v3, 0xea60

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d$a;->e()Z

    .line 101
    move-result v9

    .line 102
    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    const-wide/16 v3, 0x7530

    .line 106
    .line 107
    :cond_4
    iget-object v9, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 108
    .line 109
    .line 110
    invoke-static {v9}, Lcom/ss/android/tea/common/deviceregister/d;->I(Lcom/ss/android/tea/common/deviceregister/d;)J

    .line 111
    move-result-wide v9

    .line 112
    .line 113
    sub-long v9, v0, v9

    .line 114
    sub-long/2addr v7, v9

    .line 115
    .line 116
    iget-object v9, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 117
    .line 118
    .line 119
    invoke-static {v9}, Lcom/ss/android/tea/common/deviceregister/d;->K(Lcom/ss/android/tea/common/deviceregister/d;)J

    .line 120
    move-result-wide v9

    .line 121
    .line 122
    sub-long v9, v0, v9

    .line 123
    sub-long/2addr v3, v9

    .line 124
    .line 125
    .line 126
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 127
    move-result-wide v3

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 131
    move-result v7

    .line 132
    .line 133
    if-eqz v7, :cond_6

    .line 134
    .line 135
    cmp-long v7, v3, v5

    .line 136
    .line 137
    if-gez v7, :cond_5

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    add-long/2addr v0, v3

    .line 140
    .line 141
    :goto_4
    const-string v7, "RegisterServiceController"

    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    const-string v9, "next query time : "

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    new-instance v10, Ljava/util/Date;

    .line 158
    .line 159
    .line 160
    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-static {v7, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    :cond_6
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->M(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/Object;

    .line 180
    move-result-object v0

    .line 181
    monitor-enter v0

    .line 182
    .line 183
    cmp-long v1, v3, v5

    .line 184
    .line 185
    if-lez v1, :cond_8

    .line 186
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->D(Lcom/ss/android/tea/common/deviceregister/d;)Z

    .line 191
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    goto :goto_6

    .line 196
    :catchall_0
    move-exception v1

    .line 197
    goto :goto_7

    .line 198
    .line 199
    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->M(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/Object;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    goto :goto_5

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d$a;->b:Lcom/ss/android/tea/common/deviceregister/d;

    .line 214
    .line 215
    .line 216
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->D(Lcom/ss/android/tea/common/deviceregister/d;)Z

    .line 217
    move-result v1

    .line 218
    .line 219
    if-eqz v1, :cond_a

    .line 220
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .line 222
    .line 223
    :goto_6
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 224
    move-result v0

    .line 225
    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    const-string v0, "RegisterServiceController"

    .line 229
    .line 230
    const-string v1, "DeviceRegisterThread finished"

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_9
    return-void

    .line 235
    :cond_a
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    .line 237
    .line 238
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d$a;->a()V

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    throw v1
.end method
