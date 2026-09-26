.class Lcom/ss/android/tea/common/applog/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/tea/common/applog/m$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field private static final g:Ljava/lang/Object;

.field private static h:Lcom/ss/android/tea/common/applog/m;


# instance fields
.field private i:Landroid/database/sqlite/SQLiteDatabase;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    const-string v0, "_id"

    .line 3
    .line 4
    const-string v1, "name"

    .line 5
    .line 6
    const-string v2, "duration"

    .line 7
    .line 8
    const-string v3, "session_id"

    .line 9
    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sput-object v1, Lcom/ss/android/tea/common/applog/m;->a:[Ljava/lang/String;

    .line 15
    .line 16
    const-string v4, "_id"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v5, "value"

    .line 20
    .line 21
    const-string v6, "is_crash"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "timestamp"

    .line 25
    .line 26
    const-string v8, "retry_count"

    .line 27
    .line 28
    const-string v9, "retry_time"

    .line 29
    .line 30
    const-string v10, "log_type"

    .line 31
    .line 32
    .line 33
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    sput-object v1, Lcom/ss/android/tea/common/applog/m;->b:[Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "_id"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v5, "value"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v6, "timestamp"

    .line 45
    .line 46
    const-string v7, "duration"

    .line 47
    .line 48
    const-string v8, "non_page"

    .line 49
    .line 50
    const-string v9, "app_version"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v10, "version_code"

    .line 54
    .line 55
    const-string v11, "pausetime"

    .line 56
    .line 57
    const-string v12, "launch_sent"

    .line 58
    .line 59
    const-string v13, "event_index"

    .line 60
    .line 61
    .line 62
    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    sput-object v1, Lcom/ss/android/tea/common/applog/m;->c:[Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "_id"

    .line 68
    .line 69
    const-string v5, "category"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v6, "tag"

    .line 73
    .line 74
    const-string v7, "label"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v8, "value"

    .line 78
    .line 79
    const-string v9, "ext_value"

    .line 80
    .line 81
    const-string v10, "ext_json"

    .line 82
    .line 83
    .line 84
    const-string/jumbo v11, "user_id"

    .line 85
    .line 86
    .line 87
    const-string/jumbo v12, "timestamp"

    .line 88
    .line 89
    const-string v13, "session_id"

    .line 90
    .line 91
    const-string v14, "event_index"

    .line 92
    .line 93
    .line 94
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    sput-object v1, Lcom/ss/android/tea/common/applog/m;->d:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "log_type"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "value"

    .line 103
    .line 104
    .line 105
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    sput-object v3, Lcom/ss/android/tea/common/applog/m;->e:[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    sput-object v0, Lcom/ss/android/tea/common/applog/m;->f:[Ljava/lang/String;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    sput-object v0, Lcom/ss/android/tea/common/applog/m;->g:Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/ss/android/tea/common/applog/m$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/ss/android/tea/common/applog/m$a;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/m;->j:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private j(ZJLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 27

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    const-string v3, "0"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    :try_start_0
    const-string v14, "_id > ? AND session_id=?"

    .line 12
    const/4 v15, 0x2

    .line 13
    .line 14
    new-array v13, v15, [Ljava/lang/String;

    .line 15
    const/4 v12, 0x0

    .line 16
    .line 17
    aput-object v3, v13, v12

    .line 18
    .line 19
    .line 20
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    const/4 v11, 0x1

    .line 23
    .line 24
    aput-object v5, v13, v11

    .line 25
    .line 26
    const-string v10, "_id<= ? "

    .line 27
    .line 28
    new-array v9, v11, [Ljava/lang/String;

    .line 29
    .line 30
    aput-object v3, v9, v12

    .line 31
    .line 32
    const-string v3, "100"

    .line 33
    .line 34
    const-string v16, "_id ASC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    .line 36
    const-wide/16 v17, 0x0

    .line 37
    .line 38
    move-object/from16 v19, v4

    .line 39
    .line 40
    move-wide/from16 v20, v17

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    aput-object v5, v13, v12

    .line 47
    .line 48
    new-instance v8, Lorg/json/JSONArray;

    .line 49
    .line 50
    .line 51
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .line 53
    iget-object v5, v1, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .line 55
    const-string v6, "misc_log"

    .line 56
    .line 57
    sget-object v7, Lcom/ss/android/tea/common/applog/m;->e:[Ljava/lang/String;

    .line 58
    .line 59
    const/16 v22, 0x0

    .line 60
    .line 61
    const/16 v23, 0x0

    .line 62
    .line 63
    move-object/from16 v24, v8

    .line 64
    move-object v8, v14

    .line 65
    .line 66
    move-object/from16 v25, v9

    .line 67
    move-object v9, v13

    .line 68
    .line 69
    move-object/from16 v26, v10

    .line 70
    .line 71
    move-object/from16 v10, v22

    .line 72
    move v15, v11

    .line 73
    .line 74
    move-object/from16 v11, v23

    .line 75
    move v15, v12

    .line 76
    .line 77
    move-object/from16 v12, v16

    .line 78
    .line 79
    move-object/from16 v23, v13

    .line 80
    move-object v13, v3

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 84
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 88
    .line 89
    move-wide/from16 v6, v17

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 93
    move-result v8

    .line 94
    .line 95
    if-eqz v8, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    move-result-wide v8

    .line 100
    .line 101
    cmp-long v10, v8, v17

    .line 102
    .line 103
    if-gtz v10, :cond_0

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_0
    cmp-long v10, v8, v6

    .line 107
    .line 108
    if-lez v10, :cond_1

    .line 109
    move-wide v6, v8

    .line 110
    :cond_1
    const/4 v10, 0x1

    .line 111
    .line 112
    .line 113
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v11

    .line 115
    const/4 v12, 0x2

    .line 116
    .line 117
    .line 118
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v13

    .line 120
    .line 121
    .line 122
    invoke-static {v13}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 123
    move-result v19

    .line 124
    .line 125
    if-nez v19, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-static {v11}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 129
    move-result v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    if-eqz v19, :cond_3

    .line 132
    .line 133
    :catch_0
    :cond_2
    move-object/from16 v8, v24

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_3
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    const-string v13, "log_id"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v13, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    invoke-static {v11}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 148
    move-result v8

    .line 149
    .line 150
    if-nez v8, :cond_4

    .line 151
    .line 152
    const-string v8, "log_type"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .line 157
    :cond_4
    move-object/from16 v8, v24

    .line 158
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    move-object v4, v5

    .line 161
    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    .line 165
    :goto_2
    :try_start_4
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    goto :goto_3

    .line 167
    :catch_1
    move-object v0, v4

    .line 168
    move-object v4, v5

    .line 169
    .line 170
    goto/16 :goto_7

    .line 171
    .line 172
    :catch_2
    :goto_3
    move-object/from16 v24, v8

    .line 173
    goto :goto_1

    .line 174
    .line 175
    :cond_5
    move-object/from16 v8, v24

    .line 176
    const/4 v12, 0x2

    .line 177
    .line 178
    cmp-long v9, v20, v17

    .line 179
    .line 180
    if-nez v9, :cond_6

    .line 181
    move-object v4, v8

    .line 182
    move v9, v15

    .line 183
    goto :goto_4

    .line 184
    :cond_6
    const/4 v9, 0x1

    .line 185
    .line 186
    :goto_4
    cmp-long v10, v20, v6

    .line 187
    .line 188
    if-ltz v10, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-static {v5}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 192
    .line 193
    goto/16 :goto_8

    .line 194
    .line 195
    .line 196
    :cond_7
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 197
    move-result-object v10

    .line 198
    .line 199
    move-object/from16 v11, v25

    .line 200
    .line 201
    aput-object v10, v11, v15

    .line 202
    .line 203
    iget-object v10, v1, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 204
    .line 205
    const-string v13, "misc_log"

    .line 206
    .line 207
    move-object/from16 v12, v26

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v13, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .line 212
    if-eqz v9, :cond_a

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 216
    move-result v9

    .line 217
    .line 218
    if-lez v9, :cond_a

    .line 219
    .line 220
    new-instance v9, Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 224
    .line 225
    const-string v10, "magic_tag"

    .line 226
    .line 227
    const-string v13, "ss_app_log"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    .line 235
    const-string/jumbo v10, "time_sync"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    :cond_8
    const-string v10, "log_data"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    const-string v8, "header"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    :cond_9
    const-string v8, "_gen_time"

    .line 253
    .line 254
    move-object/from16 p2, v3

    .line 255
    .line 256
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 258
    move-result-wide v2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v2}, Lcom/ss/android/tea/common/applog/m;->o(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    goto :goto_5

    .line 270
    .line 271
    :cond_a
    move-object/from16 p2, v3

    .line 272
    .line 273
    :goto_5
    move-object/from16 v3, p2

    .line 274
    .line 275
    move-object/from16 v2, p6

    .line 276
    .line 277
    move-object/from16 v19, v5

    .line 278
    .line 279
    move-wide/from16 v20, v6

    .line 280
    move-object v9, v11

    .line 281
    move-object v10, v12

    .line 282
    move v12, v15

    .line 283
    .line 284
    move-object/from16 v13, v23

    .line 285
    const/4 v11, 0x1

    .line 286
    const/4 v15, 0x2

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    .line 291
    move-object/from16 v4, v19

    .line 292
    goto :goto_6

    .line 293
    :catch_3
    move-object v0, v4

    .line 294
    .line 295
    move-object/from16 v4, v19

    .line 296
    goto :goto_7

    .line 297
    :catchall_2
    move-exception v0

    .line 298
    goto :goto_6

    .line 299
    :catch_4
    move-object v0, v4

    .line 300
    goto :goto_7

    .line 301
    .line 302
    .line 303
    :goto_6
    invoke-static {v4}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 304
    throw v0

    .line 305
    .line 306
    .line 307
    :goto_7
    invoke-static {v4}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 308
    move-object v4, v0

    .line 309
    :goto_8
    return-object v4
.end method

.method protected static l(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_0
    return-void
.end method

.method protected static m(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_0
    return-void
.end method

.method private o(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/tea/common/applog/m;->g(Ljava/lang/String;I)J

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method private declared-synchronized q()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    .line 23
    :try_start_1
    const-string v1, "AppLog"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "closeDatabase error: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
.end method

.method public static s()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/applog/m;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/ss/android/tea/common/applog/m;->h:Lcom/ss/android/tea/common/applog/m;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/ss/android/tea/common/applog/m;->q()V

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public static t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/applog/m;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/ss/android/tea/common/applog/m;->h:Lcom/ss/android/tea/common/applog/m;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/ss/android/tea/common/applog/m;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/ss/android/tea/common/applog/m;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    sput-object v1, Lcom/ss/android/tea/common/applog/m;->h:Lcom/ss/android/tea/common/applog/m;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    sget-object p0, Lcom/ss/android/tea/common/applog/m;->h:Lcom/ss/android/tea/common/applog/m;

    .line 25
    return-object p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method declared-synchronized a(JLjava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    const-string v1, "log_type"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p3, "value"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string p3, "session_id"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    const-string p2, "misc_log"

    .line 31
    const/4 p3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 35
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return-wide p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public declared-synchronized b(Lcom/ss/android/tea/common/applog/q;)J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    const-string v1, "category"

    .line 21
    .line 22
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/q;->b:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "tag"

    .line 29
    .line 30
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/q;->c:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object v1, p1, Lcom/ss/android/tea/common/applog/q;->d:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v1, "label"

    .line 44
    .line 45
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/q;->d:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    const-string/jumbo v1, "value"

    .line 55
    .line 56
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->e:J

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    .line 65
    const-string v1, "ext_value"

    .line 66
    .line 67
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->f:J

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    .line 76
    iget-object v1, p1, Lcom/ss/android/tea/common/applog/q;->j:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    const-string v1, "ext_json"

    .line 85
    .line 86
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/q;->j:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const-string/jumbo v1, "user_id"

    .line 93
    .line 94
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->g:J

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v1, "timestamp"

    .line 105
    .line 106
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->h:J

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    .line 115
    const-string v1, "session_id"

    .line 116
    .line 117
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->i:J

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    .line 126
    const-string v1, "event_index"

    .line 127
    .line 128
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/q;->l:J

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    .line 137
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    .line 139
    const-string v1, "event"

    .line 140
    const/4 v2, 0x0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 144
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    .line 146
    return-wide v0

    .line 147
    .line 148
    :cond_3
    :goto_1
    :try_start_1
    const-string p1, "AppLog"

    .line 149
    .line 150
    const-string v0, "db not establish and open"

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p0

    .line 155
    .line 156
    const-wide/16 v0, -0x1

    .line 157
    return-wide v0

    .line 158
    :goto_2
    monitor-exit p0

    .line 159
    throw p1
.end method

.method public declared-synchronized c(Lcom/ss/android/tea/common/applog/s;J)J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    const-string v1, "pausetime"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    new-array p2, p2, [Ljava/lang/String;

    .line 31
    .line 32
    iget-wide v1, p1, Lcom/ss/android/tea/common/applog/s;->c:J

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    aput-object p3, p2, v1

    .line 40
    .line 41
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    const-string v1, "session"

    .line 44
    .line 45
    const-string v2, "_id = ?"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception p2

    .line 53
    .line 54
    :try_start_2
    const-string p3, "AppLog"

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "update session pausetime exception: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-static {p3, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    :goto_0
    :try_start_3
    new-instance p2, Landroid/content/ContentValues;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .line 82
    const-string p3, "name"

    .line 83
    .line 84
    iget-object v0, p1, Lcom/ss/android/tea/common/applog/s;->a:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    const-string p3, "duration"

    .line 90
    .line 91
    iget v0, p1, Lcom/ss/android/tea/common/applog/s;->b:I

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    .line 100
    const-string p3, "session_id"

    .line 101
    .line 102
    iget-wide v0, p1, Lcom/ss/android/tea/common/applog/s;->c:J

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    .line 111
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    .line 113
    const-string p3, "page"

    .line 114
    const/4 v0, 0x0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 118
    move-result-wide p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    monitor-exit p0

    .line 120
    return-wide p1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    .line 123
    :try_start_4
    const-string p2, "AppLog"

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v0, "insert page exception: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-static {p2, p1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    monitor-exit p0

    .line 145
    .line 146
    const-wide/16 p1, 0x0

    .line 147
    return-wide p1

    .line 148
    .line 149
    :cond_1
    :goto_1
    :try_start_5
    const-string p1, "AppLog"

    .line 150
    .line 151
    const-string p2, "db not establish and open"

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    monitor-exit p0

    .line 156
    .line 157
    const-wide/16 p1, -0x1

    .line 158
    return-wide p1

    .line 159
    :goto_2
    monitor-exit p0

    .line 160
    throw p1
.end method

.method public declared-synchronized d(Lcom/ss/android/tea/common/applog/x;)J
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p1, Lcom/ss/android/tea/common/applog/x;->i:Z

    .line 15
    .line 16
    new-instance v1, Landroid/content/ContentValues;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "value"

    .line 23
    .line 24
    iget-object v3, p1, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "timestamp"

    .line 31
    .line 32
    iget-wide v3, p1, Lcom/ss/android/tea/common/applog/x;->c:J

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    .line 41
    const-string v2, "duration"

    .line 42
    .line 43
    iget v3, p1, Lcom/ss/android/tea/common/applog/x;->e:I

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    const-string v2, "non_page"

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    .line 61
    const-string v0, "app_version"

    .line 62
    .line 63
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/x;->f:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "version_code"

    .line 70
    .line 71
    iget v2, p1, Lcom/ss/android/tea/common/applog/x;->g:I

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    .line 80
    const-string v0, "event_index"

    .line 81
    .line 82
    iget-wide v2, p1, Lcom/ss/android/tea/common/applog/x;->d:J

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    .line 93
    const-string v0, "session"

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 98
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    .line 100
    return-wide v0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "AppLog"

    .line 105
    .line 106
    const-string v0, "db not establish and open"

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    .line 111
    .line 112
    const-wide/16 v0, -0x1

    .line 113
    return-wide v0

    .line 114
    :goto_1
    monitor-exit p0

    .line 115
    throw p1
.end method

.method public declared-synchronized e(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;Lorg/json/JSONObject;Z[J[Ljava/lang/String;Lcom/ss/android/tea/common/applog/b$e;ZLorg/json/JSONObject;)J
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    monitor-enter p0

    :try_start_0
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2b

    .line 1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_18

    :cond_0
    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    .line 2
    iget-wide v1, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v23, 0x0

    .line 3
    :try_start_1
    iget-object v2, v9, Lcom/ss/android/tea/common/applog/x;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v9, Lcom/ss/android/tea/common/applog/x;->g:I

    if-lez v2, :cond_1

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/tea/common/applog/b;->a:[Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-direct {v2, v4, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    const-string v3, "app_version"

    .line 5
    iget-object v4, v9, Lcom/ss/android/tea/common/applog/x;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "version_code"

    .line 6
    iget v4, v9, Lcom/ss/android/tea/common/applog/x;->g:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v5, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_1
    move-object/from16 v4, p3

    move-object v5, v4

    :goto_0
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 9
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "_id ASC"

    .line 10
    iget-boolean v14, v9, Lcom/ss/android/tea/common/applog/x;->i:Z

    const/4 v15, 0x2

    if-nez v14, :cond_7

    if-nez p4, :cond_7

    const-string v22, "500"

    iget-object v14, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v16, "page"

    sget-object v17, Lcom/ss/android/tea/common/applog/m;->a:[Ljava/lang/String;

    const-string v18, "session_id = ?"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v7

    move-object/from16 v21, v2

    .line 11
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 13
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 p3, v4

    .line 14
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 16
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    if-lez v13, :cond_2

    .line 17
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v25, v5

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const/4 v4, 0x1

    .line 19
    invoke-virtual {v6, v4, v13}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/2addr v1, v13

    add-int/lit8 v16, v16, 0x1

    .line 20
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v14

    goto/16 :goto_17

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v1, v14

    goto/16 :goto_16

    :cond_2
    move-object/from16 v25, v5

    :goto_2
    move-object/from16 v4, p3

    move-object/from16 v5, v25

    const/4 v6, 0x2

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 p3, v4

    move-object/from16 v25, v5

    .line 21
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v16, :cond_6

    .line 22
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "duration"

    .line 23
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "datetime"

    .line 24
    iget-wide v5, v9, Lcom/ss/android/tea/common/applog/x;->c:J

    invoke-static {v5, v6}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    .line 25
    iget-object v5, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "activites"

    .line 26
    invoke-virtual {v4, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local_time_ms"

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    invoke-static {v4}, Lcom/ss/android/tea/common/applog/b;->b0(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_4

    .line 29
    :try_start_4
    iget-wide v5, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    iget-object v1, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-interface {v11, v5, v6, v1, v4}, Lcom/ss/android/tea/common/applog/b$e;->b(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    :catch_2
    :cond_4
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 31
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v4, "terminate"

    .line 32
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    sget v1, Lcom/ss/android/tea/common/applog/b;->r:I

    if-lez v1, :cond_5

    const-string v4, "launch_from"

    .line 34
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 35
    sput v1, Lcom/ss/android/tea/common/applog/b;->r:I

    :cond_5
    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 p3, v4

    move-object/from16 v25, v5

    goto :goto_3

    :goto_4
    const-string v22, "200"

    const-string v4, "session_id = ?"

    if-eqz p4, :cond_8

    const/4 v5, 0x0

    .line 36
    aget-wide v13, p5, v5

    cmp-long v6, v13, v23

    if-lez v6, :cond_8

    const-string v4, "_id > ? AND session_id=?"

    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 37
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    iget-wide v5, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v15, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v15

    goto :goto_5

    :cond_8
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    :goto_5
    iget-object v14, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "event"

    sget-object v16, Lcom/ss/android/tea/common/applog/m;->d:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    .line 38
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    :try_start_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 40
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-wide/from16 v15, v23

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 41
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_18

    move/from16 v17, v1

    const/4 v1, 0x0

    .line 42
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v20, v7

    const/4 v1, 0x1

    .line 43
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x2

    .line 44
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x3

    .line 45
    invoke-interface {v13, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_9

    .line 46
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v13

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v1, v13

    goto/16 :goto_16

    :cond_9
    const/4 v1, 0x0

    :goto_7
    const/4 v10, 0x4

    .line 47
    invoke-interface {v13, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_a

    .line 48
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v10, v21

    move-object/from16 v21, v3

    goto :goto_8

    :cond_a
    move-object/from16 v21, v3

    move-wide/from16 v10, v23

    :goto_8
    const/4 v3, 0x5

    .line 49
    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_b

    .line 50
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, v2

    move-wide/from16 v2, v26

    move/from16 v26, v14

    goto :goto_9

    :cond_b
    move-object/from16 v22, v2

    move/from16 v26, v14

    move-wide/from16 v2, v23

    :goto_9
    const/4 v14, 0x6

    .line 51
    invoke-interface {v13, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-nez v27, :cond_c

    .line 52
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v27, v5

    goto :goto_a

    :cond_c
    move/from16 v27, v5

    const/4 v14, 0x0

    :goto_a
    const/4 v5, 0x7

    .line 53
    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_d

    .line 54
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-wide/from16 v35, v2

    move-wide/from16 v2, v28

    move-wide/from16 v28, v35

    goto :goto_b

    :cond_d
    move-wide/from16 v28, v2

    move-wide/from16 v2, v23

    :goto_b
    const/16 v5, 0x8

    move-wide/from16 v30, v10

    .line 55
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v5, 0xa

    move/from16 v32, v6

    .line 56
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v33, v15, v18

    if-gez v33, :cond_e

    move-wide/from16 v15, v18

    .line 57
    :cond_e
    invoke-static {v14}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result v18
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v18, :cond_f

    move-wide/from16 v18, v15

    .line 58
    :try_start_7
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_c

    :cond_f
    move-wide/from16 v18, v15

    :catch_4
    const/4 v15, 0x0

    :goto_c
    if-nez v15, :cond_10

    .line 59
    :try_start_8
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :cond_10
    const-string/jumbo v14, "tea_event_index"

    .line 60
    invoke-virtual {v15, v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "local_time_ms"

    .line 61
    invoke-virtual {v15, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "_event_v3"

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v15, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_13

    invoke-static {v7}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "event_v3"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_13

    .line 63
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "nt"

    .line 64
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "nt"

    .line 65
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "nt"

    .line 66
    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    const-string v5, "nt"

    .line 67
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "_event_v3"

    .line 68
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    cmp-long v5, v2, v23

    if-lez v5, :cond_12

    const-string/jumbo v5, "user_id"

    .line 69
    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_12
    const-string v2, "event"

    .line 70
    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "params"

    .line 71
    invoke-virtual {v1, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_id"

    .line 72
    iget-object v3, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "datetime"

    .line 73
    invoke-static {v10, v11}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/lit8 v1, v32, 0x1

    move v6, v1

    move-object/from16 v1, v22

    move/from16 v5, v27

    goto :goto_e

    :catch_5
    move-object/from16 v1, v22

    move/from16 v5, v27

    :goto_d
    move/from16 v6, v32

    goto :goto_e

    :cond_13
    :try_start_a
    const-string v5, "category"

    .line 75
    invoke-virtual {v15, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "tag"

    .line 76
    invoke-virtual {v15, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "label"

    .line 78
    invoke-virtual {v15, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    cmp-long v1, v30, v23

    if-eqz v1, :cond_15

    const-string/jumbo v1, "value"

    move-wide/from16 v6, v30

    .line 79
    invoke-virtual {v15, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_15
    cmp-long v1, v28, v23

    if-eqz v1, :cond_16

    const-string v1, "ext_value"

    move-wide/from16 v5, v28

    .line 80
    invoke-virtual {v15, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_16
    cmp-long v1, v2, v23

    if-lez v1, :cond_17

    const-string/jumbo v1, "user_id"

    .line 81
    invoke-virtual {v15, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_17
    const-string v1, "session_id"

    .line 82
    iget-object v2, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "datetime"

    .line 83
    invoke-static {v10, v11}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v22

    .line 84
    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v27, 0x1

    goto :goto_d

    :goto_e
    add-int/lit8 v14, v26, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object v2, v1

    move/from16 v1, v17

    move-wide/from16 v15, v18

    move-object/from16 v7, v20

    move-object/from16 v3, v21

    goto/16 :goto_6

    :cond_18
    move/from16 v17, v1

    move-object v1, v2

    move-object/from16 v21, v3

    move/from16 v27, v5

    move/from16 v32, v6

    move-object/from16 v20, v7

    move/from16 v26, v14

    if-lez v27, :cond_19

    const-string v2, "event"

    move-object/from16 v3, v21

    .line 85
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_19
    move-object/from16 v3, v21

    :goto_f
    if-lez v32, :cond_1a

    .line 86
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->F0()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "event_v3"

    .line 87
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    if-lez v26, :cond_1b

    const/16 v17, 0x1

    .line 88
    :cond_1b
    iget-wide v4, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    iget-object v6, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v11, p3

    move-object v10, v3

    move-wide v3, v4

    move-object/from16 v12, v25

    move-object v5, v6

    const/4 v14, 0x0

    move-object v6, v12

    move v14, v7

    move-object/from16 v34, v20

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/tea/common/applog/m;->j(ZJLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1c

    const-string v2, "log_data"

    .line 90
    invoke-virtual {v10, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v1, p7

    const/4 v6, 0x1

    goto :goto_10

    :cond_1c
    move-object/from16 v1, p7

    move/from16 v6, v17

    :goto_10
    if-eqz v1, :cond_1d

    .line 91
    :try_start_b
    iget-wide v2, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    iget-object v4, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v10}, Lcom/ss/android/tea/common/applog/b$e;->a(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_11

    :catch_6
    move-exception v0

    move-object v1, v0

    :try_start_c
    const-string v2, "AppLog"

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLogSessionBatchEvent exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1d
    :goto_11
    iget-boolean v1, v9, Lcom/ss/android/tea/common/applog/x;->j:Z

    if-eqz v1, :cond_1e

    const/4 v6, 0x0

    :cond_1e
    if-eqz p4, :cond_1f

    if-eqz p8, :cond_1f

    goto :goto_12

    :cond_1f
    if-eqz v6, :cond_21

    const-string/jumbo v1, "terminate"

    .line 94
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "datetime"

    .line 96
    iget-wide v3, v9, Lcom/ss/android/tea/common/applog/x;->c:J

    invoke-static {v3, v4}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_id"

    .line 97
    iget-object v3, v9, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "local_time_ms"

    .line 98
    iget-wide v3, v9, Lcom/ss/android/tea/common/applog/x;->c:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "tea_event_index"

    .line 99
    iget-wide v3, v9, Lcom/ss/android/tea/common/applog/x;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    iget-boolean v2, v9, Lcom/ss/android/tea/common/applog/x;->i:Z

    if-eqz v2, :cond_20

    const-string v2, "is_background"

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 102
    :cond_20
    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_21
    :goto_12
    move-object/from16 v1, p2

    if-eqz v1, :cond_22

    .line 103
    iget-boolean v2, v1, Lcom/ss/android/tea/common/applog/x;->i:Z

    if-nez v2, :cond_22

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "datetime"

    .line 105
    iget-wide v4, v1, Lcom/ss/android/tea/common/applog/x;->c:J

    invoke-static {v4, v5}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "session_id"

    .line 106
    iget-object v4, v1, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "local_time_ms"

    .line 107
    iget-wide v4, v1, Lcom/ss/android/tea/common/applog/x;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "tea_event_index"

    .line 108
    iget-wide v4, v1, Lcom/ss/android/tea/common/applog/x;->d:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_22
    const/16 v1, 0xc8

    move/from16 v2, v26

    if-lt v2, v1, :cond_23

    const-string v1, "session_id= ? AND _id<= ?"

    new-array v2, v14, [Ljava/lang/String;

    .line 110
    iget-wide v3, v9, Lcom/ss/android/tea/common/applog/x;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "event"

    .line 111
    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 112
    aput-wide v15, p5, v1

    move-object/from16 v4, v34

    goto :goto_13

    :cond_23
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const-string v3, "session_id = ?"

    move-object/from16 v4, v34

    .line 113
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p8, :cond_24

    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "session"

    const-string v3, "_id = ?"

    .line 114
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_24
    :goto_13
    if-eqz p8, :cond_25

    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "page"

    const-string v3, "session_id = ?"

    .line 115
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "misc_log"

    const-string v3, "session_id = ?"

    .line 116
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    :cond_25
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_26

    const-string v1, "launch"

    .line 118
    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    const-string/jumbo v1, "terminate"

    .line 119
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "event"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "launch"

    .line 120
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "item_impression"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "log_data"

    .line 121
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "event_v3"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_14

    :cond_27
    move-wide/from16 v2, v23

    goto :goto_15

    :cond_28
    :goto_14
    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    .line 122
    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, p9

    if-eqz v1, :cond_29

    const-string/jumbo v2, "time_sync"

    .line 123
    invoke-virtual {v10, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    const-string v1, "header"

    .line 124
    invoke-virtual {v10, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_gen_time"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 127
    aput-object v1, p6, v2

    .line 128
    invoke-direct {v8, v1}, Lcom/ss/android/tea/common/applog/m;->o(Ljava/lang/String;)J

    move-result-wide v2

    .line 129
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v8, Lcom/ss/android/tea/common/applog/m;->j:Landroid/content/Context;

    .line 130
    invoke-static {v4, v2, v3, v1}, Lcom/ss/android/tea/common/applog/p;->f(Landroid/content/Context;JLjava/lang/String;)V

    :cond_2a
    :goto_15
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    invoke-static {v13, v1}, Lcom/ss/android/tea/common/applog/m;->m(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 133
    monitor-exit p0

    return-wide v2

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_19

    :goto_16
    :try_start_e
    const-string v3, "AppLog"

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batchSession exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    invoke-static {v1, v2}, Lcom/ss/android/tea/common/applog/m;->m(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 136
    monitor-exit p0

    return-wide v23

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_17
    :try_start_10
    iget-object v3, v8, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    invoke-static {v1, v3}, Lcom/ss/android/tea/common/applog/m;->m(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    :cond_2b
    :goto_18
    const-string v1, "AppLog"

    const-string v2, "db not establish and open"

    .line 138
    invoke-static {v1, v2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 139
    monitor-exit p0

    const-wide/16 v1, -0x1

    return-wide v1

    :goto_19
    monitor-exit p0

    throw v1
.end method

.method f(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/tea/common/applog/m;->g(Ljava/lang/String;I)J

    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method declared-synchronized g(Ljava/lang/String;I)J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "value"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "timestamp"

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    .line 28
    const-string p1, "retry_count"

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    .line 38
    const-string p1, "retry_time"

    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    .line 49
    const-string p1, "log_type"

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    .line 60
    const-string p2, "queue"

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 65
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    .line 67
    return-wide p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public declared-synchronized h(Lorg/json/JSONObject;Lorg/json/JSONObject;)J
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    :try_start_0
    const-string v11, "_id ASC"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    const-string v5, "mon_log"

    .line 12
    .line 13
    sget-object v6, Lcom/ss/android/tea/common/applog/m;->f:[Ljava/lang/String;

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    .line 19
    const-string v12, "100"

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    .line 26
    .line 27
    .line 28
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 29
    move-wide v6, v1

    .line 30
    .line 31
    .line 32
    :catch_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    move-result v8

    .line 34
    const/4 v9, 0x1

    .line 35
    const/4 v10, 0x0

    .line 36
    .line 37
    if-eqz v8, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 41
    move-result-wide v10

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v8

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    cmp-long v12, v6, v10

    .line 52
    .line 53
    if-gez v12, :cond_0

    .line 54
    move-wide v6, v10

    .line 55
    .line 56
    :cond_0
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    const-string v9, "log_id"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v12, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    invoke-static {v8}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 68
    move-result v9

    .line 69
    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    const-string v9, "log_type"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v12, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    move-object v3, v4

    .line 79
    goto :goto_4

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_1
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_2
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    cmp-long v4, v6, v1

    .line 89
    .line 90
    if-lez v4, :cond_3

    .line 91
    .line 92
    :try_start_4
    const-string v4, "_id<= ?"

    .line 93
    .line 94
    new-array v8, v9, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    aput-object v6, v8, v10

    .line 101
    .line 102
    iget-object v6, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    .line 104
    const-string v7, "mon_log"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    goto :goto_2

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    goto :goto_4

    .line 111
    :catch_1
    move-object v4, v3

    .line 112
    goto :goto_5

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 116
    move-result v4

    .line 117
    .line 118
    if-lez v4, :cond_6

    .line 119
    .line 120
    new-instance v4, Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .line 125
    const-string v6, "magic_tag"

    .line 126
    .line 127
    const-string v7, "ss_app_log"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    if-eqz p2, :cond_4

    .line 133
    .line 134
    .line 135
    const-string/jumbo v6, "time_sync"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    :cond_4
    const-string p2, "data"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    const-string p2, "header"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    move-object p1, v3

    .line 157
    .line 158
    .line 159
    :goto_3
    :try_start_5
    invoke-static {v3}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 160
    move-object v3, p1

    .line 161
    goto :goto_6

    .line 162
    :catchall_2
    move-exception p1

    .line 163
    goto :goto_7

    .line 164
    .line 165
    .line 166
    :goto_4
    invoke-static {v3}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 167
    throw p1

    .line 168
    .line 169
    .line 170
    :catch_2
    :goto_5
    invoke-static {v4}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 171
    .line 172
    :goto_6
    if-eqz v3, :cond_7

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v3, v0}, Lcom/ss/android/tea/common/applog/m;->g(Ljava/lang/String;I)J

    .line 176
    move-result-wide p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 177
    monitor-exit p0

    .line 178
    return-wide p1

    .line 179
    :cond_7
    monitor-exit p0

    .line 180
    return-wide v1

    .line 181
    :goto_7
    monitor-exit p0

    .line 182
    throw p1
.end method

.method public declared-synchronized i(J)Lcom/ss/android/tea/common/applog/r;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    :try_start_1
    const-string v9, "_id ASC"

    .line 17
    .line 18
    const-string v10, "1"

    .line 19
    .line 20
    const-string v5, "_id > ?"

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    new-array v6, v0, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    aput-object p1, v6, p2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    .line 34
    const-string v3, "queue"

    .line 35
    .line 36
    sget-object v4, Lcom/ss/android/tea/common/applog/m;->b:[Ljava/lang/String;

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Lcom/ss/android/tea/common/applog/r;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2}, Lcom/ss/android/tea/common/applog/r;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 57
    move-result v3

    .line 58
    int-to-long v3, v3

    .line 59
    .line 60
    iput-wide v3, v2, Lcom/ss/android/tea/common/applog/r;->a:J

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    iput-object v3, v2, Lcom/ss/android/tea/common/applog/r;->b:Ljava/lang/String;

    .line 67
    const/4 v3, 0x2

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 71
    move-result v3

    .line 72
    .line 73
    if-lez v3, :cond_1

    .line 74
    move p2, v0

    .line 75
    :cond_1
    const/4 v3, 0x3

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    iput-wide v3, v2, Lcom/ss/android/tea/common/applog/r;->c:J

    .line 82
    const/4 v3, 0x4

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    move-result v3

    .line 87
    .line 88
    iput v3, v2, Lcom/ss/android/tea/common/applog/r;->d:I

    .line 89
    const/4 v3, 0x5

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 93
    move-result-wide v3

    .line 94
    .line 95
    iput-wide v3, v2, Lcom/ss/android/tea/common/applog/r;->e:J

    .line 96
    const/4 v3, 0x6

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    move-result v3

    .line 101
    .line 102
    iput v3, v2, Lcom/ss/android/tea/common/applog/r;->f:I

    .line 103
    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    if-eqz p2, :cond_2

    .line 107
    .line 108
    iput v0, v2, Lcom/ss/android/tea/common/applog/r;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p2

    .line 111
    move-object v1, p1

    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p2

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    move-object v1, v2

    .line 116
    .line 117
    .line 118
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    monitor-exit p0

    .line 120
    return-object v1

    .line 121
    :catchall_1
    move-exception p1

    .line 122
    goto :goto_4

    .line 123
    :catchall_2
    move-exception p2

    .line 124
    goto :goto_2

    .line 125
    :catch_1
    move-exception p2

    .line 126
    move-object p1, v1

    .line 127
    .line 128
    :goto_1
    :try_start_4
    const-string v0, "AppLog"

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v3, "getLog exception "

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    .line 148
    invoke-static {v0, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    .line 150
    .line 151
    :try_start_5
    invoke-static {p1}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    monitor-exit p0

    .line 153
    return-object v1

    .line 154
    .line 155
    .line 156
    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 157
    throw p2

    .line 158
    .line 159
    :cond_4
    :goto_3
    const-string p1, "AppLog"

    .line 160
    .line 161
    const-string p2, "db not establish and open"

    .line 162
    .line 163
    .line 164
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 165
    monitor-exit p0

    .line 166
    return-object v1

    .line 167
    :goto_4
    monitor-exit p0

    .line 168
    throw p1
.end method

.method public declared-synchronized k()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string/jumbo v0, "timestamp <= ? OR retry_count > 5"

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    const-wide/32 v3, 0x19bfcc00

    .line 23
    sub-long/2addr v1, v3

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    new-array v3, v3, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    aput-object v1, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    const-string v2, "queue"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .line 46
    :try_start_2
    const-string v1, "AppLog"

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v3, "delete expire log error:"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    .line 68
    return-void

    .line 69
    .line 70
    :cond_1
    :goto_1
    :try_start_3
    const-string v0, "AppLog"

    .line 71
    .line 72
    const-string v1, "db not establish and open"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit p0

    .line 79
    throw v0
.end method

.method public declared-synchronized n(JZ)Z
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, p1, v2

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    monitor-exit p0

    .line 22
    return v1

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    .line 25
    :try_start_1
    new-array v10, v0, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    aput-object v2, v10, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    if-nez p3, :cond_4

    .line 34
    const/4 p3, 0x3

    .line 35
    const/4 v11, 0x0

    .line 36
    .line 37
    :try_start_2
    new-array v4, p3, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p3, "timestamp"

    .line 41
    .line 42
    aput-object p3, v4, v1

    .line 43
    .line 44
    const-string p3, "retry_count"

    .line 45
    .line 46
    aput-object p3, v4, v0

    .line 47
    .line 48
    const-string p3, "retry_time"

    .line 49
    const/4 v2, 0x2

    .line 50
    .line 51
    aput-object p3, v4, v2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .line 55
    const-string v3, "queue"

    .line 56
    .line 57
    const-string v5, "_id = ?"

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    move-object v6, v10

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 65
    move-result-object v11

    .line 66
    .line 67
    .line 68
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 69
    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    if-nez p3, :cond_2

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-static {v11}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return v1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    .line 82
    :cond_2
    :try_start_4
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    .line 86
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 87
    move-result p3

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    move-result-wide v4

    .line 92
    .line 93
    sub-long v2, v4, v2

    .line 94
    .line 95
    .line 96
    const-wide/32 v6, 0x19bfcc00

    .line 97
    .line 98
    cmp-long v2, v2, v6

    .line 99
    .line 100
    if-gez v2, :cond_3

    .line 101
    const/4 v2, 0x5

    .line 102
    .line 103
    if-ge p3, v2, :cond_3

    .line 104
    .line 105
    new-instance v2, Landroid/content/ContentValues;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .line 110
    const-string v3, "retry_count"

    .line 111
    add-int/2addr p3, v0

    .line 112
    .line 113
    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    .line 120
    const-string p3, "retry_time"

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    .line 129
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    .line 131
    const-string v3, "queue"

    .line 132
    .line 133
    const-string v4, "_id = ?"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v3, v2, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .line 138
    .line 139
    :try_start_5
    invoke-static {v11}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    monitor-exit p0

    .line 141
    return v0

    .line 142
    :catchall_1
    move-exception p1

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p3

    .line 145
    goto :goto_0

    .line 146
    .line 147
    .line 148
    :cond_3
    :try_start_6
    invoke-static {v11}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    move p3, v0

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :goto_0
    :try_start_7
    const-string v0, "AppLog"

    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string v3, "onLogSent excepiton: "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p3

    .line 170
    .line 171
    .line 172
    invoke-static {v0, p3}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 173
    .line 174
    .line 175
    :try_start_8
    invoke-static {v11}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 176
    move p3, v1

    .line 177
    move v0, p3

    .line 178
    goto :goto_2

    .line 179
    .line 180
    .line 181
    :goto_1
    invoke-static {v11}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 182
    throw p1

    .line 183
    :cond_4
    move p3, v1

    .line 184
    .line 185
    :goto_2
    if-eqz p3, :cond_5

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 189
    move-result p3

    .line 190
    .line 191
    if-eqz p3, :cond_5

    .line 192
    .line 193
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/m;->j:Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    invoke-static {p3, p1, p2}, Lcom/ss/android/tea/common/applog/p;->e(Landroid/content/Context;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 197
    .line 198
    :cond_5
    if-eqz v0, :cond_6

    .line 199
    .line 200
    :try_start_9
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    .line 202
    const-string v0, "queue"

    .line 203
    .line 204
    const-string v2, "_id = ?"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 208
    .line 209
    :catchall_2
    :try_start_a
    const-string p3, "AppLog"

    .line 210
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    const-string v2, "delete app_log: "

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    .line 229
    invoke-static {p3, p1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 230
    monitor-exit p0

    .line 231
    return v1

    .line 232
    :cond_6
    monitor-exit p0

    .line 233
    return v1

    .line 234
    .line 235
    :cond_7
    :goto_3
    :try_start_b
    const-string p1, "AppLog"

    .line 236
    .line 237
    const-string p2, "db not establish and open"

    .line 238
    .line 239
    .line 240
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 241
    monitor-exit p0

    .line 242
    return v1

    .line 243
    :goto_4
    monitor-exit p0

    .line 244
    throw p1
.end method

.method public declared-synchronized p(J)Lcom/ss/android/tea/common/applog/x;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    :try_start_1
    const-string v10, "_id DESC"

    .line 18
    .line 19
    const-string v11, "1"

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v0, p1, v3

    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x0

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "_id < ?"

    .line 30
    .line 31
    new-array v3, v12, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    aput-object v4, v3, v13

    .line 38
    move-object v6, v0

    .line 39
    move-object v7, v3

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object v3, v2

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    :cond_1
    move-object v6, v2

    .line 49
    move-object v7, v6

    .line 50
    .line 51
    :goto_0
    iget-object v3, v1, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    const-string v4, "session"

    .line 54
    .line 55
    sget-object v5, Lcom/ss/android/tea/common/applog/m;->c:[Ljava/lang/String;

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    new-instance v0, Lcom/ss/android/tea/common/applog/x;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Lcom/ss/android/tea/common/applog/x;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    move-result v4

    .line 77
    int-to-long v4, v4

    .line 78
    .line 79
    iput-wide v4, v0, Lcom/ss/android/tea/common/applog/x;->a:J

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    iput-object v4, v0, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    .line 86
    const/4 v4, 0x2

    .line 87
    .line 88
    .line 89
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    move-result-wide v4

    .line 91
    .line 92
    iput-wide v4, v0, Lcom/ss/android/tea/common/applog/x;->c:J

    .line 93
    const/4 v4, 0x4

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 97
    move-result v4

    .line 98
    .line 99
    if-lez v4, :cond_2

    .line 100
    move v4, v12

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v4, v13

    .line 103
    .line 104
    :goto_1
    iput-boolean v4, v0, Lcom/ss/android/tea/common/applog/x;->i:Z

    .line 105
    const/4 v4, 0x5

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    iput-object v4, v0, Lcom/ss/android/tea/common/applog/x;->f:Ljava/lang/String;

    .line 112
    const/4 v4, 0x6

    .line 113
    .line 114
    .line 115
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 116
    move-result v4

    .line 117
    .line 118
    iput v4, v0, Lcom/ss/android/tea/common/applog/x;->g:I

    .line 119
    const/4 v4, 0x7

    .line 120
    .line 121
    .line 122
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    move-result v4

    .line 124
    int-to-long v4, v4

    .line 125
    .line 126
    iput-wide v4, v0, Lcom/ss/android/tea/common/applog/x;->h:J

    .line 127
    .line 128
    const/16 v4, 0x8

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 132
    move-result v4

    .line 133
    .line 134
    if-lez v4, :cond_3

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move v12, v13

    .line 137
    .line 138
    :goto_2
    iput-boolean v12, v0, Lcom/ss/android/tea/common/applog/x;->j:Z

    .line 139
    .line 140
    const/16 v4, 0x9

    .line 141
    .line 142
    .line 143
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    move-result-wide v4

    .line 145
    .line 146
    iput-wide v4, v0, Lcom/ss/android/tea/common/applog/x;->d:J

    .line 147
    .line 148
    iput-boolean v13, v0, Lcom/ss/android/tea/common/applog/x;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    move-object v2, v0

    .line 150
    goto :goto_3

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    move-object v2, v3

    .line 153
    goto :goto_5

    .line 154
    :catch_1
    move-exception v0

    .line 155
    goto :goto_4

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_3
    :try_start_3
    invoke-static {v3}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    monitor-exit p0

    .line 160
    return-object v2

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    goto :goto_7

    .line 163
    .line 164
    :goto_4
    :try_start_4
    const-string v4, "AppLog"

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    const-string v6, "getLastSession exception "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .line 186
    .line 187
    :try_start_5
    invoke-static {v3}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 188
    monitor-exit p0

    .line 189
    return-object v2

    .line 190
    .line 191
    .line 192
    :goto_5
    :try_start_6
    invoke-static {v2}, Lcom/ss/android/tea/common/applog/m;->l(Landroid/database/Cursor;)V

    .line 193
    throw v0

    .line 194
    .line 195
    :cond_5
    :goto_6
    const-string v0, "AppLog"

    .line 196
    .line 197
    const-string v3, "db not establish and open"

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v3}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    monitor-exit p0

    .line 202
    return-object v2

    .line 203
    :goto_7
    monitor-exit p0

    .line 204
    throw v0
.end method

.method public declared-synchronized r(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    :try_start_1
    const-string v0, "_id=?"

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    new-array v2, v1, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    aput-object p1, v2, p2

    .line 25
    .line 26
    new-instance p1, Landroid/content/ContentValues;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    const-string p2, "launch_sent"

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/ss/android/tea/common/applog/m;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    const-string v1, "session"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    .line 51
    :try_start_2
    const-string p2, "AppLog"

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "setSessionLaunchSent exception: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_0
    monitor-exit p0

    .line 73
    return-void

    .line 74
    .line 75
    :cond_1
    :goto_1
    :try_start_3
    const-string p1, "AppLog"

    .line 76
    .line 77
    const-string p2, "db not establish and open"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    throw p1
.end method
