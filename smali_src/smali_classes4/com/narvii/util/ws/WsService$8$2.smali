.class Lcom/narvii/util/ws/WsService$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/ws/WsService$8;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webSocket:Lokhttp3/WebSocket;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$2;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "recv: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "websocket"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    .line 38
    .line 39
    const-class v2, Lcom/narvii/util/ws/WsMessage;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/util/ws/WsMessage;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v2, "malformed message: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v3

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result v4

    .line 116
    .line 117
    if-eqz v4, :cond_1

    .line 118
    .line 119
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 120
    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    if-nez v2, :cond_2

    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    goto :goto_0

    .line 136
    .line 137
    :cond_4
    iget v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 138
    const/4 v3, 0x1

    .line 139
    .line 140
    if-ne v1, v3, :cond_7

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/util/ws/WsError;

    .line 143
    .line 144
    iget-object v3, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 145
    .line 146
    const-string v4, "code"

    .line 147
    .line 148
    .line 149
    filled-new-array {v4}, [Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 154
    move-result v3

    .line 155
    .line 156
    iget-object v4, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 157
    .line 158
    const-string v5, "message"

    .line 159
    .line 160
    .line 161
    filled-new-array {v5}, [Ljava/lang/String;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v3, v4}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 170
    .line 171
    if-eqz v2, :cond_5

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v3

    .line 180
    .line 181
    if-eqz v3, :cond_5

    .line 182
    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 188
    .line 189
    iget-object v3, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 190
    .line 191
    .line 192
    invoke-interface {v3, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_5
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v1}, Lcom/narvii/util/ws/WsService;->c(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V

    .line 201
    .line 202
    iget-object v0, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 203
    .line 204
    const-string v2, "id"

    .line 205
    .line 206
    .line 207
    filled-new-array {v2}, [Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 221
    .line 222
    if-eqz v0, :cond_6

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/narvii/util/ws/WsError;->code()I

    .line 231
    move-result v2

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v2, ": "

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    goto :goto_2

    .line 252
    .line 253
    .line 254
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 259
    move-result-wide v1

    .line 260
    .line 261
    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 262
    .line 263
    iget-object v3, v3, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 264
    .line 265
    iget-wide v4, v3, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    .line 266
    .line 267
    const-wide/16 v6, 0x1388

    .line 268
    add-long/2addr v4, v6

    .line 269
    .line 270
    cmp-long v4, v1, v4

    .line 271
    .line 272
    if-lez v4, :cond_9

    .line 273
    .line 274
    iget-object v3, v3, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 275
    .line 276
    .line 277
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 278
    move-result-object v3

    .line 279
    const/4 v4, 0x0

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 287
    .line 288
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 291
    .line 292
    iput-wide v1, v0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    .line 293
    goto :goto_4

    .line 294
    .line 295
    :cond_7
    if-eqz v2, :cond_8

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    move-result v2

    .line 304
    .line 305
    if-eqz v2, :cond_8

    .line 306
    .line 307
    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v2

    .line 310
    .line 311
    check-cast v2, Lcom/narvii/util/ws/WsRequest;

    .line 312
    .line 313
    iget-object v2, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 314
    .line 315
    .line 316
    invoke-interface {v2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 317
    goto :goto_3

    .line 318
    .line 319
    :cond_8
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 324
    .line 325
    new-instance v2, Lcom/narvii/util/ws/WsService$8$2$1;

    .line 326
    .line 327
    .line 328
    invoke-direct {v2, p0, v0}, Lcom/narvii/util/ws/WsService$8$2$1;-><init>(Lcom/narvii/util/ws/WsService$8$2;Lcom/narvii/util/ws/WsMessage;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 332
    :cond_9
    :goto_4
    return-void
.end method
