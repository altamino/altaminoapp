.class Lcom/mixpanel/android/mpmetrics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/e$a;,
        Lcom/mixpanel/android/mpmetrics/e$b;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_PEOPLE_TIME_INDEX:Ljava/lang/String;

.field public static final AUTOMATIC_DATA_COLUMN_INDEX:I = 0x3

.field public static final CREATED_AT_COLUMN_INDEX:I = 0x2

.field private static final CREATE_ANONYMOUS_PEOPLE_TABLE:Ljava/lang/String;

.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String;

.field private static final CREATE_GROUPS_TABLE:Ljava/lang/String;

.field private static final CREATE_PEOPLE_TABLE:Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "mixpanel"

.field private static final DATABASE_VERSION:I = 0x7

.field public static final DATA_COLUMN_INDEX:I = 0x1

.field public static final DB_OUT_OF_MEMORY_ERROR:I = -0x2

.field public static final DB_UNDEFINED_CODE:I = -0x3

.field public static final DB_UPDATE_ERROR:I = -0x1

.field private static final EVENTS_TIME_INDEX:Ljava/lang/String;

.field private static final GROUPS_TIME_INDEX:Ljava/lang/String;

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final KEY_AUTOMATIC_DATA:Ljava/lang/String; = "automatic_data"

.field public static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.Database"

.field private static final MAX_DB_VERSION:I = 0x7

.field private static final MIN_DB_VERSION:I = 0x4

.field private static final PEOPLE_TIME_INDEX:Ljava/lang/String;

.field public static final TOKEN_COLUMN_INDEX:I = 0x4

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDb:Lcom/mixpanel/android/mpmetrics/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->sInstances:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "CREATE TABLE "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    sget-object v2, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "data"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, " STRING NOT NULL, "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v6, "created_at"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v7, " INTEGER NOT NULL, "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v8, "automatic_data"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v9, " INTEGER DEFAULT 0, "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v10, "token"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v11, " STRING NOT NULL DEFAULT \'\')"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    sget-object v12, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 91
    move-result-object v13

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_PEOPLE_TABLE:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    sget-object v13, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 141
    move-result-object v14

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_GROUPS_TABLE:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    sget-object v1, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 191
    move-result-object v14

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_ANONYMOUS_PEOPLE_TABLE:Ljava/lang/String;

    .line 228
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    const-string v3, "CREATE INDEX IF NOT EXISTS time_idx ON "

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v2, " ("

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v4, ");"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->EVENTS_TIME_INDEX:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 275
    move-result-object v5

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->PEOPLE_TIME_INDEX:Ljava/lang/String;

    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 305
    move-result-object v5

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->GROUPS_TIME_INDEX:Ljava/lang/String;

    .line 324
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e;->ANONYMOUS_PEOPLE_TIME_INDEX:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/e;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/mixpanel/android/mpmetrics/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/mixpanel/android/mpmetrics/e$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/mixpanel/android/mpmetrics/e$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_PEOPLE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_GROUPS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->CREATE_ANONYMOUS_PEOPLE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->EVENTS_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->PEOPLE_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->GROUPS_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->ANONYMOUS_PEOPLE_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v1, "mixpanel_"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    :goto_0
    const-string p0, "mixpanel"

    .line 34
    :goto_1
    return-object p0
.end method

