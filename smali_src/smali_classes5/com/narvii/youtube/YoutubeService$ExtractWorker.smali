.class Lcom/narvii/youtube/YoutubeService$ExtractWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/youtube/YoutubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtractWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/youtube/YoutubeService$ExtractWorker;",
        ">;"
    }
.end annotation


# instance fields
.field final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/youtube/YoutubeVideoCallback;",
            ">;"
        }
    .end annotation
.end field

.field loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

.field private preloadOrder:I

.field result:Lcom/narvii/youtube/ExtractResult;

.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;

.field final videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x4

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 18
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I
    .locals 4
    .param p1    # Lcom/narvii/youtube/YoutubeService$ExtractWorker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    .line 4
    iget p1, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    if-le v0, p1, :cond_0

    return v2

    :cond_0
    if-ge v0, p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3

    .line 5
    :cond_3
    iget-object p1, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    invoke-virtual {p0, p1}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->compareTo(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_7

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 44
    .line 45
    iget v0, v0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    if-lt v0, v1, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3, v1}, Lcom/narvii/youtube/ExtractResult;->callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_3
    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    .line 99
    .line 100
    if-lez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    move-result v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/youtube/YoutubeService;->onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V

    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 124
    .line 125
    const-string v1, "Result"

    .line 126
    .line 127
    const-string v2, "YoutubeResult"

    .line 128
    .line 129
    const-string v3, "statistics"

    .line 130
    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 136
    .line 137
    const-string v4, "logging"

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 144
    .line 145
    if-eqz v0, :cond_b

    .line 146
    .line 147
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 148
    .line 149
    if-nez v4, :cond_5

    .line 150
    .line 151
    new-instance v4, Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 152
    .line 153
    .line 154
    invoke-direct {v4}, Lcom/narvii/youtube/YoutubeLoggingStub;-><init>()V

    .line 155
    .line 156
    iput-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 157
    .line 158
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 159
    .line 160
    iput-object v5, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    .line 161
    .line 162
    :cond_5
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 163
    .line 164
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 165
    .line 166
    iget v6, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 167
    .line 168
    iput v6, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->errorCode:I

    .line 169
    .line 170
    iget-object v5, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v5, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->message:Ljava/lang/String;

    .line 173
    .line 174
    const-string v5, "YoutubeParseError"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/narvii/youtube/YoutubeLoggingStub;->buildYoutubeParseErrorParams()[Ljava/lang/Object;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v5, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 205
    .line 206
    iget v3, v3, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v3, ": "

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 217
    .line 218
    iget-object v3, v3, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :cond_6
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 233
    .line 234
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 241
    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    .line 245
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    const-string v2, "0: Success"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    :cond_7
    const/4 v0, 0x0

    .line 255
    :goto_1
    const/4 v1, 0x4

    .line 256
    .line 257
    if-ge v0, v1, :cond_9

    .line 258
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    move-result v1

    .line 264
    .line 265
    if-eqz v1, :cond_8

    .line 266
    .line 267
    iget v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    .line 268
    .line 269
    if-nez v1, :cond_8

    .line 270
    return-void

    .line 271
    .line 272
    :cond_8
    const-wide/16 v1, 0x64

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    goto :goto_1

    .line 279
    .line 280
    :catch_0
    :cond_9
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 284
    move-result v0

    .line 285
    .line 286
    if-eqz v0, :cond_a

    .line 287
    .line 288
    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    .line 289
    .line 290
    if-nez v0, :cond_a

    .line 291
    return-void

    .line 292
    :cond_a
    const/4 v0, 0x0

    .line 293
    .line 294
    :try_start_1
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    .line 297
    .line 298
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lcom/narvii/youtube/Extractor;->extract(Ljava/lang/String;)Lcom/narvii/youtube/ExtractResult;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    .line 305
    const-string/jumbo v1, "youtube"

    .line 306
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    const-string v3, "extract result "

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    iget-object v3, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    .line 321
    move-result-object v3

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    .line 331
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .line 333
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 334
    .line 335
    :goto_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    goto :goto_4

    .line 342
    .line 343
    :catchall_0
    :try_start_2
    new-instance v1, Lcom/narvii/youtube/ExtractResult;

    .line 344
    .line 345
    .line 346
    invoke-direct {v1}, Lcom/narvii/youtube/ExtractResult;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 347
    const/4 v0, 0x1

    .line 348
    .line 349
    :try_start_3
    iput v0, v1, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 350
    .line 351
    const-string v0, "Error"

    .line 352
    .line 353
    iput-object v0, v1, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    .line 355
    :goto_3
    iput-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 356
    goto :goto_2

    .line 357
    :catchall_1
    move-exception v0

    .line 358
    goto :goto_5

    .line 359
    :catchall_2
    move-exception v1

    .line 360
    move-object v7, v1

    .line 361
    move-object v1, v0

    .line 362
    move-object v0, v7

    .line 363
    goto :goto_5

    .line 364
    .line 365
    :catch_1
    :try_start_4
    new-instance v1, Lcom/narvii/youtube/ExtractResult;

    .line 366
    .line 367
    .line 368
    invoke-direct {v1}, Lcom/narvii/youtube/ExtractResult;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 369
    const/4 v0, 0x2

    .line 370
    .line 371
    :try_start_5
    iput v0, v1, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 372
    .line 373
    const-string v0, "Network error"

    .line 374
    .line 375
    iput-object v0, v1, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    goto :goto_3

    .line 377
    :cond_b
    :goto_4
    return-void

    .line 378
    .line 379
    :goto_5
    iput-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 382
    .line 383
    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    throw v0
.end method
