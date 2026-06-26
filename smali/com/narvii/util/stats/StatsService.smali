.class public Lcom/narvii/util/stats/StatsService;
.super Ljava/lang/Object;
.source "StatsService.java"


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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/narvii/util/stats/StatsService$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/stats/StatsService$1;-><init>(Lcom/narvii/util/stats/StatsService;)V

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    .line 274
    new-instance v0, Lcom/narvii/util/stats/StatsService$2;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/stats/StatsService$2;-><init>(Lcom/narvii/util/stats/StatsService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 62
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    .line 63
    iput p2, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    .line 64
    iput p3, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    .line 65
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "stattime"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/stats/StatsService;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method private getLast()Lcom/narvii/util/stats/StatsService$Duration;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/stats/StatsService$Duration;

    :goto_0
    return-object v0
.end method

.method private getTime()I
    .locals 4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public flush()V
    .locals 14

    .line 140
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    const-string v1, "account"

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    .line 144
    iget-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->clearAll()V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 151
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 152
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 153
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v8, 0x0

    .line 155
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 156
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/util/stats/StatsService$Duration;

    .line 157
    iget v10, v9, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    if-nez v10, :cond_4

    .line 158
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_4
    if-nez v8, :cond_5

    move v8, v10

    .line 163
    :cond_5
    iget v10, v9, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    if-ne v10, v8, :cond_3

    .line 164
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 165
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 169
    :cond_6
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    if-nez v8, :cond_7

    goto :goto_0

    .line 172
    :cond_7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v4

    .line 173
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/util/stats/StatsService$Duration;

    .line 174
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v10

    .line 175
    iget v11, v9, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    const-string/jumbo v12, "start"

    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 176
    iget v11, v9, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    const-string v12, "end"

    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 177
    invoke-virtual {v4, v10}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 178
    iget v10, v9, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    iget v11, v9, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    sub-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stats upload "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/util/stats/StatsService$Duration;

    iget v6, v6, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    .line 183
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v7

    const-string/jumbo v9, "userActiveTimeChunkList"

    .line 184
    invoke-virtual {v7, v9, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 185
    iget-object v4, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v9, "prefs"

    invoke-interface {v4, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    .line 186
    iget-object v4, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 187
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->optinAdsFlags()I

    move-result v4

    const-string v9, "optInAdsFlags"

    .line 189
    invoke-virtual {v7, v9, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v11, "timestamp"

    invoke-virtual {v7, v11, v12, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4949
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v9

    const-string/jumbo v10, "timezone"

    invoke-virtual {v7, v10, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    sget-object v9, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v10}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/narvii/lib/R$string;->reqssec:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/narvii/lib/R$string;->reqsver:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/narvii/util/NativeHelper;->S([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v10

    const-string v11, "cid"

    .line 194
    invoke-virtual {v10, v11, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v11, "time"

    .line 195
    invoke-virtual {v10, v11, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v11, "raw"

    .line 196
    invoke-virtual {v10, v11, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v7, "sig"

    .line 197
    invoke-virtual {v10, v7, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v3, :cond_9

    .line 200
    iget-object v3, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 202
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uats_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    .line 206
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->uploadAll()V

    :cond_b
    return-void
.end method

.method public getCachedTime(I)I
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/stats/StatsService$Duration;

    .line 267
    iget v3, v2, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    if-ne v3, p1, :cond_0

    .line 268
    iget v3, v2, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    iget v2, v2, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/16 p1, 0x12c

    .line 271
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public pause(I)V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    move-result v0

    .line 101
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getLast()Lcom/narvii/util/stats/StatsService$Duration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    if-le p1, v0, :cond_0

    .line 103
    iget p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    .line 115
    iget-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->uploadAll()V

    .line 118
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    iget v1, p0, Lcom/narvii/util/stats/StatsService;->uploadInterval:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "stop_send_active"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/stats/StatsService;->uploadTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->flush()V

    return-void
.end method

.method public touchOrResume(I)V
    .locals 4

    .line 77
    iget-boolean v0, p0, Lcom/narvii/util/stats/StatsService;->hasAccount:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    move-result v0

    .line 81
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getLast()Lcom/narvii/util/stats/StatsService$Duration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->cid:I

    if-ne v2, p1, :cond_2

    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    if-lt v0, v2, :cond_2

    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    if-ge v2, v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    iget p1, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 84
    iget v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    iget v3, v1, Lcom/narvii/util/stats/StatsService$Duration;->start:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 87
    :cond_3
    new-instance v1, Lcom/narvii/util/stats/StatsService$Duration;

    invoke-direct {v1, p1, v0}, Lcom/narvii/util/stats/StatsService$Duration;-><init>(II)V

    .line 88
    iget p1, p0, Lcom/narvii/util/stats/StatsService;->pauseDuration:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/narvii/util/stats/StatsService$Duration;->end:I

    .line 89
    iget-object p1, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/narvii/util/stats/StatsService;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/narvii/util/stats/StatsService;->flush()V

    :cond_4
    :goto_1
    return-void
.end method

.method public uploadAll()V
    .locals 12

    .line 222
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 226
    invoke-direct {p0}, Lcom/narvii/util/stats/StatsService;->getTime()I

    move-result v0

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "uats_"

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v5, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "cid"

    aput-object v9, v7, v8

    .line 233
    invoke-static {v5, v7}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v7

    new-array v9, v6, [Ljava/lang/String;

    const-string/jumbo v10, "time"

    aput-object v10, v9, v8

    .line 234
    invoke-static {v5, v9}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v9

    if-eqz v7, :cond_3

    if-gt v9, v0, :cond_3

    const v10, 0x15180

    sub-int v10, v0, v10

    if-ge v9, v10, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "raw"

    .line 243
    invoke-virtual {v5, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sig"

    .line 244
    invoke-virtual {v5, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/narvii/util/http/ApiRequest$Builder;->silent()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v10

    .line 246
    invoke-virtual {v10}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    const-string v11, "/community/stats/user-active-time"

    invoke-virtual {v7, v11}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 247
    invoke-virtual {v10, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string v11, "NDC-MSG-SIG"

    aput-object v11, v9, v8

    aput-object v5, v9, v6

    invoke-virtual {v7, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeJson()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 248
    invoke-virtual {v10, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 250
    invoke-virtual {v10}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v5

    .line 251
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->context:Lcom/narvii/app/NVContext;

    const-string v7, "api"

    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 252
    iget-object v7, p0, Lcom/narvii/util/stats/StatsService;->uploadListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v6, v5, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 253
    iget-object v6, p0, Lcom/narvii/util/stats/StatsService;->runningRequests:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 237
    iget-object v3, p0, Lcom/narvii/util/stats/StatsService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 239
    :cond_4
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 257
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void
.end method
