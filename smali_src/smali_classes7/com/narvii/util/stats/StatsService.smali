.class public Lcom/narvii/util/stats/StatsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/stats/StatsService$Duration;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_LIMIT:I = 0x20


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private final buffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/stats/StatsService$Duration;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private hasAccount:Z

.field private final pauseDuration:I

.field private final prefs:Landroid/content/SharedPreferences;

.field private final runningRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadInterval:I

.field private final uploadListener:Lcom/narvii/util/http/ApiResponseListener;

.field private final uploadTrigger:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/stats/StatsService$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/util/stats/StatsService$1;-><init>(Lcom/narvii/util/stats/StatsService;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/stats/StatsService$2;

    .line 27
    .line 28
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/stats/StatsService$2;-><init>(Lcom/narvii/util/stats/StatsService;Ljava/lang/Class;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    iput p2, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    .line 38
    .line 39
    iput p3, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string p2, "stattime"

    .line 46
    const/4 p3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 53
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/stats/StatsService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    return p0
.end method

.method private getLast()Lcom/narvii/util/stats/StatsService$Duration;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/util/stats/StatsService$Duration;

    .line 25
    :goto_0
    return-object v0
.end method

.method private getTime()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    return v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    return-void
.end method

.method public flush()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->clearAll()V

    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    move-object v3, v0

    .line 34
    move v4, v2

    .line 35
    move v5, v4

    .line 36
    .line 37
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    move-result v6

    .line 42
    .line 43
    if-nez v6, :cond_a

    .line 44
    .line 45
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    new-instance v7, Ljava/util/LinkedList;

    .line 56
    .line 57
    .line 58
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 59
    move v8, v2

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 63
    move-result v9

    .line 64
    .line 65
    if-eqz v9, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    check-cast v9, Lcom/narvii/util/stats/StatsService$Duration;

    .line 72
    .line 73
    iget v10, v9, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    .line 74
    .line 75
    if-nez v10, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_4
    if-nez v8, :cond_5

    .line 82
    move v8, v10

    .line 83
    .line 84
    :cond_5
    if-ne v10, v8, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 95
    move-result v6

    .line 96
    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    if-nez v8, :cond_7

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v9

    .line 113
    .line 114
    if-eqz v9, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v9

    .line 119
    .line 120
    check-cast v9, Lcom/narvii/util/stats/StatsService$Duration;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 124
    move-result-object v10

    .line 125
    .line 126
    iget v11, v9, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 127
    .line 128
    const-string v12, "start"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 132
    .line 133
    const-string v11, "end"

    .line 134
    .line 135
    iget v12, v9, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v11, v12}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v10}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 142
    .line 143
    iget v10, v9, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 144
    .line 145
    iget v11, v9, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 146
    sub-int/2addr v10, v11

    .line 147
    add-int/2addr v5, v10

    .line 148
    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    const-string v11, "stats upload "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    .line 167
    invoke-static {v9}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 168
    goto :goto_2

    .line 169
    .line 170
    .line 171
    :cond_8
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    check-cast v6, Lcom/narvii/util/stats/StatsService$Duration;

    .line 175
    .line 176
    iget v6, v6, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 180
    move-result-object v7

    .line 181
    .line 182
    .line 183
    const-string/jumbo v9, "userActiveTimeChunkList"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v9, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 189
    .line 190
    const-string v9, "prefs"

    .line 191
    .line 192
    .line 193
    invoke-interface {v4, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    check-cast v4, Landroid/content/SharedPreferences;

    .line 197
    .line 198
    iget-object v4, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 199
    .line 200
    .line 201
    invoke-interface {v4, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    move-result-object v4

    .line 203
    .line 204
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->optinAdsFlags()I

    .line 208
    move-result v4

    .line 209
    .line 210
    const-string v9, "optInAdsFlags"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v9, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 214
    .line 215
    .line 216
    const-string/jumbo v9, "timezone"

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 220
    move-result v10

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 227
    move-result-object v7

    .line 228
    .line 229
    sget-object v9, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 233
    move-result-object v9

    .line 234
    .line 235
    iget-object v10, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 236
    .line 237
    .line 238
    invoke-interface {v10}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 239
    move-result-object v10

    .line 240
    .line 241
    sget v11, Lcom/narvii/lib/R$string;->rsc:I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    move-result-object v10

    .line 246
    .line 247
    iget-object v11, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 248
    .line 249
    .line 250
    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 251
    move-result-object v11

    .line 252
    .line 253
    sget v12, Lcom/narvii/lib/R$string;->rsv:I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    move-result-object v11

    .line 258
    .line 259
    .line 260
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 261
    move-result v11

    .line 262
    .line 263
    .line 264
    invoke-static {v9, v10, v11}, Lc/f/b/e/q5;->f([BLjava/lang/String;I)Ljava/lang/String;

    .line 265
    move-result-object v9

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 269
    move-result-object v10

    .line 270
    .line 271
    const-string v11, "cid"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v11, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 275
    .line 276
    .line 277
    const-string/jumbo v11, "time"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v11, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 281
    .line 282
    const-string v11, "raw"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v11, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 286
    .line 287
    const-string v7, "sig"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10, v7, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 291
    .line 292
    if-nez v3, :cond_9

    .line 293
    .line 294
    iget-object v3, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 295
    .line 296
    .line 297
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 298
    move-result-object v3

    .line 299
    .line 300
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v9, "uats_"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v6, "_"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v6

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 328
    move-result-object v7

    .line 329
    .line 330
    .line 331
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_a
    if-eqz v3, :cond_b

    .line 336
    .line 337
    .line 338
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->uploadAll()V

    .line 342
    .line 343
    :cond_b
    if-eqz v4, :cond_c

    .line 344
    .line 345
    if-lez v5, :cond_c

    .line 346
    .line 347
    iget-object v1, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 348
    .line 349
    const-string v2, "statistics"

    .line 350
    .line 351
    .line 352
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 356
    .line 357
    .line 358
    invoke-interface {v1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    const-string v1, "Opt-in Ads Time"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 365
    :cond_c
    return-void
.end method

.method public getCachedTime(I)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/util/stats/StatsService$Duration;

    .line 20
    .line 21
    iget v3, v2, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget v3, v2, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 26
    .line 27
    iget v2, v2, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 28
    sub-int/2addr v3, v2

    .line 29
    add-int/2addr v1, v3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const/16 p1, 0x12c

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public pause(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getLast()Lcom/narvii/util/stats/StatsService$Duration;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    .line 13
    .line 14
    if-ne v2, p1, :cond_0

    .line 15
    .line 16
    iget p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 17
    .line 18
    if-le p1, v0, :cond_0

    .line 19
    .line 20
    iget p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 29
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->uploadAll()V

    .line 30
    .line 31
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    .line 41
    int-to-long v1, v1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 45
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->flush()V

    .line 11
    return-void
.end method

.method public touchOrResume(I)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getLast()Lcom/narvii/util/stats/StatsService$Duration;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    .line 18
    .line 19
    if-ne v2, p1, :cond_2

    .line 20
    .line 21
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 22
    .line 23
    if-lt v0, v2, :cond_2

    .line 24
    .line 25
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 26
    .line 27
    if-ge v2, v0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget p1, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    .line 31
    add-int/2addr v0, p1

    .line 32
    .line 33
    iput v0, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 39
    .line 40
    iget v3, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result v2

    .line 51
    .line 52
    iput v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 53
    .line 54
    :cond_3
    new-instance v1, Lcom/narvii/util/stats/StatsService$Duration;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p1, v0}, Lcom/narvii/util/stats/StatsService$Duration;-><init>(II)V

    .line 58
    .line 59
    iget p1, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    .line 60
    add-int/2addr v0, p1

    .line 61
    .line 62
    iput v0, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result p1

    .line 74
    .line 75
    const/16 v0, 0x20

    .line 76
    .line 77
    if-ne p1, v0, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->flush()V

    .line 81
    :cond_4
    :goto_1
    return-void
.end method

.method public uploadAll()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move-object v3, v2

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_5

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v5, "uats_"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    iget-object v5, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    if-eqz v5, :cond_1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object v5, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    const-string v6, "cid"

    .line 71
    .line 72
    .line 73
    filled-new-array {v6}, [Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 78
    move-result v6

    .line 79
    .line 80
    .line 81
    const-string/jumbo v7, "time"

    .line 82
    .line 83
    .line 84
    filled-new-array {v7}, [Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v7}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    if-gt v7, v0, :cond_3

    .line 94
    .line 95
    .line 96
    const v8, 0x15180

    .line 97
    .line 98
    sub-int v8, v0, v8

    .line 99
    .line 100
    if-ge v7, v8, :cond_2

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_2
    :try_start_0
    new-instance v7, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 104
    .line 105
    .line 106
    invoke-direct {v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 107
    .line 108
    const-string v8, "raw"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-object v5, v2

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object v7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    move-result-object v8

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    const-string v8, "/community/stats/user-active-time"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeJson()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 162
    .line 163
    const-string v7, "api"

    .line 164
    .line 165
    .line 166
    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    move-result-object v6

    .line 168
    .line 169
    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 170
    .line 171
    iget-object v7, p0, Lcom/narvii/util/stats/StatsService;->uploadListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v5, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 175
    .line 176
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 184
    .line 185
    iget-object v3, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    .line 186
    .line 187
    .line 188
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    :cond_4
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_5
    if-eqz v3, :cond_6

    .line 197
    .line 198
    .line 199
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    :cond_6
    return-void
.end method