.method public static r(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/e;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e;->sInstances:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->l()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/mixpanel/android/mpmetrics/e;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, p1}, Lcom/mixpanel/android/mpmetrics/e;-><init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    move-object v2, p0

    .line 34
    .line 35
    check-cast v2, Lcom/mixpanel/android/mpmetrics/e;

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    return-object v2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$a;->d()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/e;->a()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "MixpanelAPI.Database"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const/4 p1, -0x2

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    new-instance v3, Landroid/content/ContentValues;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .line 33
    const-string v4, "data"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    const-string p1, "created_at"

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v4

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    .line 55
    const-string p1, "token"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p3, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v3, "SELECT COUNT(*) FROM "

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p3, " WHERE token=\'"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p2, "\'"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 95
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const/4 p2, 0x0

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    move-result p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 112
    goto :goto_5

    .line 113
    :catchall_0
    move-exception p2

    .line 114
    move-object v0, p1

    .line 115
    goto :goto_6

    .line 116
    :catch_0
    move-object v0, p1

    .line 117
    goto :goto_0

    .line 118
    :catchall_1
    move-exception p2

    .line 119
    goto :goto_6

    .line 120
    :catch_1
    move-object p1, v0

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :catch_2
    :goto_0
    :try_start_2
    const-string p1, "Out of memory when adding Mixpanel data to table"

    .line 124
    .line 125
    .line 126
    invoke-static {v1, p1}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    :cond_1
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :catch_3
    :goto_2
    :try_start_3
    const-string p2, "Could not add Mixpanel data to table"

    .line 140
    .line 141
    .line 142
    invoke-static {v1, p2}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    if-eqz p1, :cond_2

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    goto :goto_3

    .line 149
    :cond_2
    move-object v0, p1

    .line 150
    .line 151
    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    if-eqz v0, :cond_1

    .line 157
    goto :goto_1

    .line 158
    :goto_4
    const/4 p2, -0x1

    .line 159
    :goto_5
    return p2

    .line 160
    .line 161
    :goto_6
    if-eqz v0, :cond_3

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    .line 166
    :cond_3
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 170
    throw p2
.end method

.method public k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "token = \'"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "\'"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p2

    .line 46
    .line 47
    :try_start_1
    const-string v0, "MixpanelAPI.Database"

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v2, "Could not clean timed-out Mixpanel records from "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p1, ". Re-initializing database."

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p1, p2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    return-void

    .line 80
    .line 81
    :goto_2
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 85
    throw p1
.end method

.method public l(JLcom/mixpanel/android/mpmetrics/e$b;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "created_at <= "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception p1

    .line 41
    .line 42
    :try_start_1
    const-string p2, "MixpanelAPI.Database"

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "Could not clean timed-out Mixpanel records from "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p3, ". Re-initializing database."

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p3, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    return-void

    .line 75
    .line 76
    :goto_2
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 80
    throw p1
.end method

.method public m(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "MixpanelAPI.Database"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v4, "_id <= "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, " AND "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, "token"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p1, " = \'"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, "\'"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    const/4 p3, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    :goto_0
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :goto_1
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v1, "Unknown exception. Could not clean sent Mixpanel records from "

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p2, ".Re-initializing database."

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v1, "Could not clean sent Mixpanel records from "

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p2, ". Re-initializing database."

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-static {v0, p2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :goto_3
    return-void

    .line 141
    .line 142
    :goto_4
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 146
    throw p1
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V

    .line 6
    return-void
.end method

.method public o(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    .line 1
    .line 2
    const-string v0, "data"

    .line 3
    .line 4
    const-string v1, "_id"

    .line 5
    .line 6
    const-string v2, "\' "

    .line 7
    .line 8
    const-string v3, " = \'"

    .line 9
    .line 10
    const-string v4, "token"

    .line 11
    .line 12
    const-string v5, " WHERE "

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v10, "SELECT * FROM "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    .line 60
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    new-instance v9, Ljava/lang/StringBuffer;

    .line 63
    .line 64
    new-instance v10, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v11, "SELECT COUNT(*) FROM "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-direct {v9, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    const-string v2, "ORDER BY created_at ASC LIMIT "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/e$a;->e(Lcom/mixpanel/android/mpmetrics/e$a;)Lcom/mixpanel/android/mpmetrics/d;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/d;->g()I

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 139
    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    .line 141
    .line 142
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 147
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .line 149
    .line 150
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    const/4 v3, 0x0

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 155
    move-result v4

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    .line 162
    .line 163
    .line 164
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 165
    move-object v6, v7

    .line 166
    .line 167
    .line 168
    :catch_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 169
    move-result v8

    .line 170
    .line 171
    if-eqz v8, :cond_3

    .line 172
    .line 173
    .line 174
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    .line 175
    move-result v8

    .line 176
    .line 177
    if-eqz v8, :cond_1

    .line 178
    .line 179
    .line 180
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 181
    move-result v6

    .line 182
    .line 183
    if-ltz v6, :cond_0

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 187
    move-result v6

    .line 188
    goto :goto_2

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    :goto_1
    move-object v7, p2

    .line 191
    .line 192
    goto/16 :goto_8

    .line 193
    :catch_1
    move-exception v0

    .line 194
    goto :goto_6

    .line 195
    :cond_0
    move v6, v3

    .line 196
    .line 197
    .line 198
    :goto_2
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 199
    move-result-object v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    :cond_1
    :try_start_4
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 203
    move-result v8

    .line 204
    .line 205
    if-ltz v8, :cond_2

    .line 206
    .line 207
    .line 208
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 209
    move-result v8

    .line 210
    goto :goto_3

    .line 211
    :cond_2
    const/4 v8, 0x1

    .line 212
    .line 213
    :goto_3
    new-instance v9, Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v8

    .line 218
    .line 219
    .line 220
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    goto :goto_0

    .line 225
    .line 226
    .line 227
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 228
    move-result v0

    .line 229
    .line 230
    if-lez v0, :cond_4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 234
    move-result-object p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    goto :goto_4

    .line 236
    :cond_4
    move-object p1, v7

    .line 237
    .line 238
    :goto_4
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 242
    .line 243
    .line 244
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 245
    .line 246
    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 248
    goto :goto_7

    .line 249
    :catch_2
    move-exception v0

    .line 250
    move-object v4, v7

    .line 251
    goto :goto_6

    .line 252
    :catchall_1
    move-exception p1

    .line 253
    move-object v2, v7

    .line 254
    goto :goto_1

    .line 255
    :catch_3
    move-exception v0

    .line 256
    move-object v2, v7

    .line 257
    :goto_5
    move-object v4, v2

    .line 258
    goto :goto_6

    .line 259
    :catchall_2
    move-exception p1

    .line 260
    move-object v2, v7

    .line 261
    goto :goto_8

    .line 262
    :catch_4
    move-exception v0

    .line 263
    move-object p2, v7

    .line 264
    move-object v2, p2

    .line 265
    goto :goto_5

    .line 266
    .line 267
    :goto_6
    :try_start_6
    const-string v1, "MixpanelAPI.Database"

    .line 268
    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    const-string v5, "Could not pull records for Mixpanel out of database "

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string p1, ". Waiting to send."

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-static {v1, p1, v0}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 293
    .line 294
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 298
    .line 299
    if-eqz p2, :cond_5

    .line 300
    .line 301
    .line 302
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 303
    .line 304
    :cond_5
    if-eqz v2, :cond_6

    .line 305
    .line 306
    .line 307
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_6
    move-object p1, v7

    .line 309
    move-object v6, p1

    .line 310
    .line 311
    :goto_7
    if-eqz v6, :cond_7

    .line 312
    .line 313
    if-eqz p1, :cond_7

    .line 314
    .line 315
    .line 316
    filled-new-array {v6, p1, v4}, [Ljava/lang/String;

    .line 317
    move-result-object p1

    .line 318
    return-object p1

    .line 319
    :cond_7
    return-object v7

    .line 320
    .line 321
    :goto_8
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 325
    .line 326
    if-eqz v7, :cond_8

    .line 327
    .line 328
    .line 329
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 330
    .line 331
    :cond_8
    if-eqz v2, :cond_9

    .line 332
    .line 333
    .line 334
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_9
    throw p1
.end method

.method public p()Ljava/io/File;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/e$a;->f(Lcom/mixpanel/android/mpmetrics/e$a;)Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 1
    .line 2
    const-string v0, "_id"

    .line 3
    .line 4
    const-string v1, "data"

    .line 5
    .line 6
    const-string v2, "automatic_data"

    .line 7
    .line 8
    const-string v3, "created_at"

    .line 9
    .line 10
    const-string v4, "token"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/e;->a()Z

    .line 14
    move-result v5

    .line 15
    .line 16
    const-string v6, "MixpanelAPI.Database"

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    const-string p1, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded"

    .line 21
    .line 22
    .line 23
    invoke-static {v6, p1}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 p1, -0x2

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 v5, 0x0

    .line 27
    const/4 v7, -0x1

    .line 28
    .line 29
    :try_start_0
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    move-result-object v8

    .line 34
    .line 35
    new-instance v9, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    new-instance v10, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v11, "SELECT * FROM "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    sget-object v11, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 51
    move-result-object v11

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v11, " WHERE "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v11, " = \'"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p1, "\'"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {v9, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 90
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    .line 96
    :catch_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    if-eqz v9, :cond_6

    .line 100
    .line 101
    :try_start_3
    new-instance v9, Landroid/content/ContentValues;

    .line 102
    .line 103
    .line 104
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 108
    move-result v10

    .line 109
    .line 110
    if-ltz v10, :cond_1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 114
    move-result v10

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p2

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    :cond_1
    const/4 v10, 0x2

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 123
    move-result-wide v10

    .line 124
    .line 125
    .line 126
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    move-result-object v10

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 134
    move-result v10

    .line 135
    .line 136
    if-ltz v10, :cond_2

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    move-result v10

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    const/4 v10, 0x3

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 146
    move-result v10

    .line 147
    .line 148
    .line 149
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v10

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 157
    move-result v10

    .line 158
    .line 159
    if-ltz v10, :cond_3

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 163
    move-result v10

    .line 164
    goto :goto_3

    .line 165
    :cond_3
    const/4 v10, 0x4

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    move-result-object v10

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 176
    move-result v10

    .line 177
    .line 178
    if-ltz v10, :cond_4

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 182
    move-result v10

    .line 183
    goto :goto_4

    .line 184
    :cond_4
    const/4 v10, 0x1

    .line 185
    .line 186
    :goto_4
    new-instance v11, Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object v10

    .line 191
    .line 192
    .line 193
    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    const-string v10, "$distinct_id"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 202
    move-result-object v10

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    sget-object v10, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 211
    move-result-object v10

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v10, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 218
    move-result v9

    .line 219
    .line 220
    if-ltz v9, :cond_5

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 224
    move-result v9

    .line 225
    goto :goto_5

    .line 226
    :cond_5
    const/4 v9, 0x0

    .line 227
    .line 228
    .line 229
    :goto_5
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    move-result v9

    .line 231
    .line 232
    sget-object v10, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 236
    move-result-object v10

    .line 237
    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    const-string v12, "_id = "

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v9

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v10, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    .line 258
    add-int/lit8 v7, v7, 0x1

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    .line 263
    :cond_6
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    .line 265
    .line 266
    :try_start_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 267
    .line 268
    .line 269
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 270
    .line 271
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 275
    goto :goto_a

    .line 276
    :catchall_1
    move-exception p2

    .line 277
    move-object v5, p1

    .line 278
    goto :goto_b

    .line 279
    :catch_1
    move-exception p2

    .line 280
    goto :goto_8

    .line 281
    .line 282
    .line 283
    :goto_7
    :try_start_6
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    throw p2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 285
    :catchall_2
    move-exception p2

    .line 286
    goto :goto_b

    .line 287
    :catch_2
    move-exception p2

    .line 288
    move-object p1, v5

    .line 289
    .line 290
    :goto_8
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    const-string v1, "Could not push anonymous updates records from "

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    sget-object v1, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v1, ". Re-initializing database."

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    .line 319
    invoke-static {v6, v0, p2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    if-eqz p1, :cond_8

    .line 322
    .line 323
    .line 324
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 325
    goto :goto_9

    .line 326
    :cond_8
    move-object v5, p1

    .line 327
    .line 328
    :goto_9
    :try_start_8
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 332
    .line 333
    if-eqz v5, :cond_7

    .line 334
    .line 335
    .line 336
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 337
    goto :goto_6

    .line 338
    :goto_a
    return v7

    .line 339
    .line 340
    :goto_b
    if-eqz v5, :cond_9

    .line 341
    .line 342
    .line 343
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 344
    .line 345
    :cond_9
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 349
    throw p2
.end method

.method t(Ljava/util/Map;Ljava/lang/String;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    const-string v0, "_id"

    .line 5
    .line 6
    const-string v2, "properties"

    .line 7
    .line 8
    const-string v3, "data"

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/mpmetrics/e;->a()Z

    .line 12
    move-result v4

    .line 13
    .line 14
    const-string v5, "MixpanelAPI.Database"

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    const-string v0, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded"

    .line 19
    .line 20
    .line 21
    invoke-static {v5, v0}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, -0x2

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    :try_start_0
    iget-object v7, v1, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    new-instance v8, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v10, "SELECT * FROM "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    sget-object v10, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 49
    move-result-object v10

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, " WHERE "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v10, "token"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v10, " = \'"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    move-object/from16 v10, p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v10, "\'"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v9

    .line 82
    .line 83
    .line 84
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 92
    move-result-object v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 93
    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    move v9, v4

    .line 97
    .line 98
    .line 99
    :catch_0
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 100
    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    if-eqz v10, :cond_4

    .line 103
    .line 104
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    .line 105
    .line 106
    .line 107
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 111
    move-result v11

    .line 112
    .line 113
    if-ltz v11, :cond_1

    .line 114
    .line 115
    .line 116
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 117
    move-result v11

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    :cond_1
    const/4 v11, 0x1

    .line 123
    .line 124
    :goto_1
    new-instance v12, Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    move-result-object v11

    .line 129
    .line 130
    .line 131
    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 135
    move-result-object v11

    .line 136
    .line 137
    .line 138
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 139
    move-result-object v13

    .line 140
    .line 141
    .line 142
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v13

    .line 144
    .line 145
    .line 146
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v14

    .line 148
    .line 149
    if-eqz v14, :cond_2

    .line 150
    .line 151
    .line 152
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v14

    .line 154
    .line 155
    check-cast v14, Ljava/util/Map$Entry;

    .line 156
    .line 157
    .line 158
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    move-result-object v15

    .line 160
    .line 161
    check-cast v15, Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    move-result-object v14

    .line 166
    .line 167
    check-cast v14, Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    goto :goto_2

    .line 172
    .line 173
    .line 174
    :cond_2
    invoke-virtual {v12, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 178
    move-result-object v11

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    move-result v11

    .line 186
    .line 187
    if-ltz v11, :cond_3

    .line 188
    .line 189
    .line 190
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 191
    move-result v11

    .line 192
    goto :goto_3

    .line 193
    :cond_3
    move v11, v4

    .line 194
    .line 195
    .line 196
    :goto_3
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    move-result v11

    .line 198
    .line 199
    sget-object v12, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 203
    move-result-object v12

    .line 204
    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    const-string v14, "_id = "

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v11

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v12, v10, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    .line 230
    :cond_4
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    .line 232
    .line 233
    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    .line 235
    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    .line 238
    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 242
    goto :goto_7

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    move-object v6, v8

    .line 245
    goto :goto_8

    .line 246
    :catch_1
    move-exception v0

    .line 247
    move v4, v9

    .line 248
    goto :goto_5

    .line 249
    .line 250
    .line 251
    :goto_4
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 253
    :catch_2
    move-exception v0

    .line 254
    goto :goto_5

    .line 255
    :catchall_2
    move-exception v0

    .line 256
    goto :goto_8

    .line 257
    :catch_3
    move-exception v0

    .line 258
    move-object v8, v6

    .line 259
    .line 260
    :goto_5
    :try_start_7
    const-string v2, "Could not re-write events history. Re-initializing database."

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v2, v0}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    if-eqz v8, :cond_5

    .line 266
    .line 267
    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 269
    goto :goto_6

    .line 270
    :cond_5
    move-object v6, v8

    .line 271
    .line 272
    :goto_6
    :try_start_8
    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$a;->h()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 276
    .line 277
    if-eqz v6, :cond_6

    .line 278
    .line 279
    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    .line 282
    :cond_6
    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 286
    move v9, v4

    .line 287
    :goto_7
    return v9

    .line 288
    .line 289
    :goto_8
    if-eqz v6, :cond_7

    .line 290
    .line 291
    .line 292
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 293
    .line 294
    :cond_7
    iget-object v2, v1, Lcom/mixpanel/android/mpmetrics/e;->mDb:Lcom/mixpanel/android/mpmetrics/e$a;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 298
    throw v0
.end method
